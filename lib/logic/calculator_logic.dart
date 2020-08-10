import 'dart:math';
class CalculatorLogic{

  final int height;
  final int weight;
  double _bmi;
  double _mHeight;

  CalculatorLogic({this.height,this.weight});



  String getResult(){
    _mHeight =height/100;
    _bmi = (weight/(pow(_mHeight,2)));
    return _bmi.toStringAsFixed(1);
  }

  String getResultText(){
    if (_bmi>=25){
      return "Over Weight";
    }else if(_bmi>=18.5){
      return "Normal";
    }else{
      return "Under Weight";
    }
  }


  String getResultInfoInfo(){
    if (_bmi>=25){
      return "You have a higher than normal body weight. Try to exercise more";
    }else if(_bmi>=18.5){
      return "You have a normal body weight. Good job";
    }else{
      return "You have a lower than normal body weight. You can eat a bit more";
    }
  }

}