import 'package:flutter/material.dart';
import 'package:travel_app/utils/style.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: accent,
            style: p1,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, size: 22, color: text),
              hintText: 'Search Destination',
              hintStyle: p1,
              fillColor: white,
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: small),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
        SizedBox(width: small),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: accent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(Icons.swap_horiz, color: white),
        ),
      ],
    );
  }
}
