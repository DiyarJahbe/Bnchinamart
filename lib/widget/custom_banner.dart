import 'package:flutter/material.dart';

import '../utils/assets.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(bnchinaMartLogo),
          ),
          Positioned(
            left: -8,
            bottom: 0,
            child: Image.asset(avocado),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(lemon),
          ),
          Positioned(
            left: 5,
            bottom: 40,
            child: Image.asset(
              potato,
              width: 180,
            ),
          ),
          Positioned(
            right: 10,
            top: 0,
            child: Image.asset(mango),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(blueberry),
          ),
        ],
      ),
    );
  }
}
