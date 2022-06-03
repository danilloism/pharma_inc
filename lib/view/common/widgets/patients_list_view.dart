import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharma_inc/modules/patients/provider/scroll_controller_provider.dart';
import 'package:pharma_inc/view/common/widgets/gap.dart';

import '../../../modules/patients/provider/patients_provider.dart';
import '../../android/widgets/load.dart';
import 'patient_card.dart';

class PatientsListView extends ConsumerWidget {
  const PatientsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifierProvider =
        ref.read(PatientsProvider.stateNotifierProvider.notifier);
    final state = ref.watch(PatientsProvider.stateNotifierProvider);
    final scroll = ref.read(scrollControllerProvider);
    return ListView(
      children: [
        ListView.builder(
          shrinkWrap: true,
          controller: scroll,
          itemBuilder: (context, i) {
            return PatientCard(patient: notifierProvider.currentPatients[i]);
          },
          itemCount: notifierProvider.currentPatients.length,
        ),
        Gap.h04,
        const Load(),
      ],
    );
  }
}
