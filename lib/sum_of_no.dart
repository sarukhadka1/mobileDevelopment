import 'dart:js_util';

void main(){
  int result=subtract(2, 4);
  print(result);
  result=subtract(2,4,5);
  print(result);
}
int subtract(int first, int second,[int third])