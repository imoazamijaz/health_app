import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final String? image;

  const CustomAppBar({super.key, required this.title, this.image});
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: hStyle2.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
      ),
      actions: [
        SvgPicture.asset('images/$image'),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
