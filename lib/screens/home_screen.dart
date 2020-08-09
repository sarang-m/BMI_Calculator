//import 'package:bmicalculator/screens/result_screen.dart';
import 'package:bmicalculator/screens/result_screen.dart';
import 'package:bmicalculator/widgets/age_weight_style.dart';
import 'package:bmicalculator/widgets/iconCard.dart';
import 'package:bmicalculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/utils/screen_size.dart';


const activeCardColor = Color(0xff1d1e33);
const deActiveCardColor = Color(0xff111328);
const bottomContainerColor = Colors.pink;

class HomeScreen extends StatefulWidget {

  static String id = "HomeScreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selected = 'first';
  double currentSliderValue = 180;
  int weight = 60;
  int age = 40;


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 'first';
                        });
                      },
                      child: ReusableCard(
                        colour: selected == 'first'
                            ? activeCardColor
                            : deActiveCardColor,
                        cardChild: IconCard(
                          categoryIcon: FontAwesomeIcons.mars,
                          categoryString: 'Male',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 'second';
                        });
                      },
                      child: ReusableCard(
                        colour: selected == 'second'
                            ? activeCardColor
                            : deActiveCardColor,
                        cardChild: IconCard(
                            categoryIcon: FontAwesomeIcons.venus,
                            categoryString: "Female"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: ReusableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Height',
                      style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal*4.5,
                          color: Color(0xff8d8e98)),
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical*.5,),
                    Text("${currentSliderValue.toInt()}"+" cm",style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal*10,
                      fontWeight: FontWeight.bold
                    ),),
                    Slider(
                      max: 220,min: 100,divisions: 120,
                      activeColor: Colors.pink,
                      inactiveColor: Color(0xff0a0e21),
                      value: currentSliderValue,
                      onChanged: (double newValue){
                        setState(() {
                          currentSliderValue = newValue;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: WeightAndAgeStyle(
                        textHeading: "Weight",
                        ageOrWeight: weight,
                      onPressedAdd: (){
                          setState(() {
                            weight++;
                          });
                      },
                      onPressedMinus: (){
                          setState(() {
                            weight--;
                          });
                      },),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: WeightAndAgeStyle(
                        textHeading: "Age",
                        ageOrWeight: age,
                      onPressedAdd: (){
                          setState(() {
                            age++;
                          });
                      },
                      onPressedMinus: (){
                          setState(() {
                            age--;
                          });
                      },),
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, ResultScreen.id);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: bottomContainerColor,
                  ),
                  height: height /20,
                  width: width,
                  child: Center(
                    child: Text("Calculate",style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal*9
                    ),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}







