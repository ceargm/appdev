/* 
Write a program that uses loops, list, and functions to perform the following steps:
a. Prompt the user to input two integers: firstNum and secondNum (firstNum must be less than secondNum).
b. Store all the integers between firstNum and secondNum in a List.
c. Create a function to output all odd numbers between firstNum and secondNum.
d. Output the sum of all even numbers between firstNum and secondNum.
e. Output the numbers and their squares between firstNum and secondNum.
f. Output the sum of the square of the odd numbers between firstNum and secondNum.
g. Calculate the average value of the numbers between firstNum and secondNum. 

Function Prototypes:
Please create the necessary functions to satisfy the problem. Function prototypes are given to be followed. 
•  List<int> getList(/*add the necessary parameters*/)
•  void printOddNumbers(/*add the necessary parameters*/) 
•  void printSumEvenNumbers(/*add the necessary parameters*/)
•  void printNumSquares(/*add the necessary parameters*/)
•  void printSumSquareOddNumber (/*add the necessary parameters*/)
•  void calculateAverage(/*add the necessary parameters*/) 
*/

import 'dart:io';

void main(){ // start of main function

  // a. prompt the user to input two integers: firstNum and secondNum (firstNum must be less than secondNum).
  stdout.write("\nEnter first number: ");
  int firstNum = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int secondNum = int.parse(stdin.readLineSync()!);

  if (firstNum < secondNum){ 

    List<int> numbers = getList(firstNum,secondNum);
    
    printOddNumbers(numbers);
    printSumEvenNumbers(numbers); 
    printNumSquares(numbers);
    printSumSquareOdd(numbers);
    calculateAverage(numbers);   
  }
  else {

    stdout.writeln("First number is greater than second number.");
    return;

  }

} // end of main function

// b. store all the integers between firstNum and secondNum in a List.
List<int> getList(int fn, int sn){

  List<int> numbers = [];
  for (int i = fn + 1; i < sn; i++){
    numbers.add(i);
  }
  
  return numbers;
}

// c. create a function to output all odd numbers between firstNum and secondNum.
void printOddNumbers(List<int> numbers){ 

  stdout.write("\nOdd Numbers between firstNum and secondNum: ");

  for(int i = 0; i < numbers.length; i++)
  {
    if(numbers[i] % 2 != 0){
      stdout.write("${numbers[i]}" + " ");
    }
  }
}

// d. Output the sum of all even numbers between firstNum and secondNum.
void printSumEvenNumbers(List<int> numbers){

  int sum = 0;

  for(int i = 0; i < numbers.length; i++){
    if (numbers[i] % 2 == 0){
      sum += numbers[i];
    }
  }
  stdout.writeln("\n\nThe sum of the even numbers is: ${sum}");
}

// e. output the numbers and their squares between firstNum and secondNum.
void printNumSquares(List<int> numbers){

  stdout.writeln("\nThe numbers and their square between firstNum and secondNum: ");
  for(int i = 0; i < numbers.length; i ++){
    stdout.writeln("${numbers[i]} --> ${numbers[i] * numbers[i]}");
  }
}

// f. output the sum of the square of the odd numbers between firstNum and secondNum.
void printSumSquareOdd(List<int> numbers){

  int sumOdd = 0;

  for(final val in numbers){
    if (val % 2 != 0){
      sumOdd = sumOdd + (val * val);
    }
  }
  stdout.writeln("\nThe sum of the square of the odd numbmers is: $sumOdd");
}

// g. calculate the average value of the numbers between firstNum and secondNum. 
void calculateAverage(List<int> numbers){

  int sum = 0;
  double average = 0;

  for (final val in numbers){
    sum += val;
  }

  average = sum / numbers.length;
  stdout.writeln("\nThe average of the numbers is: $average\n");
}
