import 'package:bmi_calculator/components/footer_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String resultBody;
  final String resultTitle;
  final String resultDescription;

  ResultPage(
      {required this.resultBody,
      required this.resultDescription,
      required this.resultTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      resultTitle,
                      style: kResultTitleStyle,
                    ),
                    Text(
                      resultBody,
                      style: kResultNumberStyle,
                    ),
                    Text(
                      resultDescription,
                      textAlign: TextAlign.center,
                      style: kDescriptionStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: FooterButton(
              buttonName: 'RE-CALCULATE',
              navigate: () {
                Navigator.pop(context);
              },
            ))
          ],
        ));
  }
}
