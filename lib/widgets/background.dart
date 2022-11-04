import 'package:flutter/material.dart';
import 'package:myresumeapp/core/constants/constants.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
