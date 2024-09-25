// Class allows you to create an object, which is basically a blueprint.
// To create a class, define it outside the main function.
// Class name must start with a capital letter to follow Dart conventions.

void main() {
  // Create an instance (object) of the Person class named p1.
  // The object is initialized without any data at this point.
  Person p1 = Person();
  
  // Call the addData method on p1 to assign values to the object's properties.
  p1.addData("Faith", "Female", 21);
  
  // Call the showData method to display the object's data.
  p1.showData();
}

// Define the Person class to hold personal information.
class Person {
  // Declare nullable properties for the person's name, sex, and age.
  String? name, sex;
  int? age;

  // Method to add data to the person's properties.
  void addData(String name, String sex, int age) {
    // Use 'this' keyword to refer to the object's properties.
    this.name = name; // Assign the name parameter to the object's name property.
    this.sex = sex;   // Assign the sex parameter to the object's sex property.
    this.age = age;   // Assign the age parameter to the object's age property.
  }

  // Method to display the person's data.
  void showData() {
    // Print the person's name, sex, and age to the console.
    print("Name: $name");
    print("Sex: $sex");
    print("Age: $age");
  }
}
