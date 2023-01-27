import 'package:flutter/material.dart';
import 'package:pharma_inc/generated/colors.gen.dart';
import 'package:pharma_inc/models/patient.dart';
import 'package:pharma_inc/view/widgets/patient_info.dart';

import 'gap.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({super.key, required this.patient});
  final Patient patient;

  String get _formattedDob {
    String withInitialZero(int value) {
      return value < 10 ? '0$value' : value.toString();
    }

    return '${withInitialZero(patient.dayOfBirth.day)}/${withInitialZero(patient.dayOfBirth.month)}/${patient.dayOfBirth.year}';
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showPatientInfo(context, patient),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              width: 2,
              color: ColorName.deepBlue,
            ),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
          child: Row(
            children: [
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(patient.picture, fit: BoxFit.cover),
                  ),
                ),
              ),
              Gap.w16,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      patient.name,
                      style: const TextStyle(
                        color: ColorName.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text('${patient.age} years old'),
                    Gap.h28,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          patient.gender,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(_formattedDob),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
