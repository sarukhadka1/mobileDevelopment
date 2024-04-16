//  WAP to remove an element from an array.

import 'dart:io';

List<int> removeElement(List<int> arr, int element) {
  List<int> result = []; 
  
  
  for (int i = 0; i < arr.length; i++) {
    
    if (arr[i] != element) {
      result.add(arr[i]);
    }
  }
  
  return result; 
}

void main() {
  
  stdout.write('Enter the number of elements in the array: ');
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = [];
  print('Enter $n elements:');
  
  for (int i = 0; i < n; i++) {
    stdout.write('Element ${i + 1}: ');
    arr.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write('Enter the element to remove: ');
  int element = int.parse(stdin.readLineSync()!);

  List<int> result = removeElement(arr, element);

  print('Array after removing $element: $result');
}
