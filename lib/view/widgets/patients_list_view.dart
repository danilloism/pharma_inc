import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharma_inc/provider/patients_provider.dart';
import 'package:pharma_inc/state/patients_state.dart';
import 'package:pharma_inc/view/widgets/patient_card.dart';

class PatientsListView extends ConsumerWidget {
  const PatientsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(PatientsProvider.stateNotifierProvider);

    if (state == PatientsState.loading) {
      return const SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator()));
    }

    final notifierProvider =
        ref.read(PatientsProvider.stateNotifierProvider.notifier);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: notifierProvider.currentPatients.length,
          (context, index) {
        if (index < notifierProvider.currentPatients.length - 1) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 6, left: 4, right: 4),
            child:
                PatientCard(patient: notifierProvider.currentPatients[index]),
          );
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: PatientCard(patient: notifierProvider.currentPatients[index]),
        );
      }),
    );
  }
}
