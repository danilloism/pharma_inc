part of 'patients_provider.dart';

class _JumpNotifier extends StateNotifier<int> {
  _JumpNotifier() : super(0);
  int get from => state;
  int get to => state + 50;

  void refresh() {
    state += 50;
  }
}
