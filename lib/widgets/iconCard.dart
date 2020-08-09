import 'package:bmicalculator/utils/screen_size.dart';
import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final IconData categoryIcon;
  final String categoryString;

  IconCard({@required this.categoryIcon,@required this.categoryString});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(categoryIcon,size: SizeConfig.safeBlockHorizontal*18,),
        SizedBox(height: 10,),
        Text(categoryString,style: TextStyle(
            fontSize: SizeConfig.safeBlockHorizontal*4.5,
            color: Color(0xff8d8e98)
        ),)
      ],
    );
  }
}