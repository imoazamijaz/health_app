import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:health_app/components/background.dart';
import 'package:health_app/components/icon_button.dart';
import 'package:health_app/components/my_text_field.dart';
import 'package:health_app/ui/auth/sign_up.dart';
import '../../components/custom_button.dart';
import '../../components/switch.dart';
import '../../constants.dart';
import '../../methods.dart';
import 'forgotPassword/forgot_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final mailController = TextEditingController();
final passwordController = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        stackChild: Padding(
          padding: authPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Center(
                child: Text(
                  'Welcome Back!',
                  style: hStyle,
                ),
              ),
              SizedBox(
                height: Get.height * 0.13,
              ),
              text(text: 'Email'),
              SizedBox(
                height: Get.height * 0.001,
              ),
              MyTextField(
                  labelText: 'Email Address',
                  controller: mailController,
                  obscureText: false,
                  svg: 'images/email.svg'),
              SizedBox(
                height: Get.height * 0.02,
              ),
              text(text: 'Password'),
              SizedBox(
                height: Get.height * 0.001,
              ),
              MyTextField(
                  labelText: 'Password',
                  controller: passwordController,
                  obscureText: false,
                  svg: 'images/key.svg'),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomSwitch(),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Text(
                    'Remember Me',
                    style: style,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Get.to(
                        const ForgotPassword(),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: style.copyWith(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomButton(
                title: 'Login',
                onTap: () {
                  Get.to(
                    const BottomNavBar(),
                  );
                },
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width * 0.30,
                    height: 1,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'or login with',
                      style: style,
                    ),
                  ),
                  Container(
                    width: Get.width * 0.30,
                    height: 1,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomIconButton(svg: 'images/icons8-google.svg'),
                  CustomIconButton(svg: 'images/icons8-apple.svg'),
                  CustomIconButton(svg: 'images/icons8-f.svg'),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an Account?",
                    style: style,
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        const SignUp(),
                      );
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          color: themeColorTwo,
                          decoration: TextDecoration.underline,
                          decorationColor: themeColorTwo),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
