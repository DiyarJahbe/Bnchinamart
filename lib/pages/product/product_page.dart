import 'package:bnchinamart/utils/colors.dart';

import 'package:flutter/material.dart';

import '../../widget/category/category_box.dart';
import '../../widget/products/product_list.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    super.key,
    required this.category,
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryBox(
                category: category,
              ),
              const SizedBox(
                height: 10,
              ),
              ProductList(
                category: category,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
