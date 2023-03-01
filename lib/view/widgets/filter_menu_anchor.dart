import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_inc/bloc/events/filter_event.dart';
import 'package:pharma_inc/bloc/filter_bloc.dart';
import 'package:pharma_inc/bloc/state/filter_state.dart';
import 'package:pharma_inc/gender.dart';
import 'package:pharma_inc/view/widgets/nationality_filter_dialog.dart';

class FilterMenuAnchor extends StatelessWidget {
  const FilterMenuAnchor({super.key, this.beforeFilterApplied});
  final void Function()? beforeFilterApplied;

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      builder: (context, controller, child) => IconButton(
        onPressed: () {
          if (controller.isOpen) {
            return controller.close();
          }

          return controller.open();
        },
        icon: const Icon(Icons.filter_alt_rounded),
      ),
      menuChildren: [
        const MenuItemButton(child: Text('Filter by')),
        MenuItemButton(
          child: const Text('Nationality'),
          onPressed: () => showNationalityFilterDialog(
            context,
            onConfirm: (selectedNationalities) {
              beforeFilterApplied?.call();
              context
                  .read<FilterBloc>()
                  .add(NationalitiesFilterChanged(selectedNationalities));
            },
            currentFilter: context.read<FilterBloc>().state.nationalities,
          ),
        ),
        BlocSelector<FilterBloc, FilterState, Gender?>(
          selector: (state) => state.gender,
          builder: (context, prop) => SubmenuButton(
            menuChildren: [
              RadioMenuButton<Gender?>(
                value: null,
                groupValue: prop,
                onChanged: (val) {
                  beforeFilterApplied?.call();
                  context.read<FilterBloc>().add(GenderFilterChanged(val));
                },
                child: const Text('All'),
              ),
              ...Gender.values.map((gender) => RadioMenuButton<Gender>(
                  groupValue: prop,
                  value: gender,
                  onChanged: (val) {
                    beforeFilterApplied?.call();
                    context.read<FilterBloc>().add(GenderFilterChanged(val));
                  },
                  child: Text(gender.capitalized))),
            ],
            child: const Text('Gender'),
          ),
        )
      ],
    );
  }
}
