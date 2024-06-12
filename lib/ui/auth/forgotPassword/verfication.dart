import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:health_app/components/background.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/methods.dart';
import 'package:health_app/ui/auth/forgotPassword/new_password.dart';
import '../../../components/auth_app_bar.dart';
import '../../../components/custom_button.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                stepPro(currentStep: 2),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                const Text(
                  'Verification',
                  style: hStyle,
                ),
                 Text(
                  'Please Enter 6 digit code that was sent to your email address abc***@xyz.com',
                  style: style,
                  textAlign: TextAlign.start,
                ),
                const Spacer(),
                OtpTextField(
                  numberOfFields: 4,
                  fieldWidth: Get.width * 0.20,
                  fillColor: Colors.white,
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  //borderColor: const Color(0xFFBCBCBC),
                  focusedBorderColor: themeColor,
                  borderWidth: 2,
                  filled: true,
                  disabledBorderColor: const Color(0xFFBCBCBC),
                  borderRadius: BorderRadius.circular(15),
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {},
                  onSubmit: (String verificationCode) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      },
                    );
                  }, // end onSubmit
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     Text(
                      "Don't get the code yet?",
                      style: style,
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Resend',
                        style: TextStyle(
                            color: themeColorTwo,
                            decoration: TextDecoration.underline,
                            decorationColor: themeColorTwo),
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                CustomButton(
                  title: 'Verify',
                  onTap: () {
                    Get.to(
                      const NewPassword(),
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
