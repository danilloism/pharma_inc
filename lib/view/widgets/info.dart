import 'package:flutter/material.dart';
import 'package:pharma_inc/view/widgets/gap.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.top,
    required this.bottom,
    this.includeSeparator = true,
  }) : super(key: key);
  final String top;
  final String bottom;
  final bool includeSeparator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          top,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.w300),
        ),
        Text(
          bottom,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        if (includeSeparator) Gap.h12,
      ],
    );
  }
}
