import 'package:bmicalculator/utils/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final String bmiResult;
  final String bmiResultText;
  final String bmiResultInfo;

  ResultScreen({this.bmiResult,this.bmiResultText,this.bmiResultInfo});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("BMI Calculator"),),
        body: Center(
          child:Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Center(
                  child: Text("Your Result",
                    style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal*13),),
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical*2,),
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.safeBlockHorizontal*5),
                  decoration: BoxDecoration(
                    color: Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  width: SizeConfig.blockSizeHorizontal*90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("$bmiResultText",
                        style: TextStyle(
                          color: Colors.green,
                            fontSize: SizeConfig.safeBlockHorizontal*7),),
                      Text("$bmiResult",
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal*16,
                          fontWeight: FontWeight.w900
                        ),),
                      Text("$bmiResultInfo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal*6),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical*4,),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    color: Colors.pink,
                    child: Center(
                      child: Text("Re-Calculate",
                        style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal*9,),),
                    ),
                  ),
                ),
              )
            ],
          ),),
      ),
    );
  }
}
