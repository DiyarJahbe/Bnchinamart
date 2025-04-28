import 'package:bnchinamart/pages/auth/login_page.dart';
import 'package:bnchinamart/utils/assets.dart';
import 'package:bnchinamart/utils/data.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widget/account/account_tiltle';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(avatarBoy),
                radius: 50,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                currentUser["username"] ?? "Me",
                style: TextStyle(
                  color: textColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        AccountTile(
          text: "Orders",
          icon: shoppingCart,
          onTap: () {},
        ),
        const Divider(
          height: 0,
        ),
        AccountTile(
          text: "Change Password",
          icon: lockIcon,
          onTap: () {},
        ),
        const Divider(
          height: 0,
        ),
        AccountTile(
          text: "Notifications",
          icon: notificationIcon,
          onTap: () {},
        ),
        const Divider(
          height: 0,
        ),
        AccountTile(
          text: "Discount Offer",
          icon: starIcon,
          onTap: () {},
        ),
        const Divider(
          height: 0,
        ),
        AccountTile(
          text: "Signout",
          icon: signoutIcon,
          onTap: () {
            currentUser = {};

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
