import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_inc/bloc/events/patients_list_event.dart';
import 'package:pharma_inc/bloc/filter_cubit.dart';
import 'package:pharma_inc/bloc/patients_bloc.dart';
import 'package:pharma_inc/bloc/state/patients_state.dart';
import 'package:pharma_inc/generated/colors.gen.dart';
import 'package:pharma_inc/repository/patient_repository.dart';
import 'package:pharma_inc/view/pages/patients_page.dart';
import 'package:pharma_inc/view/pages/splash_screen.dart';

Future<void> main() async {
  if (Platform.isFuchsia ||
      Platform.isLinux ||
      Platform.isMacOS ||
      Platform.isWindows ||
      kIsWeb) {
    throw UnimplementedError();
  }

  final filterCubit = FilterCubit();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PatientsBloc(
              repo: PatientRepository(dioClient: Dio()),
              filters: filterCubit.stream)
            ..add(const AppInitialized()),
        ),
        BlocProvider.value(value: filterCubit),
      ],
      child: MaterialApp(
        home: const App(),
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: ColorName.softBlue),
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
              centerTitle: true,
            )),
      ),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PatientsBloc, PatientsState>(
      buildWhen: (previous, current) =>
          previous is PatientsLoading && current is! PatientsLoading,
      builder: (context, state) {
        return state.maybeWhen(
          loading: (_) => const SplashScreen(),
          orElse: () => PatientsPage(patientsBloc: context.read()),
        );
      },
    );
  }
}
