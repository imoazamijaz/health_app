import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget{
  const AuthAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(CupertinoIcons.back),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    );
  }
}
