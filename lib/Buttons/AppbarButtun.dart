import 'package:flutter/material.dart';

class Circular_Button extends StatelessWidget {
  final IconData? buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;

  Circular_Button(
      {required this.buttonIcon,
      required this.buttonAction,
      this.iconColor = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[250]),
      child: IconButton(
        icon: Icon(buttonIcon),
        color: Colors.grey,
        iconSize: 25,
        onPressed: buttonAction,
      ),
    );
  }
}
