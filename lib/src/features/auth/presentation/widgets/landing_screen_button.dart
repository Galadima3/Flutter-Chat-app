import 'package:flutter/material.dart';

class LandingScreenButton extends StatelessWidget {
  final String text;
  final Color color;
  final bool isSignUp;
  const LandingScreenButton({
    super.key, required this.text, required this.color, required this.isSignUp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 85,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)),
      child:  Center(child: Text(text, style: TextStyle(color: isSignUp ? Colors.white : Colors.black),)),
    );
  }
}
