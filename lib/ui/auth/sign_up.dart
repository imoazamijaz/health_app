import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/components/background.dart';
import 'package:health_app/constants.dart';
import '../../bottom_navigation_bar/bottom_nav_bar.dart';
import '../../components/custom_button.dart';
import '../../components/icon_button.dart';
import '../../components/my_text_field.dart';
import '../../components/switch.dart';
import '../../methods.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

final mailController = TextEditingController();
final passwordController = TextEditingController();
final confirmPasswordController = TextEditingController();

class _SignUpState extends State<SignUp> {
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
                'Get Started',
                style: hStyle,
              ),
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
            text(text: 'Confirm Password'),
            SizedBox(
              height: Get.height * 0.001,
            ),
            MyTextField(
                labelText: 'Confirm Password',
                controller: passwordController,
                obscureText: false,
                svg: 'images/key.svg'),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomSwitch(),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Text(
                  'I accept Terms and Policy',
                  style: style,
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            CustomButton(
              title: 'Sign Up',
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
                  width: Get.width * 0.28,
                  height: 1,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'or signup with',
                    style: style,
                  ),
                ),
                Container(
                  width: Get.width * 0.28,
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
                  "Already Have an Account?",
                  style: style,
                ),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      const Login(),
                    );
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                        color: themeColorTwo,
                        decoration: TextDecoration.underline,
                        decorationColor: themeColorTwo),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
          ],
        ),
      ),
    ));
  }
}
