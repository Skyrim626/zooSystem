/**
 * The Animal class is an abstract, it cannot be instantiated. 
 * It is used to define the behavior of a class that can be inherited 
 * by other classes. An abstract class is declared using the keyword abstract.
 */
abstract class Animal {
  /**
  * Class variables and its meaning:
  * name - Represents the name of the animal
  * age - Represents the age of the animal
  * color - Represents the color of the animal
  * gender - Represents the gender of the animal (male, female, other)
  * diet - Represents the animal's dietary habits (herbivore, carnivore, omnivore)
  * lifespan - Represents the average lifespan of the animal (private variable)
  * activityLevel - Represent how active the animal is during the day or night (diurnal, nocturnal, crepuscular). (private variable)
   */
  String? name, color, gender, _diet, _activityLevel;
  double? _lifespan;
  int? age;

  /**
   * 
   * Animal Constructor:
   * A constructor is a special method used to initialize an object. 
   * It is called automatically when an object is created, and it can be 
   * used to set the initial values for the object’s properties. 
   * 
   * For example, you want to create an Animal class object and 
   * sets the initial values for the name, gender, age, and activityLevel properties:
   * 
   * Animal sampleAnimal = Bird(name: "Kiri", gender: "Male", age: 12, activityLevel: "nocturnal")
   * 
   * 
   * In the animal abstract class there are additional details in the 
   * constructor: Named Parameters, required and this.
   * 
   * What is Named Parameters?
   * 
   * Named Parameters: Named parameters are identified by a name and are 
   * enclosed in curly braces {}. 
   * They allow you to pass values to a function by specifying the parameter 
   * name along with the value, which can be in any order. 
   * Example is the animal constructor it has named parameters.
   * 
   * What is "this" keyword?
   * The this keyword refers to the current instance.
   * Note: Use this only when there is a name conflict. Otherwise, 
   * Dart style omits the this.
   * 
   * 
   * What is required?
   * In Dart, required is a keyword that is often used as an optional 
   * annotation in constructor parameters to indicate that a particular parameter
   * must be provided with a non-null value (ex. String? => ?) when creating an instance of the 
   * class. It helps ensure that the required data is not omitted during object 
   * creation and enforces stricter type safety.
   * 
   *  
   */
  Animal(
      {required String? this.name,
      required String? this.gender,
      required int? this.age,
      required String? activityLevel}) {
    this._activityLevel = activityLevel;
  }

  /**
   * Setter is used to set the value of a property. It is mostly used to update 
   * a private property’s value. Setter provide explicit write access 
   * to an object properties.
   * 
   * setLifeSpan(double? lifeSpan) - A method that sets the lifespan of the animal
   */
  set setLifeSpan(double? lifespan) {
    this._lifespan = lifespan;
  }

  /**
 * Getter is used to retrieve the value of a property. It provides read-only access
 * to the object's properties.
 * 
 * getLifeSpan: A getter method that retrieves the current lifespan of the animal.
 */
  get getLifeSpan {
    return this._lifespan;
  }

  /**
   * Setter is used to set the value of a property. It is mostly used to update 
   * a private property’s value. Setter provide explicit write access to an 
   * object properties.
   * 
   * setDiet(String? diet) - A method that sets the diet of the animal
   */
  set setDiet(String? diet) {
    this._diet = diet;
  }

  /**
   * Setter is used to set the value of a property. It is mostly used to update 
   * a private property’s value. Setter provide explicit write access to an 
   * object properties.
   * 
   * setActivityLevel(String? activityLevel) - A method that sets the activityLevel of the animal
   */
  set setActivityLevel(String? activityLevel) {
    this._activityLevel = activityLevel;
  }

  /**
 * Getter is used to retrieve the value of a property. It provides read-only access
 * to the object's properties.
 * 
 * getActivityLevel: A getter method that retrieves the current activity level of the animal.
 */
  get getActivityLevel {
    return this._activityLevel;
  }

  /**
   * In object-oriented programming (OOP), a method is a programmed procedure 
   * that is defined as part of a class and is available to any object 
   * instantiated from that class. Each object can call the method, which 
   * runs within the context of the object that calls it.
   * 
   * NOTE:
   * When a class derives from another class. The child class will inherit all 
   * the public and protected properties and methods from the parent class. 
   * In addition, it can have its own properties and methods. An inherited 
   * class is defined by using the extends keyword.
   * (SEE BIRD, MAMMAL, AND REPTILE CLASSES)
   * 
   */

  // Function without parameters
  void eat() {
    print('$name is eating.');
  }

  // Function with parameters
  void sleep(int hours) {
    print('$name is sleeping for $hours hours.');
  }

  // Function with named parameters
  void move({String direction = 'forward', int distance = 10}) {
    print('$name is moving $direction for $distance meters.');
  }

  /**
   * Function with required and optional parameters
   * 
   * {int? volume}: This is an optional parameter enclosed in curly braces {}. 
   * It expects an integer argument representing the volume of the sound. 
   * The int? indicates that it can be either an integer or null.
   */
  void makeSound(String sound, {int? volume}) {
    if (volume != null) {
      print('$name makes a $sound sound at volume $volume.');
    } else {
      print('$name makes a $sound sound.');
    }
  }

  // Function with a private variable
  void describeAnimal() {
    print('$name is a $color $gender animal.');
    if (_diet != null) {
      print('$name is a $_diet.');
    }
    if (_activityLevel != null) {
      print('$name is $_activityLevel.');
    }
    if (_lifespan != null) {
      print('$name has an average lifespan of $_lifespan years.');
    }
  }
}
