import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/components/auth_app_bar.dart';
import 'package:health_app/components/background.dart';
import 'package:health_app/components/custom_button.dart';
import 'package:health_app/ui/auth/forgotPassword/verfication.dart';
import '../../../components/my_text_field.dart';
import '../../../constants.dart';
import '../../../methods.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

final mailController = TextEditingController();

class _ForgotPasswordState extends State<ForgotPassword> {
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
                stepPro(currentStep: 1),
                const Text(
                  'Forgot \nPassword?',
                  style: hStyle,
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                 Text(
                  'Enter the email address associated with \nyour account.',
                  style: style,
                ),
                const Spacer(),
                text(text: 'Email'),
                MyTextField(
                  labelText: 'Email Address',
                  controller: mailController,
                  obscureText: false,
                  svg: 'images/email.svg',
                ),
                const Spacer(
                  flex: 3,
                ),
                CustomButton(
                  title: 'Submit',
                  onTap: () {
                    Get.to(
                      const Verification(),
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
