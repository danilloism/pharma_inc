import 'package:flutter/material.dart' hide Colors;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharma_inc/modules/patients/state/patients_state.dart';
import 'package:pharma_inc/view/common/colors/colors.dart';
import 'package:pharma_inc/view/common/widgets/gap.dart';

import '../../../modules/patients/provider/patients_provider.dart';

class Load extends ConsumerWidget {
  const Load({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(PatientsProvider.stateNotifierProvider);
    final notifier = ref.read(PatientsProvider.stateNotifierProvider.notifier);

    return state == PatientsState.done ? _loadMore(notifier) : _loading;
  }

  Widget _loadMore(PatientsNotifier notifier) => GestureDetector(
        onTap: () => notifier.loadPatients(),
        child: ColoredBox(
          color: Colors.lightGreen.value,
          child: const Center(
              child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Load More',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
        ),
      );
  Widget get _loading => Container(
        color: Colors.lightGreen.value,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Color(0xffffffff),
                  ),
                ),
                Gap.w08,
                Text(
                  'Loading',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      );
}
