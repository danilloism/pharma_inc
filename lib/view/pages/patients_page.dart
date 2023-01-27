import 'package:flutter/material.dart';
import 'package:pharma_inc/generated/assets.gen.dart';
import 'package:pharma_inc/view/widgets/gap.dart';
import 'package:pharma_inc/view/widgets/patients_list_view.dart';
import 'package:pharma_inc/view/widgets/search.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({Key? key}) : super(key: key);
  static const double _toolbarHeight = 90;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
