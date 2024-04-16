//3. WAP to check weather a string is palindrom or not.

import 'dart:io';
bool isPalindrome(String str) {
  
  str = str.toLowerCase();
  
  
  int start = 0;
  int end = str.length - 1;
  
  
  while (start < end) {
    
    while (!str[start].toLowerCase().contains(new RegExp(r'[a-z0-9]'))) {
      start++;
    }
    
    while (!str[end].toLowerCase().contains(new RegExp(r'[a-z0-9]'))) {
      end--;
    }
  
    if (str[start] != str[end]) {
      return false;
    }
    
    start++;
    end--;
  }
  
  return true;
}

void main() {
  
  print("Enter a string: ");
  String inputString = stdin.readLineSync()!;
  
  if (isPalindrome(inputString)) {
    print('The string "$inputString" is a palindrome.');
  } else {
    print('The string "$inputString" is not a palindrome.');
  }
}
