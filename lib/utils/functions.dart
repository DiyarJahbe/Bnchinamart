import 'package:flutter/material.dart';
import 'package:bnchinamart/utils/data.dart';

import '../widget/helper.dart';

void addToBasket(BuildContext context, Map<String, dynamic> product) {
  bool isContain = false;

  for (var basketProduct in basketProducts) {
    if (basketProduct["name"] == product["name"]) {
      isContain = true;

      basketProduct["quantity"] += 1;
      basketProduct["totalPrice"] =
          basketProduct["price"] * basketProduct["quantity"];
      break;
    }
  }

  if (!isContain) {
    basketProducts.add(
      {
        "name": product["name"],
        "imgPath": product["imgPath"],
        "details": product["details"],
        "price": product["price"],
        "category": product["category"],
        "isTrending": product["isTrending"],
        "quantity": 1,
        "totalPrice": product["price"],
      },
    );
  }

  addSnackbar(context, "Added to Basket");
}
