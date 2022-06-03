import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharma_inc/modules/patients/provider/scroll_controller_provider.dart';

import '../../common/widgets/patients_list_view.dart';

class PatientsPage extends ConsumerWidget {
  const PatientsPage({Key? key}) : super(key: key);

  // if (scrollController.position.pixels !=
  //             _scrollController.position.minScrollExtent)
  //        {
  //       notifierProvider.loadPatients();
  //     }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(scrollControllerProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Pharma Inc.',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const PatientsListView(),
    );
  }
}
