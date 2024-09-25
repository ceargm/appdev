// Write an application that can hold five (5) integers in an array.
// Display the integers from first to last, and then display the integers from last to first

import "dart:io"; // Import dart:io to use stdout for printing.

void main() {
  // Create a list with 5 numbers.
  List<int> list = [1, 2, 3, 4, 5];

  // Show the whole list.
  stdout.writeln("List: $list"); // Print the list and move to the next line.

  // Show numbers from first to last.
  stdout.write("\nDisplay the integers from first to last: "); // \n starts a new line.
  for (int i = 0; i < list.length; i++) { // Loop through the list from the start to the end.
    stdout.write(list[i]); // Print each number.
    stdout.write(" "); // Add a space after each number.
  }

  // Show numbers from last to first.
  stdout.write("\nDisplay the integers from last to first: "); // Start a new line.
  for (int i = list.length - 1; i >= 0; i--) { // Loop through the list from the end to the start.
    stdout.write(list[i]); // Print each number in reverse.
    stdout.write(" "); // Add a space after each number.
  }
}


// Simple explanation:

// List<int> list = [1, 2, 3, 4, 5];
// - makes a list with the numbers 1 to 5.

// stdout.writeln("List: $list");
// - prints the list and moves to the next line.

// stdout.write("\nDisplay the integers from first to last: ");
// - prints the message and moves to a new line using \n.

// for (int i = 0; i < list.length; i++) { stdout.write(list[i]); }
// - loop goes through the list from the first number to the last, printing each one.

// for (int i = list.length - 1; i >= 0; i--) { stdout.write(list[i]); }
// - loop goes through the list from the last number to the first, printing each one in reverse order.
