/**
 * Write and test a program to complete the three tasks.
 * 
 * TASK 1
 * A data logger records the temperature on the roof of a school twice a day, at midday and midnight.
 * 
 * Input and store the temperatures recorded for a month. You must store the temperatures in two one-
 * dimensional arrays, one for the midday temperatures and one for the midnight temperatures. All the
 * 
 * temperatures must be validated on entry and any invalid temperatures rejected. You must decide
 * your own validation rules. You may assume that there are 30 days in a month.
 * 
 * TASK 2
 * Calculate the average temperature for midday and the average temperature for midnight. Output
 * these averages with a suitable message for each one.
 * 
 * TASK 3
 * Select the day with the highest midday temperature and the day with the lowest midnight temperature.
 * Then output each of these temperatures, the corresponding day and a suitable message.
 * Your program must include appropriate prompts for the entry of data. Error messages and other
 * outputs need to be set out clearly and understandably. All variables, constants and other identifiers
 * must have meaningful names. Each task must be fully tested.
 */

import 'dart:io';

class Task1 {
  int _MAX_LENGHT = 30;
  
  List<double> midday(){
    double temp = double.parse(stdin.readLineSync() as String);
    bool valid_ = valid(temp);
    return [];
  }
  
  List<double> midnight() {
    double temp = double.parse(stdin.readLineSync() as String);
    bool valid_ = valid(temp);
    return [];
  }

  runner() {
    var midday_temp = new List<int>.filled(_MAX_LENGHT, 0, growable: false);
    var midnight_temp = new List<int>.filled(_MAX_LENGHT, 0, growable: false);

    // ask for  midday temperatures
    midday();
    // ask for  midnight temperatures
    midnight();

  }

  bool valid(double temp, {bool midday: true}) {
    // midday
    if (midday){
      if (temp <= 35 && temp >= 18){
        return true;
      }
      return false;
    }
    // midnight
    else {
      if (temp <= 20 && temp >= 10){
        return true;
      }
      return false;
    }
  }
}

void main(List<String> args) {
  
}
