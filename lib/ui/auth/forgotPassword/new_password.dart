import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/ui/auth/forgotPassword/password_reset.dart';
import '../../../components/auth_app_bar.dart';
import '../../../components/background.dart';
import '../../../components/custom_button.dart';
import '../../../components/my_text_field.dart';
import '../../../constants.dart';
import '../../../methods.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

final passwordController = TextEditingController();
final confirmPasswordController = TextEditingController();

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AuthAppBar(),
      body: Background(
        stackChild: SafeArea(
          child: Padding(
            padding: authPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.03,
                ),
                stepPro(currentStep: 3),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                const Text(
                  'Create New \nPassword',
                  style: hStyle,
                ),
                 Text(
                  'Please create new password for your account.\nMust be at least 8 characters.',
                  style: style,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: Get.height * 0.03,
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
                const Spacer(
                  flex: 2,
                ),
                CustomButton(
                  title: 'Reset Password',
                  onTap: () {
                    Get.to(
                      const PasswordReset(),
                    );
                  },
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
