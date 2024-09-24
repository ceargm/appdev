/* 

Scenario:
You are a financial consultant, and one of your clients is trying to manage their monthly expenses
better. They want to understand not only how much money they have left after paying off certain
mandatory charges but also how these charges relate to their overall income in terms of percentages.
Your task is to create a program that will help your client calculate their remaining balance after
deducting these charges from their monthly salary and display what percentage of their salary each
charge represents.

Requirements:
1. Input the Monthly Salary: The program should start by asking the user to input their monthly
salary.
2. Input the Charges: The user should then input the amount for each of the following charges:
a. Rent
b. Utilities (electricity, water, internet, etc.)
c. Groceries
d. Transportation
e. Miscellaneous (any other recurring expenses)
3. Calculate the Percentage of Salary for Each Charge: For each charge, the program should
calculate the percentage of the salary that the charge represents.
4. Calculate the Remaining Balance: The program should subtract all the charges from the
monthly salary to compute the remaining balance.
5. Output the Charges and Percentages: The program should display each charge, the
amount, and the percentage of the salary it represents.
6. Output the Remaining Balance: Finally, the program should display the remaining balance
after all the charges have been deducted.

*/

import "dart:io";

void main (){
  stdout.write("Please enter your salary (P): ");
  num salary = num.parse(stdin.readLineSync()!);

  stdout.write("Rent: ");
  num rent = num.parse(stdin.readLineSync()!);

  stdout.write("Utilities: ");
  num utilities = num.parse(stdin.readLineSync()!);

  stdout.write("Groceries: ");
  num groceries = num.parse(stdin.readLineSync()!);

  stdout.write("Transportation: ");
  num transpo = num.parse(stdin.readLineSync()!);

  stdout.write("Miscellaneous: ");
  num misc = num.parse(stdin.readLineSync()!);

  num rentP = (rent / salary) * 100;
  num utilitiesP = (utilities / salary) * 100;
  num groceriesP = (groceries / salary) * 100;
  num transpoP = (transpo / salary) * 100;
  num miscP = (misc / salary) * 100;

  num totalCharges = rent + utilities + groceries + transpo + misc;
  num remainingBalance = salary - totalCharges;

  stdout.write("\nCharges Breakdown: ");
  stdout.write("\n- Rent: P${rent.toStringAsFixed(2)} (${rentP.toStringAsFixed(2)}%)");
  stdout.write("\n- Utilities: P${utilities.toStringAsFixed(2)} (${utilitiesP.toStringAsFixed(2)}%)");
  stdout.write("\n- Groceries: P${groceries.toStringAsFixed(2)} (${groceriesP.toStringAsFixed(2)}%)");
  stdout.write("\n- Transportation: P${transpo.toStringAsFixed(2)} (${transpoP.toStringAsFixed(2)}%)");
  stdout.write("\n- Miscellaneous: P${misc.toStringAsFixed(2)} (${miscP.toStringAsFixed(2)}%)");
  stdout.write("\n\nYour remaining balance after deducting all charges is: P${remainingBalance.toStringAsFixed(2)}");
}
