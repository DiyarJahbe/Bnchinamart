import 'package:bnchinamart/pages/category_page.dart';
import 'package:bnchinamart/utils/assets.dart';
import 'package:bnchinamart/utils/colors.dart';
import 'package:bnchinamart/widget/category/category_list.dart';
import 'package:bnchinamart/widget/products/horizantal_product_list.dart';
import 'package:bnchinamart/widget/products/vertical_product_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              width: double.infinity,
              height: 220,
              child: Image.asset(
                poster,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CategoryList(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.all(0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CategoryPage();
                      },
                    ),
                  );
                },
                child: Text(
                  "See All Categories",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: primaryColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Text(
              "Trending Now",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: textColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 200,
              child: HorizantalList(),
            ),
            Text(
              "All Products",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: textColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Verticallist(),
          ],
        ),
      ),
    );
  }
}
