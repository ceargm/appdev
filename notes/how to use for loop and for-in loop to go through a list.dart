// In Dart, you can use two main types of loops to go through a list: 
// 1. the regular for loop 
// 2. and the for-in loop. 

// Both are useful, but they work in different ways.

// 1. for loop:
// for loop allows you to control how the loop runs by setting a starting point, an end point, and how the loop moves through the list.

// Example:

import "dart:io";
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  // Using a regular for loop
  stdout.writeln("\nUsing a for loop:");
  for (int i = 0; i < numbers.length; i++) {
    stdout.write("${numbers[i]} "); // prints each number one by one
  }

// Explanation:

// int i = 0: The loop starts at index 0 (first element).
// i < numbers.length: The loop continues as long as i is less than the total number of items in the list.
// i++: After each step, i increases by 1 (moves to the next element).
// numbers[i]: Gets each number using its position (or index) in the list.

// 2. for-in loop:
//The for-in loop is simpler. It goes through each item in the list one by one, without needing to keep track of the index.

// Example:
  // Using a for-in loop
  stdout.writeln("\n\nUsing a for-in loop:");
  for (int number in numbers) {
    stdout.write("$number "); // prints each number one by one
  }

// Explanation:
// number in numbers: This loop takes each item from the list and puts it in the number variable one at a time.
// You don't need to worry about index positions or manually increasing any counters.

// When to use:
// Regular for loop: Use this if you need more control. For example, if you want to start from the middle of the list or skip items.

// Example:
  stdout.writeln("\n\nUsing for loop to skip items.");
  for (int i = 0; i < numbers.length; i += 2) { // Skips every other item
    stdout.write("${numbers[i]} ");
  }
  stdout.write("\n");
}

// for-in loop: Use this when you just want to go through all the items in the list without worrying about index positions.

// Summary:
// The for loop gives you more control, but it's a bit more complex.
// The for-in loop is simpler and easier when you don't need to manage positions in the list.

