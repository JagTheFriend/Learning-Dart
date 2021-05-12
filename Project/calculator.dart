import 'dart:io';

run() {
  // get numbers:
  print("Enter a number: ")
  double number_1 = double.parse(stdin.readLineSync() as  String); 
  
  print("Enter another number:");
  double number_2 = double.parse(stdin.readLineSync() as  String); 

}

void main() {
  run();
}
