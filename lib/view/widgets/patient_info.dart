import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pharma_inc/generated/colors.gen.dart';
import 'package:pharma_inc/helpers.dart';
import 'package:pharma_inc/models/patient.dart';
import 'package:pharma_inc/view/widgets/gap.dart';
import 'package:pharma_inc/view/widgets/info.dart';

class _PatientInfo extends StatelessWidget {
  const _PatientInfo({Key? key, required this.patient}) : super(key: key);
  final Patient patient;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final double radius = screenHeight * 0.1;
    final bottomSheetHeight = screenHeight * 0.9;

    return SizedBox(
      height: bottomSheetHeight,
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: radius),
            child: Container(
              height: bottomSheetHeight,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: ColorName.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Gap.h08,
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: Navigator.of(context).pop,
                      icon: const Icon(Icons.close_sharp),
                    ),
                  ),
                  SizedBox(height: radius / 2),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          patient.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w400),
                        ),
                        Text(patient.email),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: ListView(
                        children: [
                          Info(
                              top: 'Gender',
                              bottom: patient.gender.capitalized),
                          Info(
                              top: 'Birth date',
                              bottom: patient.dob.toString()),
                          Info(top: 'Age', bottom: patient.dob.age.toString()),
                          Info(top: 'Phone', bottom: patient.phone),
                          Info(
                            top: 'Nationality',
                            bottom:
                                formatNationalityByCode(patient.nationality),
                          ),
                          Info(
                            top: 'Address',
                            bottom: patient.address.toString(),
                            includeSeparator: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: radius,
              backgroundImage: CachedNetworkImageProvider(patient.picture),
            ),
          ),
        ],
      ),
    );
  }
}

void showPatientInfo(BuildContext context, Patient patient) {
  showModalBottomSheet(
    context: context,
    isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withOpacity(0.8),
    elevation: 0,
    builder: (context) => _PatientInfo(patient: patient),
  );
}
