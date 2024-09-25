/* Create an application that contains a method that computes the final price for a
sales transaction and returns that value to a calling method. The sale() method
requires three arguments: product price, salesperson commission rate, and
customer discount rate. A product’s final price is the original price plus the
commission amount minus the discount amount; the customer discount is taken
as a percentage of the total price after the salesperson commission has been
added to the original price. Write a main() method that prompts the user for the
price of an item, the salesperson’s commission expressed as a percentage, and
the customer discount expressed as a percentage. */

import 'dart:io'; // Import the dart:io library to read user input.

void main() {
  // Prompt the user for the product price.
  stdout.write("Enter the product price: ");
  double productPrice = double.parse(stdin.readLineSync()!); // Read and parse the input as a double.

  // Prompt the user for the salesperson commission rate.
  stdout.write("Enter the salesperson's commission rate (%): ");
  double commissionRate = double.parse(stdin.readLineSync()!); // Read and parse the commission rate.

  // Prompt the user for the customer discount rate.
  stdout.write("Enter the customer discount rate (%): ");
  double discountRate = double.parse(stdin.readLineSync()!); // Read and parse the discount rate.

  // Call the sale() method to calculate the final price.
  double finalPrice = sale(productPrice, commissionRate, discountRate);

  // Display the final price.
  print("The final price after commission and discount is: P${finalPrice.toStringAsFixed(2)}");
}

// Method to compute the final price of the product.
double sale(double price, double commissionRate, double discountRate) {
  // Calculate the commission amount.
  double commissionAmount = price * (commissionRate / 100);
  
  // Calculate the total price after adding commission.
  double totalPriceAfterCommission = price + commissionAmount;
  
  // Calculate the discount amount.
  double discountAmount = totalPriceAfterCommission * (discountRate / 100);
  
  // Calculate the final price.
  double finalPrice = totalPriceAfterCommission - discountAmount;

  return finalPrice; // Return the final price to the calling method.
}


