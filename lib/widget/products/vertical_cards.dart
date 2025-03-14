import 'package:bnchinamart/pages/product/product_detail_page.dart';
import 'package:bnchinamart/utils/colors.dart';
import 'package:bnchinamart/utils/functions.dart';
import 'package:flutter/material.dart';

class VerticalCards extends StatelessWidget {
  const VerticalCards({
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
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 6),
        width: double.infinity,
        decoration: BoxDecoration(
          color: lightGreyColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 100,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    product["imgPath"],
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product["name"],
                      style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      product["details"],
                      style: TextStyle(
                        color: darkGreyColor,
                        fontSize: 10,
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
              ],
            ),
            FloatingActionButton.small(
              heroTag: "FAB Horizantal $product",
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
          ],
        ),
      ),
    );
  }
}
