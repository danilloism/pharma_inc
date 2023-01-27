import 'package:flutter/material.dart';
import 'package:pharma_inc/generated/assets.gen.dart';
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
  late final ScrollController _scrollController;
  var _showGoToTopButton = false;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_controllerListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_controllerListener)
      ..dispose();
    super.dispose();
  }

  void _controllerListener() {
    void switchState(bool value) {
      setState(() {
        _showGoToTopButton = value;
      });
    }

    if (_scrollController.offset > 0) {
      switchState(true);
    }

    if (_scrollController.offset == _scrollController.initialScrollOffset) {
      switchState(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _showGoToTopButton
          ? FloatingActionButton(
              tooltip: 'Go to top',
              child: const Icon(Icons.arrow_upward),
              onPressed: () => _scrollController.animateTo(
                    _scrollController.initialScrollOffset,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  ))
          : null,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              toolbarHeight: _toolbarHeight,
              title: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SizedBox(
                  height: _toolbarHeight * 2,
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
          ],
        ),
      ),
    );
  }
}
