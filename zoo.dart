import 'animal.dart'; // Import the Animal class and its subclasses (Mammal, Reptile, Bird).

class Zoo {
  String? _name; // Declare a private variable to store the name of the zoo.

  List<Animal> _animals = []; // Declare a private list to store animal objects.

  // Constructor for the Zoo class.
  Zoo({required String? name}) {
    this._name = name; // Initialize the zoo's name with the provided value.
  }

  // Getter method to get the name of the zoo.
  get getZooName {
    return this._name; // Return the name of the zoo.
  }

  // Method to add an animal to the zoo.
  void addAnimal(Animal animal) {
    if (_isValidAnimalType(animal)) {
      // Check if the animal type is valid.
      this._animals.add(animal); // Add the animal to the list of animals.
    }
  }

  // Method to display information about all animals in the zoo.
  void displayAllAnimalInfo() {
    for (var i = 0; i < this._animals.length; i++) {
      this
          ._animals[i]
          .describeAnimal(); // Call the describeAnimal method for each animal.
    }
  }

  // Method to display the names of animals of a specific type.
  void displayAllAnimalsName(String? animalType) {
    if (animalType == "Mammal" ||
        animalType == "Bird" ||
        animalType == "Reptile") {
      for (var i = 0; i < this._animals.length; i++) {
        if (this._animals[i].runtimeType.toString() == animalType) {
          print(
              "${this._animals[i].name}"); // Print the name of the matching animals.
        }
      }
    } else {
      print(
          "Invalid Animal Type."); // Print a message for an invalid animal type.
    }
  }

  // Method to add a list of animals to the zoo.
  void addAnimals(List<Animal> animals) {
    for (var i = 0; i < animals.length; i++) {
      if (_isValidAnimalType(animals[i])) {
        // Check if the animal type is valid.
        this._animals.add(animals[i]); // Add the animal to the list of animals.
      } else {
        print(
            "The animal type is not valid in the zoo."); // Print a message for an invalid animal type.
      }
    }
  }

  // Checks if the animal type is valid in zoo requirements.
  bool _isValidAnimalType(Animal animal) {
    String animalType = animal.runtimeType.toString();
    if (animalType == "Mammal" ||
        animalType == "Reptile" ||
        animalType == "Bird") {
      return true; // Return true if the animal type is valid.
    } else {
      return false; // Return false if the animal type is invalid.
    }
  }

  /** 
   * 
   * EXERCISE 1: ADD A METHOD THAT DISPLAYS THE THE TOTAL AMOUNT OF ANIMALS
   * EXERCISE 2: ADD A METHOD THAT DISPLAYS THE THE TOTAL AMOUNT OF ANIMALS IN A SPECIFIC TYPE
   * 
   */
}
