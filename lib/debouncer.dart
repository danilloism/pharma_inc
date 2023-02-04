import 'dart:async';

class Debouncer {
  final Duration defaultDelay;
  Timer? _timer;

  Debouncer(this.defaultDelay);

  Function call(Function callback) {
    return (args) {
      _timer?.cancel();
      _timer = Timer(defaultDelay, () => callback(args));
    };
  }

  void dispose() {
    _timer?.cancel();
  }
}
