import 'animal.dart';

class Reptile extends Animal {
  String? scaleColor; // Property to store the color of the reptile's scales.
  bool? isColdBlooded; // Property to indicate if the reptile is cold-blooded.

  // Constructor for the Reptile class.
  Reptile({
    required String? name,
    required String? gender,
    required int? age,
    required String? activityLevel,
    String? scaleColor, // Optional parameter for scale color.
    bool?
        isColdBlooded, // Optional parameter to indicate if the reptile is cold-blooded.
  }) : super(
          name: name,
          gender: gender,
          age: age,
          activityLevel: activityLevel,
        ) {
    this.scaleColor =
        scaleColor; // Initialize the scaleColor property with the provided value (can be null).
    this.isColdBlooded =
        isColdBlooded; // Initialize the isColdBlooded property with the provided value (can be null).
  }

  // Method to bask in the sun
  void bask() {
    print('$name is basking in the sun.');
  }

  // Method to shed skin
  void shedSkin() {
    print('$name is shedding its skin.');
  }

  // Method to determine if the reptile is venomous
  bool isVenomous() {
    // Assuming venomous reptiles have colored scales, return true if scale color is not null.
    return scaleColor != null;
  }

  // Method to display information about the reptile
  void displayInfo() {
    print('$name is a $gender $age-year-old reptile with $scaleColor scales.');
    if (isColdBlooded == true) {
      print('$name is cold-blooded.');
    } else {
      print('$name is not cold-blooded.');
    }
  }

  // Override the 'describeAnimal' method from the parent class.
  @override
  void describeAnimal() {
    super
        .describeAnimal(); // Call the 'describeAnimal' method from the parent class.
    print("This is a reptile."); // Additional behavior for describing a mammal.
  }
}
