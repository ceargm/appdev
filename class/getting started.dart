// Class allows you to create an object which is basically a blueprint
// To create a class, come outside the main function
// Class name must sturt with capital letter

// This is the main function where the program starts running
void main() {
  // Create a new Person object named p1 with specific details
  Person p1 = Person("Faith", "Female", 21);
  
  // Call the showData method to display the details of p1
  p1.showData();
}

// Define a class called Person
class Person {
  // Properties of the Person class to hold data
  String? name; // The person's name
  String? sex; // The person's gender
  int? age; // The person's age

  // Constructor: a special method to create a new Person object
  Person(String name, String sex, int age) {
    this.name = name; // Set the name property to the given name
    this.sex = sex; // Set the sex property to the given sex
    this.age = age; // Set the age property to the given age
  }

  // Method: a function that shows the person's information
  void showData() {
    print("Name: $name"); // Print the person's name
    print("Sex: $sex"); // Print the person's gender
    print("Age: $age"); // Print the person's age
  }
}
