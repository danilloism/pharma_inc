import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_inc/bloc/events/patients_list_event.dart';
import 'package:pharma_inc/bloc/filter_bloc.dart';
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

  final filterBloc = FilterBloc();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PatientsBloc(
              repo: PatientRepository(dioClient: Dio()),
              filters: filterBloc.stream)
            ..add(const AppInitialized()),
        ),
        BlocProvider.value(value: filterBloc),
      ],
      child: MaterialApp(
        home: const Scaffold(body: App()),
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
    return BlocConsumer<PatientsBloc, PatientsState>(
      listenWhen: (previous, current) => current.isError,
      listener: (context, state) {
        final error = state.whenOrNull(
          error: (_, error, __) => error,
          refreshError: (_, error, __) => error,
        );
        final messenger = ScaffoldMessenger.of(context);

        messenger.hideCurrentSnackBar();
        messenger.showSnackBar(
          SnackBar(
            content: Text(error.toString()),
            backgroundColor: Colors.red,
          ),
        );
      },
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
