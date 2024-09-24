void main() {
  // 1. Declare a list of truck IDs (integers)
  List <int> truckIDs = [102, 105, 108, 111, 114, 117, 120, 123];

  // 2. Declare a variable for the index
  int index = 0;

  // 3. Create an empty list to store odd-numbered truck IDs
  List <int> oddTruckIDs = [];

  // 4. Use a while loop to iterate through the list
  while (index < truckIDs.length) {
    // 5. Use an if statement to check if the truck ID is odd
    if( truckIDs[index] % 2 != 0 ){
      // 6. If the truck ID is odd, add it to the oddTruckIDs list
      oddTruckIDs.add(truckIDs[index]);
    }
    // 7. Increment the index to move to the next element
    index++;
  }
  // 8. Print the list of odd-numbered truck IDs
  print("Odd-numberes truck IDs: ${oddTruckIDs.join(" ")}");
}
