import 'package:bnchinamart/pages/layout_page.dart';
import 'package:bnchinamart/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BnchinaMartApp());
}

class BnchinaMartApp extends StatelessWidget {
  const BnchinaMartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bnchina Mart Ap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
        fontFamily: "Poppins",
      ),
      home: const LayoutPage(),
    );
  }
}
