import 'package:bnchinamart/utils/colors.dart';
import 'package:flutter/material.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({
    super.key,
    required this.basketProduct,
    required this.onAdd,
    required this.onMinus,
  });

  final Map<String, dynamic> basketProduct;
  final VoidCallback onAdd;
  final VoidCallback onMinus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: lightGreyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 60,
            height: 100,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              basketProduct["imgPath"],
              width: 75,
              height: 75,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  basketProduct["name"],
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
                  basketProduct["details"],
                  style: TextStyle(
                    color: darkGreyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${basketProduct["totalPrice"]} ",
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
                    const Spacer(),
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingActionButton.small(
                            heroTag: "FAB Minus $basketProduct",
                            backgroundColor: primaryColor,
                            shape: const CircleBorder(),
                            onPressed: onMinus,
                            child: Icon(
                              Icons.remove,
                              color: whiteColor,
                            ),
                          ),
                          Text(
                            "${basketProduct["quantity"]}",
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          FloatingActionButton.small(
                            heroTag: "FAB Add $basketProduct",
                            backgroundColor: primaryColor,
                            shape: const CircleBorder(),
                            onPressed: onAdd,
                            child: Icon(
                              Icons.add,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
