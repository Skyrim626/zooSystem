import 'animal.dart';

// Define a child class named Mammal that extends the Animal class.
class Mammal extends Animal {
  String? furColor;
  bool? hasTail;

  // Constructor for the Mammal class.
  // It takes several parameters:
  // - required String? name: The name of the mammal (required parameter).
  // - required String? gender: The gender of the mammal (required parameter).
  // - required int? age: The age of the mammal (required parameter).
  // - required String? activityLevel: The activity level of the mammal (required parameter).
  // - String? furColor: The color of the mammal's fur (optional parameter).
  // - bool? hasTail: Indicates whether the mammal has a tail (optional parameter).
  Mammal(
      {required String? name,
      required String? gender,
      required int? age,
      required String? activityLevel,
      String? furColor /**Optional parameter for fur color. */,
      bool? hasTail /** Optional parameter for tail presence. */})
      : super(
            name: name,
            gender: gender,
            age: age,
            activityLevel: activityLevel) {
    /**
     * (From the above)
     * Call the constructor of the superclass (Animal) using the 'super' keyword 
     * and pass the required parameters from the Mammal constructor.
     */

    // Initialize the Mammal-specific properties using the provided parameters.
    // 'this.furColor' and 'this.hasTail' refer to the properties in the Mammal class,
    // while 'furColor' and 'hasTail' without 'this' refer to the parameters passed
    // to the constructor.
    this.furColor = furColor;
    this.hasTail = hasTail;
  }

  // Override the 'eat' method from the parent class Animal.
  @override
  void eat() {
    super.eat(); // Call the 'eat' method from the parent class.
    print(
        "$name is eating like a mammal."); // Additional behavior specific to Mammal.
  }

  /**
   * Override the 'sleep' method from the parent class Animal.
   * This method takes an 'hours' parameter.
   */
  @override
  void sleep(int hours) {
    super.sleep(
        hours); // Call the 'sleep' method from the parent class, passing 'hours'.
    print(
        '$name is sleeping like a mammal.'); // Additional behavior specific to Mammal.
  }

  // Override the 'move' method from the parent class.
  @override
  void move({String direction = 'forward', int distance = 10}) {
    super.move(
        direction: direction,
        distance: distance); // Call the 'move' method from the parent class.
    print(
        "$name is moves $direction like a mammal"); // Additional behavior for moving.
  }

  /**
 * Override the 'makeSound' method from the parent class.
 * 
 * {int? volume}: This is an optional parameter enclosed in curly braces {}. 
 * It expects an integer argument representing the volume of the sound. 
 * The int? indicates that it can be either an integer or null.
 */
  @override
  void makeSound(String sound, {int? volume}) {
    super.makeSound(sound,
        volume: volume); // Call the 'makeSound' method from the parent class.
    print(
        "$name make $sound like a mammal."); // Additional behavior for making a sound.
  }

  // Override the 'describeAnimal' method from the parent class.
  @override
  void describeAnimal() {
    super
        .describeAnimal(); // Call the 'describeAnimal' method from the parent class.
    print("This is a mammal."); // Additional behavior for describing a mammal.
  }

  // Additional method specific to Mammals
  void groom() {
    print(
        "$name is grooming itself."); // Behavior related to grooming for mammals.
  }

  // Additional method specific to Mammals
  void giveBirth() {
    print(
        "$name is giving birth to offspring."); // Behavior related to giving birth for mammals.
  }
}
