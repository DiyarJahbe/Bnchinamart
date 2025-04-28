import 'package:bnchinamart/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
    required this.category,
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: primaryColor,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        category,
        style: TextStyle(
          color: primaryColor,
          fontSize: 10,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
