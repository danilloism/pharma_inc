import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_inc/bloc/events/filter_event.dart';
import 'package:pharma_inc/bloc/events/patients_list_event.dart';
import 'package:pharma_inc/bloc/filter_bloc.dart';
import 'package:pharma_inc/bloc/patients_bloc.dart';
import 'package:pharma_inc/bloc/state/filter_state.dart';
import 'package:pharma_inc/bloc/state/patients_state.dart';
import 'package:pharma_inc/generated_assets/assets.gen.dart';
import 'package:pharma_inc/generated_assets/colors.gen.dart';
import 'package:pharma_inc/view/widgets/gap.dart';
import 'package:pharma_inc/view/widgets/nationality_filter_dialog.dart';
import 'package:pharma_inc/view/widgets/patients_list_view.dart';
import 'package:pharma_inc/view/widgets/search.dart';

const double _toolbarHeight = 90;

class PatientsPage extends StatefulWidget {
  const PatientsPage({Key? key, required this.patientsBloc}) : super(key: key);

  final PatientsBloc patientsBloc;

  @override
  State<PatientsPage> createState() => _PatientsPageState();
}

class _PatientsPageState extends State<PatientsPage> {
  late final ScrollController _scroll;
  var _showGoToTopButton = false;

  @override
  void initState() {
    _scroll = ScrollController()
      ..addListener(() {
        if (_scroll.offset == _scroll.initialScrollOffset) {
          return _setShowButton(false);
        }

        _setShowButton(true);

        if (_scroll.offset == _scroll.position.maxScrollExtent &&
            widget.patientsBloc.state is! PatientsRefreshing &&
            widget.patientsBloc.state is! PatientsError &&
            widget.patientsBloc.state is! PatientsRetryLoading) {
          widget.patientsBloc.add(const ScrollHasReachedMax());
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  void _setShowButton(bool value) {
    setState(() {
      _showGoToTopButton = value;
    });
  }

  void _jumpToStart() => _scroll.jumpTo(_scroll.initialScrollOffset);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _showGoToTopButton
          ? FloatingActionButton(
              tooltip: 'Go to top',
              child: const Icon(Icons.arrow_upward),
              onPressed: () {
                final initialOffset = _scroll.initialScrollOffset;

                if (_scroll.offset > 10000) {
                  return _jumpToStart();
                }

                _scroll.animateTo(
                  initialOffset,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              })
          : null,
      body: CustomScrollView(
        controller: _scroll,
        slivers: [
          BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
            final hasFilters = state != const FilterState();
            return SliverAppBar(
              floating: true,
              snap: true,
              toolbarHeight: _toolbarHeight,
              title: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: SizedBox(
                  height: _toolbarHeight * 2 - 4,
                  child: Assets.logo.image(
                    fit: BoxFit.fitHeight,
                    isAntiAlias: true,
                  ),
                ),
              ),
              bottom: AppBar(
                toolbarHeight:
                    hasFilters ? _toolbarHeight + 25 : _toolbarHeight,
                title: Column(
                  children: [
                    Search(beforeSearchOrFilterApplied: _jumpToStart),
                    if (hasFilters)
                      Row(
                        children: [
                          if (state.gender != null) ...[
                            InputChip(
                              label: const Text('Gender'),
                              onDeleted: () => context
                                  .read<FilterBloc>()
                                  .add(const GenderFilterChanged(null)),
                            ),
                            Gap.w08,
                          ],
                          if (state.nationalities != null)
                            InputChip(
                              label: const Text('Nationality'),
                              onDeleted: () => context
                                  .read<FilterBloc>()
                                  .add(const NationalitiesFilterChanged(null)),
                              onPressed: () => showNationalityFilterDialog(
                                context,
                                onConfirm: (nationalities) => context
                                    .read<FilterBloc>()
                                    .add(NationalitiesFilterChanged(
                                        nationalities)),
                                currentFilter: state.nationalities,
                              ),
                            ),
                        ],
                      )
                  ],
                ),
                shadowColor: ColorName.deepBlue,
              ),
            );
          }),
          BlocBuilder<PatientsBloc, PatientsState>(
            buildWhen: (previous, current) => current.maybeWhen(
              data: (_) => previous is PatientsRetryLoading,
              retryLoading: (_) => true,
              error: (_, __, ___) => true,
              orElse: () => false,
            ),
            builder: (context, state) {
              return state.maybeWhen(
                error: (_, __, ___) => SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'An error ocurred while loading the data.',
                        textAlign: TextAlign.center,
                      ),
                      ElevatedButton(
                        onPressed: () => context
                            .read<PatientsBloc>()
                            .add(const RetryButtonPressed()),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
                retryLoading: (_) => const SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                orElse: () => SliverToBoxAdapter(
                  child: CustomScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    slivers: [
                      const SliverToBoxAdapter(child: Gap.h08),
                      const PatientsListView(),
                      const SliverToBoxAdapter(child: Gap.h08),
                      SliverToBoxAdapter(
                        child: BlocBuilder<PatientsBloc, PatientsState>(
                          buildWhen: (previous, current) =>
                              previous.isRefreshing || current.isRefreshing,
                          builder: (context, state) => Visibility(
                            visible: state.isRefreshing,
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            child: SizedBox(
                              height: 75,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: CircularProgressIndicator.adaptive(
                                      backgroundColor: ColorName.deepBlue,
                                      valueColor: AlwaysStoppedAnimation(
                                        ColorName.deepOrange,
                                      ),
                                    ),
                                  ),
                                  Gap.w16,
                                  Text(
                                    'Loading more...',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
