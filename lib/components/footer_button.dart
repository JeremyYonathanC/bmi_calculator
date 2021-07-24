import 'package:flutter/cupertino.dart';

import '../constants.dart';

class FooterButton extends StatelessWidget {
  final VoidCallback? navigate;
  final String buttonName;

  FooterButton({required this.navigate, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Container(
        child: Center(
          child: Text(
            buttonName,
            style: kFooterTextStyle,
          ),
        ),
        width: double.infinity,
        color: kBottomFooterColor,
        height: kBottomFooterHeight,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
