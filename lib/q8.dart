// WAP to find a number using Binary search. (Use Sorting)

import 'dart:io';

int binarySearch(List<int> arr, int target) {
  int low = 0;
  int high = arr.length - 1;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);
    if (arr[mid] == target) {
      return mid; 
    } else if (arr[mid] < target) {
      low = mid + 1; 
    } else {
      high = mid - 1; 
    }
  }
  return -1; 
}

void sortArray(List<int> arr) {
  arr.sort();
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
  sortArray(arr);

  stdout.write('Enter the number to search: ');
  int target = int.parse(stdin.readLineSync()!);

  int result = binarySearch(arr, target);

  if (result != -1) {
    print('$target is found at index $result.');
  } else {
    print('$target is not found in the array.');
  }
}
