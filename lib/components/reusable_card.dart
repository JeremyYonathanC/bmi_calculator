import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? click;

  ReusableCard({required this.colour, this.cardChild, this.click});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
    );
  }
}
