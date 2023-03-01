import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_inc/bloc/events/filter_event.dart';
import 'package:pharma_inc/bloc/filter_bloc.dart';
import 'package:pharma_inc/view/widgets/filter_menu_anchor.dart';

class Search extends StatefulWidget {
  const Search({super.key, this.beforeSearchOrFilterApplied});
  final void Function()? beforeSearchOrFilterApplied;

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late final TextEditingController _controller;
  late final FocusNode _node;
  bool _showClearButton = false;
  set showClearButton(bool val) {
    setState(() {
      _showClearButton = val;
    });
  }

  @override
  void initState() {
    _node = FocusNode();
    _controller = TextEditingController()
      ..addListener(() {
        if (_controller.text.isNotEmpty && !_showClearButton) {
          showClearButton = true;
        }

        if (_controller.text.isEmpty && _showClearButton) {
          showClearButton = false;
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _node.dispose();
    _controller.dispose();
    super.dispose();
  }

  void onSearch(String? value, BuildContext context) {
    if (value?.isEmpty ?? false) {
      value = null;
    }

    context.read<FilterBloc>().add(SearchTextChanged(value));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: _node,
            controller: _controller,
            onTap: widget.beforeSearchOrFilterApplied,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Search',
              suffixIcon: _showClearButton
                  ? IconButton(
                      onPressed: () {
                        _controller.text = '';
                        context
                            .read<FilterBloc>()
                            .add(const SearchTextChanged(null));
                      },
                      icon: const Icon(Icons.clear))
                  : const Icon(Icons.person_search),
            ),
            onChanged: (val) => onSearch(val, context),
            onTapOutside: (_) => _node.unfocus(),
          ),
        ),
        FilterMenuAnchor(
          beforeFilterApplied: widget.beforeSearchOrFilterApplied,
        ),
      ],
    );
  }
}
