import 'package:flutter/material.dart';

class ChangeNotifierConsumer extends StatefulWidget {
  const ChangeNotifierConsumer(
      {Key? key, required this.notifier, required this.child})
      : super(key: key);
  final ChangeNotifier notifier;
  final Widget child;

  @override
  State<ChangeNotifierConsumer> createState() => _ChangeNotifierConsumerState();
}

class _ChangeNotifierConsumerState extends State<ChangeNotifierConsumer> {
  @override
  void initState() {
    widget.notifier.addListener(mounted ? () => setState(() {}) : () {});
    super.initState();
  }

  @override
  void dispose() {
    widget.notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
