import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pharma_inc/nationality.dart';
import 'package:pharma_inc/view/widgets/gap.dart';

class _NationalityFilterDialog extends StatefulWidget {
  const _NationalityFilterDialog({
    required this.onConfirm,
    required this.currentFilter,
  });
  final FutureOr<void> Function(Set<Nationality> selectedNationalities)
      onConfirm;
  final Set<Nationality>? currentFilter;

  @override
  State<_NationalityFilterDialog> createState() =>
      _NationalityFilterDialogState();
}

class _NationalityFilterDialogState extends State<_NationalityFilterDialog> {
  late var _selectedNationalities =
      widget.currentFilter?.toSet() ?? <Nationality>{};
  bool _confirmIsLoading = false;

  void _changeSelectState({
    required Nationality nationality,
    required bool select,
  }) {
    if (_selectedNationalities.contains(nationality) && !select) {
      setState(() {
        _selectedNationalities.remove(nationality);
      });

      return;
    }

    if (!_selectedNationalities.contains(nationality) && select) {
      setState(() {
        _selectedNationalities.add(nationality);
      });
    }
  }

  void _clearAllSelected() {
    setState(() {
      _selectedNationalities = {};
    });
  }

  bool _selected(Nationality nat) => _selectedNationalities.contains(nat);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Center(child: Text('Filter by nationality')),
      contentPadding: const EdgeInsets.all(8),
      children: [
        SizedBox(
          child: SingleChildScrollView(
            child: Wrap(
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              spacing: 8,
              children: [
                ...Nationality.values.map(
                  (nat) => FilterChip(
                    // showCheckmark: false,
                    label: Text(nat.beautifyWithoutFlag()),
                    selected: _selected(nat),
                    onSelected: (select) =>
                        _changeSelectState(nationality: nat, select: select),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: _selectedNationalities.isEmpty
              ? MainAxisAlignment.end
              : MainAxisAlignment.spaceBetween,
          children: [
            if (_confirmIsLoading) const CircularProgressIndicator(),
            if (!_confirmIsLoading) ...[
              if (_selectedNationalities.isNotEmpty)
                ElevatedButton(
                  onPressed: _clearAllSelected,
                  child: const Text('Clear all'),
                ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                  Gap.w08,
                  ElevatedButton(
                    onPressed: () async {
                      if (widget.onConfirm is Future) {
                        setState(() {
                          _confirmIsLoading = true;
                        });

                        try {
                          await widget.onConfirm(_selectedNationalities);

                          if (mounted) {
                            Navigator.of(context).pop();
                          }

                          return;
                        } catch (e) {
                          setState(() {
                            _confirmIsLoading = false;
                          });

                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(e.toString()),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        }
                        return;
                      }
                      widget.onConfirm(_selectedNationalities);
                      Navigator.of(context).pop();
                    },
                    child: const Text('Apply'),
                  ),
                ],
              ),
            ],
          ],
        ),
      ],
    );
  }
}

Future<T?> showNationalityFilterDialog<T>(
  BuildContext context, {
  required FutureOr<void> Function(Set<Nationality> selectedNationalities)
      onConfirm,
  required Set<Nationality>? currentFilter,
}) {
  return showDialog<T>(
    context: context,
    builder: (context) => _NationalityFilterDialog(
      onConfirm: onConfirm,
      currentFilter: currentFilter,
    ),
  );
}
