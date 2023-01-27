import 'package:flutter/material.dart';
import 'package:pharma_inc/generated/colors.gen.dart';
import 'package:pharma_inc/models/patient.dart';

class _PatientInfo extends StatelessWidget {
  const _PatientInfo({Key? key, required this.patient}) : super(key: key);
  final Patient patient;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final double radius = screenHeight * 0.08;
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
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: radius,
              backgroundImage: NetworkImage(patient.picture),
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
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withOpacity(0.8),
    elevation: 0,
    builder: (context) => _PatientInfo(patient: patient),
  );
}
