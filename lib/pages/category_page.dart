import 'package:bnchinamart/pages/product/product_page.dart';
import 'package:bnchinamart/utils/colors.dart';
import 'package:bnchinamart/utils/data.dart';
import 'package:bnchinamart/widget/appBar.dart';
import 'package:bnchinamart/widget/category/category_card.dart';

import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 16 / 9,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    name: categories[index]["name"],
                    imgPath: categories[index]["imgPath"],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductPage(
                                category: categories[index]["name"]);
                          },
                        ),
                      );
                    },
                    isDiscount: true,
                    discount: categories[index]["discount"],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
