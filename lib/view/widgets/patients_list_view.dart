import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharma_inc/provider/patients_provider.dart';
import 'package:pharma_inc/view/widgets/patient_card.dart';

class PatientsListView extends ConsumerStatefulWidget {
  const PatientsListView({Key? key}) : super(key: key);

  @override
  ConsumerState<PatientsListView> createState() => _PatientsListViewState();
}

class _PatientsListViewState extends ConsumerState<PatientsListView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
