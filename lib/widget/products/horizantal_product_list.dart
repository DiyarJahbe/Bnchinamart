import 'package:bnchinamart/utils/data.dart';
import 'package:bnchinamart/widget/products/horizantal_cards.dart.dart';

import 'package:flutter/material.dart';

class HorizantalList extends StatefulWidget {
  const HorizantalList({super.key});

  @override
  State<HorizantalList> createState() => _HorizantalListState();
}

class _HorizantalListState extends State<HorizantalList> {
  List<Map<String, dynamic>> trendingProducts = [];

  @override
  void initState() {
    super.initState();

    trendingProducts = products.where((product) {
      return product["isTrending"] == true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: trendingProducts.length,
      separatorBuilder: (context, index) => const SizedBox(
        width: 10,
      ),
      itemBuilder: (context, index) {
        return HorizantalCards(
          product: trendingProducts[index],
        );
      },
    );
  }
}
