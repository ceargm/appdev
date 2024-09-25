/* 

Maria's Basket Store
Function
1. a value returning function for the total sales 
2. function to calculate the average
3. find the most expensive basket
4. find the cheapest basket

*/

import "dart:io";

void main () { // start of main function
  List <double> prices = [40.50, 30.25, 25.30, 50.75, 20.10];

  double total = totalSales(prices);
  print("\nTotal sales: ${total.toStringAsFixed(2)}"); // use toStringAsFixed to format number to 2 decimal places

  calcAve(prices);
  findMostExpensive(prices);
  findCheapest(prices);

} // end of main function

// 1. a value returning function for the total sales 
double totalSales (List <double> pr) {
  double sum = 0;

  /* for (final val in pr) {
    sum = sum + val;
    }
  return sum; */

  // or

  for (int i = 0; i < pr.length; i++) {
    sum = sum + pr[i]; // or sum += pr[i];
    }
  return sum;
  
} 

// 2. function to calculate the average
void calcAve (List <double> pr) {

  /* double sum = totalSales(pr);
  double ave = sum / pr.length; 
  print("Total Avergae: $ave"); */

  // or

  // print("Total Average: ${totalSales(pr) / pr.length}");

  // or

  double ave = totalSales(pr) / pr.length;
  print("Total Average: ${ave.toStringAsFixed(2)}"); 
  
}

// 3. find the most expensive basket

void findMostExpensive (List <double> pr) {
  double mostExpensive = pr[0]; // suppose the price at index 0 is the most expensive for now (40.50)

  // Loop the list starting from the second element (index 1)
  for(int i = 1; i < pr.length; i++) {
    if(pr[i] > mostExpensive) {
      mostExpensive = pr[i];  // If current price is higher, update mostExpensive
    }
  }
  // After the loop ends, mostExpensive will hold the highest price in the list
  print("Most Expensive Basket: $mostExpensive");
  
}

// 4. find the cheapest basket
void findCheapest(List <double> pr) {
  double cheapest = pr[0]; // suppose the price at index 0 is the cheapest for now (40.50)

  // Loop the list starting from the second element (index 1)
  for(int i = 1; i < pr.length; i++) {
    if(pr[i] < cheapest) {
      cheapest = pr[i];  // If current price is cheaper, update cheapest
    }
  }
  // After the loop ends, cheapest will hold the cheapest price in the list
  print("Cheapest Basket: $cheapest);
}
