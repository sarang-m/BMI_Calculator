import 'package:bmicalculator/utils/screen_size.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPressed;
  final Icon icon;
  RoundIconButton({this.onPressed,this.icon});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: SizeConfig.safeBlockHorizontal*12,
        height: 56
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      onPressed: onPressed,
      child: icon,
    );
  }
}
