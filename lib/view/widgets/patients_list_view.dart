import 'package:flutter/material.dart';
import 'package:pharma_inc/models/patient.dart';
import 'package:pharma_inc/patients_notifier.dart';
import 'package:pharma_inc/services/di.dart';
import 'package:pharma_inc/view/widgets/patient_card.dart';

class PatientsListView extends StatelessWidget {
  const PatientsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<Patient>>(
        valueListenable: it.get<PatientsNotifier>(),
        builder: (context, patients, _) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: patients.length * 2 - 1,
              (context, index) {
                if (index.isEven) {
                  final int realIndex = index ~/ 2;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: PatientCard(patient: patients[realIndex]),
                  );
                }

                return const SizedBox(height: 4);
              },
              semanticIndexCallback: (Widget widget, int localIndex) {
                if (localIndex.isEven) {
                  return localIndex ~/ 2;
                }
                return null;
              },
            ),
          );
        });
  }
}
