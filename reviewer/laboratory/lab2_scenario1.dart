import 'dart:io';

void main () {
  List <String> inventory = ['apple', 'banana', 'carrot', 'dates'];
  bool continueRunning = true;

  while(continueRunning) {
    print("\n-----------------------------------------------------------------------");
    print("\nInitial inventory: $inventory");
    print("\nPlease select an operation to do:");
    print("[1] Add New Product in the inventory");
    print("[2] Remove a Product from the inventory");
    print("[3] Display the total number of items in the inventory");
    print("[4] Allow the user to search for an item and display if it is available or not.");
    print("[5] Sort the inventory list alphabetically");
    print("[6] Exit");

    stdout.write('\nYou have selected: ');
    String? choice = stdin.readLineSync();


    // [1] Add New Product in the inventory
    if (choice != null && choice.contains('1')) {
      stdout.write('\nPlease enter the product you want to add in the inventory: ');
      String? newProduct = stdin.readLineSync();
      if (inventory.contains(newProduct)) {
        print("\nInvalid input. $newProduct is already included in the inventory.");
      }
        else if (newProduct != null && newProduct.isNotEmpty) {
          inventory.add(newProduct);
          print('\nUpdated Inventory: $inventory');
        }
    }

    // [2] Remove a Product from the inventory
    else if (choice != null && choice.contains('2')) {
      stdout.write('\nPlease select a product you want to remove in the inventory: ');
      String? rProduct = stdin.readLineSync();
        if (rProduct != null && inventory.contains(rProduct)){
          inventory.remove(rProduct);
          print("\nProduct removed: $rProduct");
          print("\nUpdated inventory: $inventory");
        }
        else{ print('\nInvalid input. $rProduct is not included in the inventory.');}
    }

    // [3] Display the total number of items in the inventory
    else if (choice != null && choice.contains('3')) {
      print('\nThe Total number of items in the inventory: ${inventory.length}');
    }

    // [4] Allow the user to search for an item and display if it is available or not.
    else if (choice != null && choice.contains('4')) {
      stdout.write('\nPlease enter the product you want to search in the inventory: ');
      String? sProduct = stdin.readLineSync();
        if(sProduct != null && inventory.contains(sProduct)){
          print('\n$sProduct is available.');
          } else {print('\n$sProduct is not available.'); }
    }

    // [5] Sort the inventory list alphabetically
    else if (choice != null && choice.contains('5')) {
      inventory.sort();
      print("\nSorted Inventory: $inventory");
    }

    // [6] Exit
    else if (choice != null && choice.contains('6')) {
      print('\nExiting...\n');
      continueRunning = false;
      }

    // Default
    else { print('\nInvalid Selection. Please Try Again');
    }

  } // end of while loop
    
}


