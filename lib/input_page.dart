

import 'package:bmi_calculator/card_icon.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const activeCardColor = Color(0xFF1D1E33);
const buttonHeight = 80.0;

class _InputPageState extends State<InputPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                color: activeCardColor,
                child: CardIcon(
                  icon: FontAwesomeIcons.mars,
                  text: 'MALE',
                )
              )),
              Expanded(child: ReusableCard(
                color: activeCardColor,
                child: CardIcon(
                  icon: FontAwesomeIcons.venus,
                  text: 'FEMALE',
                )
              )),
            ],
          ),
          ),
          Expanded(child: ReusableCard(color: activeCardColor)),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(color: activeCardColor)),
              Expanded(child: ReusableCard(color: activeCardColor)),
            ],
          ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: buttonHeight,
          )
        ],
      ),
    );
  }
}