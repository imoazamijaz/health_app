import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:health_app/ui/auth/login.dart';
import '../../../components/auth_app_bar.dart';
import '../../../components/background.dart';
import '../../../components/custom_button.dart';
import '../../../constants.dart';
import '../../../methods.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({super.key});

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
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
                stepPro(currentStep: 4),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                const Text(
                  'Password Reset Successfully!',
                  textAlign: TextAlign.center,
                  style: hStyle,
                ),
                SizedBox(
                  height: Get.height * 0.10,
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 152,
                        height: 152,
                        decoration: const ShapeDecoration(
                          color: Color(0x8026C8A8),
                          shape: OvalBorder(),
                        ),
                      ),
                      Container(
                        width: 141.87,
                        height: 141.87,
                        decoration: const ShapeDecoration(
                          color: Color(0x9826C8A8),
                          shape: OvalBorder(),
                        ),
                      ),
                      Container(
                        width: 131.73,
                        height: 131.73,
                        decoration: const ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(1.00, -0.02),
                            end: Alignment(-1, 0.02),
                            colors: [Color(0xFF26C8A8), Color(0xFF00BBCA)],
                          ),
                          shape: OvalBorder(),
                        ),
                        child:
                            Center(child: SvgPicture.asset('images/check.svg')),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                CustomButton(
                  title: 'Continue to Log In',
                  onTap: () {
                    Get.to(
                      const Login(),
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
