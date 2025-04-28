import 'package:flutter/material.dart';
import 'package:bnchinamart/utils/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.name,
    required this.imgPath,
    required this.onTap,
    this.isDiscount = false,
    this.discount = 30,
  });

  final String name;
  final String imgPath;
  final bool isDiscount;
  final int discount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: lightGreyColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 2),
                isDiscount
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 4,
                        ),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          "$discount% Discount",
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 10,
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
            Image.asset(
              imgPath,
            ),
          ],
        ),
      ),
    );
  }
}
