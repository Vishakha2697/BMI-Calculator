import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';


class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.interpretation, @required this.resultText, @required this.bmiResult});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
         Expanded(
           child: Container(
            padding: EdgeInsets.all(12.0),
             alignment: Alignment.bottomLeft,
             child: Text(
               'Your Result',
               style: kTitleTextStyle,
             ),
           ),
         ),
         Expanded(
             flex: 5,
             child: ReusableCard(
              colour: kactiveCardColour,
               cardChild: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   Text(resultText.toUpperCase(),
                   style: kResultTextStyle,
                   ),
                   Text(
                     bmiResult,
                     style: kBMITextStyle,
                   ),
                   Text(
                     interpretation,
                   ),
                 ],
               ),
             ),
         ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
                onTap: (){
              Navigator.pop(context);
            }
          ),
        ],
      ),
    );
  }
}
