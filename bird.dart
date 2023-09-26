import 'animal.dart';

// Define a child class named Bird that extends the Animal class.
class Bird extends Animal {
  String? featherColor; // Property to store the color of the bird's feathers.
  bool? canFly; // Property to indicate whether the bird can fly.

  Bird({
    required String? name,
    required String? gender,
    required int? age,
    required String? activityLevel,
    String? featherColor,
    /** Optional parameter for feather color. */
    bool? canFly,
    /** Optional parameter to indicate if the bird can fly. */
  }) : super(
          name: name,
          gender: gender,
          age: age,
          activityLevel: activityLevel,
        ) {
    // Inside the constructor:
    /** 1. We initialize the 'featherColor' property of the Bird class with 
     * the value provided or null if not provided. */
    this.featherColor = featherColor;
    /**
     * 2. We initialize the 'canFly' property of the Bird class with the 
     * value provided or null if not provided. 
     */
    this.canFly = canFly;
  }

  // Additional constructor with a default feather color
  Bird.withDefaultFeatherColor({
    required String? name,
    required String? gender,
    required int? age,
    required String? activityLevel,
    bool? canFly,
  }) : super(
          name: name,
          gender: gender,
          age: age,
          activityLevel: activityLevel,
        ) {
    // Inside the constructor:
    // Set the default feather color to "unknown"
    this.featherColor =
        "unknown"; // Initialize 'featherColor' property with "unknown".
    this.canFly =
        canFly; // Initialize 'canFly' property with the provided value.
  }

  // Method to make a bird sing
  void sing(String song) {
    // Print a message indicating that the bird is singing the specified song.
    print('$name is singing the song: $song');
  }

  // Method to check if a bird is migratory
  bool isMigratory() {
    // Check if the bird can fly (assuming flying birds are migratory).
    return canFly == true; // Returns true if the bird can fly, otherwise false.
  }

  // Method to display information about the bird
  void displayInfo() {
    // Print information about the bird's name, gender, age, and feather color.
    print('$name is a $gender $age-year-old bird with $featherColor feathers.');

    // Check if the bird can fly and display relevant information.
    if (canFly == true) {
      print('$name is capable of flying.');
    } else {
      print('$name is not capable of flying.');
    }
  }

  // Override the 'describeAnimal' method from the parent class.
  @override
  void describeAnimal() {
    super
        .describeAnimal(); // Call the 'describeAnimal' method from the parent class.
    print("This is a bird."); // Additional behavior for describing a mammal.
  }
}
