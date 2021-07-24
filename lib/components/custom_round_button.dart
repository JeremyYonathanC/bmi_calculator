import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? function;

  CustomRoundButton({required this.icon, required this.function});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        height: 50,
        width: 56,
      ),
      fillColor: Color(0xFF4c4F5E),
      onPressed: function,
    );
  }
}
