import 'package:flutter/material.dart';
import 'package:pharma_inc/debouncer.dart';
import 'package:pharma_inc/generated/colors.gen.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late final TextEditingController _controller;
  late final Debouncer _debouncer;

  @override
  void initState() {
    _debouncer = Debouncer(const Duration(seconds: 2));
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _debouncer.dispose();
    _controller.dispose();
    super.dispose();
  }

  void onSearch(String value) {}

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Search',
              suffixIcon: Icon(Icons.person_search),
            ),
            onChanged: onSearch,
            onSubmitted: onSearch,
          ),
        ),
        IconButton(
          color: ColorName.deepOrange,
          onPressed: () {},
          icon: const Icon(Icons.filter_alt),
        )
      ],
    );
  }
}
