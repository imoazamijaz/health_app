import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget stackChild;
  const Background({super.key, required this.stackChild});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/elina-fairytalee.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.00, -1.00),
              end: const Alignment(0, 1),
              colors: [Colors.black.withOpacity(0.15), Colors.black],
              //#00000000, #000000
            ),
          ),
            child: stackChild,
        ),
      ],
    );
  }
}
