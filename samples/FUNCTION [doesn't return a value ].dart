/* 

Create an application named TestMethods whose main() method holds two
integer variables. Assign values to the variables. In turn, pass each value to
methods named displayIt(), displayItTimesTwo(), anddisplayItPlusOneHundred(). 
Create each method to perform the task its name implies.

*/

void main() {
  // Declare two integer variables and assign values to them.
  int num1 = 10;
  int num2 = 20;

  // Pass the first number to the methods.
  displayIt(num1);               // Display the original value.
  displayItTimesTwo(num1);       // Display the value multiplied by two.
  displayItPlusOneHundred(num1); // Display the value plus one hundred.

  // Pass the second number to the methods.
  displayIt(num2);               // Display the original value.
  displayItTimesTwo(num2);       // Display the value multiplied by two.
  displayItPlusOneHundred(num2); // Display the value plus one hundred.
}

// Method to display the original value.
void displayIt(int number) {
  print("The value is: $number");
}

// Method to display the value multiplied by two.
void displayItTimesTwo(int number) {
  print("The value times two is: ${number * 2}");
}

// Method to display the value plus one hundred.
void displayItPlusOneHundred(int number) {
  print("The value plus one hundred is: ${number + 100}");
}
