import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_inc/bloc/patients_bloc.dart';
import 'package:pharma_inc/bloc/state/patients_state.dart';
import 'package:pharma_inc/view/widgets/patient_card.dart';

class PatientsListView extends StatelessWidget {
  const PatientsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PatientsBloc, PatientsState>(
      builder: (context, state) => SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: state.patients.length * 2 - 1,
          (context, index) {
            if (index.isEven) {
              final int realIndex = index ~/ 2;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: PatientCard(patient: state.patients[realIndex]),
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
      ),
    );
  }
}
