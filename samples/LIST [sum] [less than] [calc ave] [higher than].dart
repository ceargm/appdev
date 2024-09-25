/* 

Create an application containing a list that stores 10 prices, such
as P234, P789, P134, and so on. 

The application should 
(1) display the sum of all the prices, 
(2) display all values less than P500, 
(3) calculate the average of the prices, and 
(4) display all values that are higher than the calculated average value. 

*/

import 'dart:io'; // Import the dart:io library to print output.

void main() {
  // Create a list with 10 prices (in Pesos).
  List<int> prices = [234, 789, 134, 600, 400, 520, 300, 780, 150, 450];

  // (1) Calculate the sum of all prices.
  int sum = 0; // Start with a sum of 0.
  for (int i = 0; i < prices.length; i++) { // Loop through each price.
    sum += prices[i]; // Add each price to the sum.
  }
  stdout.writeln("Sum of all prices: P$sum"); // Print the total sum.

  // (2) Display prices that are less than P500.
  stdout.write("Prices less than P500: "); // Start message for prices under 500.
  for (int i = 0; i < prices.length; i++) { // Loop through each price again.
    if (prices[i] < 500) { // Check if the price is less than 500.
      stdout.write("P${prices[i]} "); // Print the price if it is less than 500.
    }
  }

  // (3) Calculate the average of the prices.
  double average = sum / prices.length; // Divide sum by the number of prices.
  stdout.writeln("\nAverage price: P${average.toStringAsFixed(2)}"); // Print the average, formatted to 2 decimal places.

  // (4) Display prices that are higher than the average.
  stdout.write("Prices higher than the average: "); // Start message for prices above average.
  for (int i = 0; i < prices.length; i++) { // Loop through each price again.
    if (prices[i] > average) { // Check if the price is greater than the average.
      stdout.write("P${prices[i]} "); // Print the price if it is higher than average.
    }
  }
}
