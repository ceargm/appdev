import 'dart:io';

void main() { // start of main function
  List <String> inventory = ["apple", "banana", "carrot", "dates"];
  bool continueRunning = true;

  while (continueRunning) {
    print("\n-----------------------------------------------------------------------");
    print("\nPlease select an operation to do: ");
    print('\n[1] Add New Product in the inventory');
    print('[2] Remove a Product from the inventory');
    print('[3] Display the total number of items in the inventory');
    print('[4] Allow the user to search for an item and display if it is available or not.');
    print('[5] Sort the inventory list alphabetically');
    print('[6] Exit');

    stdout.write("\nYou have selected: ");
    String? choice = stdin.readLineSync();
    
    // [1] Add New Product in the inventory
    if (choice != null && choice.contains('1')) {
      addProduct(inventory);
    }

    // [2] Remove a Product from the inventory
    else if (choice != null && choice.contains('2')) {
      removeProduct(inventory);
    }

    // [3] Display the total number of items in the inventory
    else if (choice != null && choice.contains('3')) {
    print('\nThe Total number of items in the inventory: ${getTotalItems(inventory)}'); }

    // [4] Allow the user to search for an item and display if it is available or not.
    else if (choice != null && choice.contains('4')) {
      stdout.write('\nPlease enter the product you want to search in the inventory: ');
      String? sProduct = stdin.readLineSync();
      if (sProduct != null) {
        bool available = isProductAvailable(inventory, sProduct);
        if (available) {
          print("\nProduct found: $sProduct is available in the inventory.");
        } else {
          print("\nProduct not found: $sProduct is not in the inventory.");
        }
      }
    }

    // [5] Sort the inventory list alphabetically
    else if (choice != null && choice.contains('5')) {
      sortInventory(inventory);
    }

    // [6] Exit
    else if (choice != null && choice.contains('6')) {
      print('\nExiting...\n');
      continueRunning = false;
    }

    // Default
    else { print ('\nInvalid selection. Try Again');
    }

  } 

} // end of main functioon

void addProduct(List<String> inventory) {

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

void removeProduct(List<String> inventory){

  stdout.write('\nPlease select a product you want to remove in the inventory: ');
  String? rProduct = stdin.readLineSync();
    if (rProduct != null && inventory.contains(rProduct)){
      inventory.remove(rProduct);
      print("\nProduct removed: $rProduct");
      print("\nUpdated inventory: $inventory");
      }
    else { print('\nInvalid input. $rProduct is not included in the inventory.');
  } 
}
    
int getTotalItems(List <String> inventory){
  return inventory.length;
}

bool isProductAvailable(List<String> inventory, String product){
  return inventory.contains(product);
}

void sortInventory(List <String> inventory){
  inventory.sort();
  print("\nSorted Inventory: $inventory");
}
