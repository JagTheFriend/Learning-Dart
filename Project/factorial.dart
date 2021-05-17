import 'dart:io';

factorial(int number){
	/** 
	* This function finds the factorial of a number 
	* using recursion
	*/
	
	// number is smaller or equal to 0
	if (number <= 0){
		return 1;
	}
	return factorial(number-1) * number;
}

void main(){
	print("Please enter a number: ");
	
	int number = int.parse(stdin.readLineSync() as String);
	var fact = factorial(number);
	print("Factorial of $number is $fact");
}
