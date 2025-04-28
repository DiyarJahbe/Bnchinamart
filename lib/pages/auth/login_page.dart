import 'package:bnchinamart/pages/layout_page.dart';
import 'package:bnchinamart/pages/auth/signup_page.dart';
import 'package:bnchinamart/utils/assets.dart';
import 'package:bnchinamart/utils/data.dart';
import 'package:bnchinamart/utils/validators.dart';
import 'package:bnchinamart/widget/custom_banner.dart';
import 'package:bnchinamart/widget/custom_text_field.dart';
import 'package:bnchinamart/widget/helper.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../widget/custom_button.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  GlobalKey<FormState> formcontroler = GlobalKey<FormState>();

  String? email;
  String? password;

  void login(BuildContext context) {
    final bool isValidate = formcontroler.currentState!.validate();

    if (!isValidate) {
      return;
    }
    formcontroler.currentState!.save();

    bool isLogin = false;
    for (var user in accounts) {
      if (user["email"] == email && user["password"] == password) {
        currentUser = user;
        isLogin = true;
        break;
      }
    }

    if (!isLogin) {
      errorsnackbar(context, "Invalid  Email or Password");
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LayoutPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomBanner(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Start Ordering !",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: formcontroler,
                      child: Column(
                        children: [
                          CustomTextField(
                            text: 'Email',
                            iconpath: emailIcon,
                            onValidate: validateremail,
                            onSave: (value) {
                              email = value;
                            },
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextField(
                            text: 'Password',
                            iconpath: passwordIcon,
                            onValidate: validatorPassword,
                            onSave: (value) {
                              password = value;
                            },
                            isObsecureText: true,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomButton(
                            text: 'Login',
                            onTap: () {
                              login(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have an Account ?",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignUp();
                                },
                              ),
                            );
                          },
                          child: const Text("Register"),
                        ),
                      ],
                    ),
                    Text(
                      "Or",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: lightBlueColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(googleLogo),
                          const Text(
                            "Login With Google",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
