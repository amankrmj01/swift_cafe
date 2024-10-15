import 'package:flutter/material.dart';

import '../../../consts/icons.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Favourite Beverages',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontFamily: 'Inter',
          ),
          prefixIcon: Icon(Icons.search),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0), // Adjust padding as needed
            child: Image.asset(
              AppIcons.iconHome02Filter,
              color: Colors
                  .black, // Ensure this color contrasts with the background
              width: 24, // Set width
              height: 24, // Set height
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
