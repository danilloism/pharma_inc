import 'package:flutter/material.dart';
import 'package:pharma_inc/generated/colors.gen.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Search',
              suffixIcon: Icon(Icons.person_search),
            ),
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
