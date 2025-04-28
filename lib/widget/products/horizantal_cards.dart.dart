import 'package:bnchinamart/pages/product/product_detail_page.dart';
import 'package:bnchinamart/utils/colors.dart';
import 'package:bnchinamart/utils/functions.dart';
import 'package:flutter/material.dart';

class HorizantalCards extends StatelessWidget {
  const HorizantalCards({
    super.key,
    required this.product,
  });

  final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(product: product),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              color: lightGreyColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    product["imgPath"],
                    width: 75,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: FloatingActionButton.small(
                    heroTag: "FAB Vertical $product",
                    backgroundColor: primaryColor,
                    shape: const CircleBorder(),
                    onPressed: () {
                      addToBasket(context, product);
                    },
                    child: Icon(
                      Icons.add,
                      color: whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            product["name"],
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "${product["price"]} ",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "IQD",
                  style: TextStyle(
                    color: darkGreyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
