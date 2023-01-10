import 'package:flutter/material.dart';
import 'package:pharma_inc/generated/assets.gen.dart';

import '../../common/widgets/patients_list_view.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 100,
        title: Builder(
          builder: (context) => SizedBox(
            height: Scaffold.of(context).appBarMaxHeight,
            child: Assets.logo.image(
              fit: BoxFit.fitHeight,
              isAntiAlias: true,
            ),
          ),
        ),
      ),
      body: const PatientsListView(),
    );
  }
}
