import 'dart:io';

int take_age(){
    /**
    * Returns the age of the Student
    * Return Type: int
    */
  
    int age;
    // Allow the user to enter the age
    print("\nPlease enter the age: ");
    age = int.parse(stdin.readLineSync() as String);

    // && = And
    if (age <= 16 && age >= 12){
        return age;
    }
    // invalid age was given
    print("Please enter a valid age!");
    take_age();

    return 0;
}

String take_school_name(){
    /**
     * Asks for the name of the school the student is in
     * Return Type: String
     */
    String school;
    // Allow the user to enter the school name
    print("\nPlease enter the name of the school: ");
    school = stdin.readLineSync() as String;

    // || = Or
    if (school == "mars" || school == "saturn"){
        return school;
    }
    // invalid school name was given
    print("Please enter a valid school name!");
    take_school_name();
    return "";
}

double take_reaction_time(){
    /**
    * Returns the reaction time of the Student
    * Return Type: Double
    */
    // Allow the user to enter the age
    print("\nPlease enter the reaction time: ");
    return double.parse(stdin.readLineSync() as String);
}

void main(){
    // Make an empty array contaning 5 elements
    // the array should have a fixed lenght, hence growable = false
    var student_age = new List<int>.filled(5, 0, growable: false);
    var school = new List<String>.filled(5, "", growable: false); // "" -> Empty string
    var reaction_time = new List<double>.filled(5, 0, growable: false);  

    for (var i = 0; i < student_age.length; i++) {
        student_age[i] = take_age(); // gets the age
        school[i] = take_school_name(); // gets the school name
        reaction_time[i] = take_reaction_time(); // gets the reaction time
    }
    print("Student age: $student_age");
    print("School Name: $school");
    print("Reaction Time: $reaction_time");
}
