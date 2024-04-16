//WAP to find a number using Linear Search

import 'dart:io';

int linearSearch(List<int> arr, int target) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      return i; 
    }
  }
  return -1; 
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

  stdout.write('Enter the number to search: ');
  int target = int.parse(stdin.readLineSync()!);

  int result = linearSearch(arr, target);

  if (result != -1) {
    print('$target is found at index $result.');
  } else {
    print('$target is not found in the array.');
  }
}
