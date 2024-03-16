import 'package:flutter/material.dart';

class CustomGoingAndComeBackCircle extends StatelessWidget {
  const CustomGoingAndComeBackCircle(
      {super.key,
      required this.color,
      this.iconColor = Colors.black,
      required this.onPressed,
      required this.icon});
  final Color color;
  final Color iconColor;
  final void Function()? onPressed;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 1.0,
            ),
          ],
        ),
        child: CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ));
  }
}
