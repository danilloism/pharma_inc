import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharma_inc/view/common/widgets/gap.dart';

import '../../../modules/patients/provider/patients_provider.dart';
import '../../android/widgets/load.dart';
import 'patient_card.dart';

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

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: ListView.separated(
            shrinkWrap: true,
            controller: _scrollController,
            separatorBuilder: (_, __) => Gap.h08,
            itemBuilder: (context, i) {
              return PatientCard(patient: notifierProvider.currentPatients[i]);
            },
            itemCount: notifierProvider.currentPatients.length,
          ),
        ),
        Gap.h04,
        const Load(),
      ],
    );
  }
}
