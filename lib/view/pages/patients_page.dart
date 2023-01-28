import 'package:flutter/material.dart';
import 'package:pharma_inc/generated/assets.gen.dart';
import 'package:pharma_inc/generated/colors.gen.dart';
import 'package:pharma_inc/patients_notifier.dart';
import 'package:pharma_inc/services/di.dart';
import 'package:pharma_inc/view/widgets/gap.dart';
import 'package:pharma_inc/view/widgets/patients_list_view.dart';
import 'package:pharma_inc/view/widgets/search.dart';

const double _toolbarHeight = 90;

class PatientsPage extends StatefulWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  State<PatientsPage> createState() => _PatientsPageState();
}

class _PatientsPageState extends State<PatientsPage> {
  late final ScrollController _scroll;
  var _showGoToTopButton = false;
  var _loading = false;

  @override
  void initState() {
    _scroll = ScrollController()
      ..addListener(() {
        if (_scroll.offset == _scroll.initialScrollOffset) {
          return _setShowButton(false);
        }

        _setShowButton(true);

        if (_scroll.offset == _scroll.position.maxScrollExtent && !_loading) {
          _setLoading(true);
          it.get<PatientsNotifier>().loadOrRefreshData().then((_) {
            _setLoading(false);
          });
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

  void _setLoading(bool value) {
    setState(() {
      _loading = value;
    });
  }

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
                  return _scroll.jumpTo(initialOffset);
                }

                _scroll.animateTo(
                  initialOffset,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              })
          : null,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scroll,
          slivers: [
            SliverAppBar(
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
                toolbarHeight: _toolbarHeight,
                title: const Search(),
              ),
            ),
            const SliverToBoxAdapter(child: Gap.h08),
            const PatientsListView(),
            const SliverToBoxAdapter(child: Gap.h08),
            SliverToBoxAdapter(
              child: Visibility(
                visible: _loading,
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
                            valueColor:
                                AlwaysStoppedAnimation(ColorName.deepOrange),
                          )),
                      Gap.w16,
                      Text('Loading more...',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
