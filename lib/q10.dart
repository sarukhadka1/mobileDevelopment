// WAP to check weather character is vowel or not using Switch case 

import 'dart:io';


bool isVowel(String character) {
  switch (character.toLowerCase()) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      return true;
    default:
      return false;
  }
}

void main() {
  
  stdout.write('Enter a character: ');
  String input = stdin.readLineSync()!;
  
  if (input.length == 1) {
    
    bool result = isVowel(input);
    
    if (result) {
      print('The character "$input" is a vowel.');
    } else {
      print('The character "$input" is not a vowel.');
    }
  } else {
    print('Please enter only one character.');
  }
}
