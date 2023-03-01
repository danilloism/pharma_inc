import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pharma_inc/generated_assets/colors.gen.dart';
import 'package:pharma_inc/models/patient.dart';
import 'package:pharma_inc/view/widgets/patient_info.dart';

import 'gap.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({super.key, required this.patient});
  final Patient patient;

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
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: CachedNetworkImage(
                      imageUrl: patient.picture,
                      placeholder: (context, url) =>
                          const ColoredBox(color: ColorName.softOrange),
                    ),
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
                    Text('${patient.dob.age} years old'),
                    Gap.h28,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          patient.gender.capitalized,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(patient.dob.toString()),
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
