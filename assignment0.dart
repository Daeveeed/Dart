import 'dart:math';
import 'dart:io';


void main(){

  var int_erest = Interest();


  print("Enter the principal:");
  int_erest.principal = double.parse(stdin.readLineSync()!);

  print("Enter the rate:");
  int_erest.rate = double.parse(stdin.readLineSync()!);

  print("Enter the time:");
  int_erest.time = double.parse(stdin.readLineSync()!);

  print("Enter the Number Of Times Interest Applied:");
  int_erest.number= double.parse(stdin.readLineSync()!);

  int_erest.si();
  print("Simple Interest = ${int_erest.si()}");

  int_erest.ci();
  print("Compound Interest = ${int_erest.ci()}");
  
}

class Interest {
  double? principal;
  double? rate;
  double? time;
  double? simpleInterest_clac;
  double? number;
  double? compoundInterest_calc;

  double si() {
    simpleInterest_clac = (principal! * time! * rate!)/100;
    return simpleInterest_clac!;
  }

  double ci(){
    var x = (principal! * (1 + (rate! / number!)));
    var y = pow(number!, time! );
    compoundInterest_calc = (x* y);
    return compoundInterest_calc!;
  }
}
