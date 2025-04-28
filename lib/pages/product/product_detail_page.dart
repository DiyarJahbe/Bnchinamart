import 'package:bnchinamart/utils/colors.dart';
import 'package:bnchinamart/utils/functions.dart';
import 'package:flutter/material.dart';
import '../../widget/category/category_box.dart';
import '../../widget/custom_button.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: lightGreyColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    product["imgPath"],
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CategoryBox(
                category: product["category"],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                product["name"],
                style: TextStyle(
                  color: textColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product["details"],
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "${product["price"]} ",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "IQD",
                      style: TextStyle(
                        color: darkGreyColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(6),
        color: lightGreyColor,
        child: CustomButton(
          text: "Add to Basket",
          onTap: () {
            addToBasket(context, product);
          },
        ),
      ),
    );
  }
}
