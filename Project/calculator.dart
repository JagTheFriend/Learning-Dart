import 'dart:io';

double return_result(double number_1, double number_2, String operator_1) {
  /**Performs the calculation and returns the result*/
  switch (operator_1) {
    case "+":
      return number_1 + number_2;

    case "*":
      return number_1 * number_2;

    case "-":
      return number_1 - number_2;

    case "/":
      return number_1 / number_2;

    default:
      return 69;
  }
}

void get_output(double number_1, double number_2, String operator_1) {
  /**This it the core function
   * It handles the flow return values of the different functions
   * such as checking whether the given operator (operator_1) is valid 
   * by makking function calls, and checking what the function returned
   * And showing the ouput on the console(or the screen/terminal)
   */
  String operator_ = get_operator(operator_1);

  if (operator_ != "Invalid") {
    print("Output: $return_result(number_1, number_2, operator_1)");
  }
  print("Ivalid operator!!\n");
}

String get_operator(String operator_1) {
  /**
   * Finds which operator was used
   * Returns a String
   */
  List<String> f = ["+", "-", "*", "/"];
  for (var i in f) {
    if (i == operator_1) {
      return i;
    }
  }
  // invalid operator
  return "Invalid";
}

void main() {
  while (true) {
    // get numbers:
    print("Enter a number: ");
    double number_1 = double.parse(stdin.readLineSync() as String);

    print("Enter another number:");
    double number_2 = double.parse(stdin.readLineSync() as String);

    print("Enter the operator:");
    String operator_1 = stdin.readLineSync() as String;
    get_output(number_1, number_2, operator_1);
  }
}
