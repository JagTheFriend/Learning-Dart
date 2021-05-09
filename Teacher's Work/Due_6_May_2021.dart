import 'dart:io';

class Task1 {
    /**
     * This class contains the functions which
     * I wrote to complete task 1
     */
    static int _MAX_LENGHT = 2;

    static take_age(){
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
        return take_age();
    }

    static String take_school_name(){
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

    static double take_reaction_time(){
        /**
        * Returns the reaction time of the Student
        * Return Type: Double
        */
        // Allow the user to enter the age
        print("\nPlease enter the reaction time: ");
        return double.parse(stdin.readLineSync() as String);
    }
    
    static run(){
        /**
         * Starts Task 1
         */

        // Make an empty array contaning 5 elements
        // the array should have a fixed lenght, hence growable = false
        var student_age = new List<int>.filled(_MAX_LENGHT, 0, growable: false);
        var school = new List<String>.filled(_MAX_LENGHT, "", growable: false); // "" -> Empty string
        var reaction_time = new List<double>.filled(_MAX_LENGHT, 0, growable: false);  

        for (var i = 0; i < student_age.length; i++) {
            student_age[i] = take_age(); // gets the age
            school[i] = take_school_name(); // gets the school name
            reaction_time[i] = take_reaction_time(); // gets the reaction time
        }
        return [student_age, school, reaction_time];
    }
}

class Task2 {
    /**
     * This class contains the function which 
     * I wrote to complete task 2
     */
    static double Average_Reaction(List<double> reaction, List<int> age){
        /**
         * Finds the average reaction time of a specific age group
         * @param reaction: An Array contaning all the reaction times
         * @param age: An array contaning the age of the student
         * @param chosen_age: The age group chosen by the user
         *
         * Return Type: Double 
         */
        print("\nPlease enter an age: ");
        int chosen_age = int.parse(stdin.readLineSync() as String);

        double counter = 0;
        int total = 0;

        for (var i = 0; i < reaction.length; i++) {
            if (age[i] == chosen_age){
                counter = counter + reaction[i];
                total++;
            }
        }
        return counter/total;
    }
    static void run(
        List <int> age, 
        List<String> school, 
        List<double> reaction_times
    ){
        /**
         * Starts Task 2
         */
        // find the Average Reaction
        Average_Reaction(reaction: reaction_times, age: age);
    }
}

void main(){
    var return_values = Task1.run();
    List<int> age = return_values[0];
    List<String> school = return_values[1];
    List<double> reaction_times = return_values[2];

}
