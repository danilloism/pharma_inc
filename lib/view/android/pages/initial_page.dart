import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharma_inc/view/android/pages/patients_page.dart';

import '../../../modules/patients/provider/patients_provider.dart';
import '../../../modules/patients/state/patients_state.dart';

class InitialPage extends ConsumerWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(PatientsProvider.stateNotifierProvider);
    final notifier = ref.read(PatientsProvider.stateNotifierProvider.notifier);

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png'),
          state == PatientsState.initial || state != PatientsState.loading
              ? ElevatedButton(
                  onPressed: () async {
                    if (state == PatientsState.done) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PatientsPage(),
                        ),
                      );
                      return;
                    }

                    notifier.loadPatients().whenComplete(
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PatientsPage(),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('List Patients'))
              : const Center(child: CircularProgressIndicator()),
        ],
      ),
    ));
  }
}
