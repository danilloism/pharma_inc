import 'package:flutter/widgets.dart';

import '../../../modules/patients/models/patient_model.dart';
import 'gap.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({super.key, required this.patient});
  final PatientModel patient;

  @override
  Widget build(BuildContext context) {
    final month = patient.dayOfBirth.month;
    final monthFixed = month < 10 ? '0$month' : month.toString();

    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: GestureDetector(
        onTap: () {},
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                blurRadius: 1,
                spreadRadius: 1,
                color: Color(0xfffcaf17),
              ),
            ],
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
            child: Row(
              children: [
                SizedBox(
                  height: 90,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(patient.picture, fit: BoxFit.cover),
                  ),
                ),
                Gap.w16,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(patient.name),
                      Text('${patient.age} years old'),
                      Gap.h28,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(patient.gender),
                          Text(
                              '$monthFixed/${patient.dayOfBirth.day}/${patient.dayOfBirth.year}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
