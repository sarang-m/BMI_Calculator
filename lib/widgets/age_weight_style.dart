import 'package:bmicalculator/utils/screen_size.dart';
import 'package:bmicalculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class WeightAndAgeStyle extends StatelessWidget {

  final int ageOrWeight;
  final String textHeading;
  final Function onPressedMinus;
  final Function onPressedAdd;

  WeightAndAgeStyle({this.ageOrWeight,this.textHeading,this.onPressedMinus,
    this.onPressedAdd});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("$textHeading",style: TextStyle(
            fontSize: SizeConfig.safeBlockHorizontal*4.5, color: Color(0xff8d8e98)
        ),),
        SizedBox(height: SizeConfig.safeBlockVertical*.5,),
        Text("$ageOrWeight",style: TextStyle(
            fontSize: SizeConfig.safeBlockHorizontal*10,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: SizeConfig.safeBlockVertical*.5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              onPressed: onPressedMinus,
              icon: Icon(FontAwesomeIcons.minus,color: Colors.white,),
            ),
            SizedBox(width: 10,),
            RoundIconButton(
              onPressed: onPressedAdd,
              icon: Icon(FontAwesomeIcons.plus,color: Colors.white,),
            ),

          ],
        )
      ],
    );
  }
}