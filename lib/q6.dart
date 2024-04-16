//WAP to find Simple Interst  
import 'dart:io';

double calculateSimpleInterest(double principal, double rate, double time) {
  return (principal * rate * time) / 100;
}

void main() {
  
  stdout.write('Enter the principal amount: ');
  double principal = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the rate of interest (in percentage): ');
  double rate = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the time period (in years): ');
  double time = double.parse(stdin.readLineSync()!);

  double simpleInterest = calculateSimpleInterest(principal, rate, time);
  print('The Simple Interest is: $simpleInterest');
}
