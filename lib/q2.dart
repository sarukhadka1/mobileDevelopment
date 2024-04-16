//2. WAP to check weather a number is automorphic or not

import 'dart:io';


bool isAutomorphic(int num) {
  int square = num * num;
  int originalNumDigits = num.toString().length;
  int lastDigitsOfSquare = square % (int.parse('1' + '0' * originalNumDigits));
  return lastDigitsOfSquare == num;
}

void main() {
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!); 
  
  if (isAutomorphic(number)) {
    print('$number is an automorphic number');
  } else {
    print('$number is not an automorphic number');
  }
}
