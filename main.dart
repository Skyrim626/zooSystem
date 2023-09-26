import 'animal.dart';
import 'mammal.dart';
import 'reptile.dart';
import 'bird.dart';
import 'zoo.dart';

/**
 * Imagine you are building a Zoo System in Dart. 
 * In this system, you need to model various animals, their characteristics, 
 * and how they interact within the zoo.
 */
void main() {
  Zoo sampleZooName = Zoo(name: "Sample Zoo name");

  // Prints the name of the zoo
  /* print("The name of the zoo is: ${sampleZooName.getZooName}"); */

  // Adds animals to the Zoo
  sampleZooName.addAnimals(animals);

  // Prints the Animals that has type Reptile
  /* sampleZooName.displayAllAnimalsName("Reptile"); */

  // Prints the Animals that has type Mammal
  /* sampleZooName.displayAllAnimalsName("Mammal"); */

  // Prints the Animals that has type Bird
  /* sampleZooName.displayAllAnimalsName("Bird"); */

  // Prints all the names of the Animal and its details
  /* sampleZooName.displayAllAnimalInfo(); */
}

// Global Variable
// Initialize a list of Animals objects directly.
List<Animal> animals = [
  Mammal(
    name: 'Mammal 1',
    gender: 'Male',
    age: 6,
    activityLevel: 'Diurnal',
    furColor: 'Brown',
    hasTail: true,
  ),
  Mammal(
    name: 'Mammal 2',
    gender: 'Female',
    age: 7,
    activityLevel: 'Nocturnal',
    furColor: 'Gray',
    hasTail: true,
  ),
  Mammal(
    name: 'Mammal 3',
    gender: 'Male',
    age: 8,
    activityLevel: 'Diurnal',
    furColor: 'Black',
    hasTail: false,
  ),
  Mammal(
    name: 'Mammal 4',
    gender: 'Female',
    age: 9,
    activityLevel: 'Nocturnal',
    furColor: 'White',
    hasTail: true,
  ),
  Mammal(
    name: 'Mammal 5',
    gender: 'Male',
    age: 10,
    activityLevel: 'Diurnal',
    furColor: 'Tan',
    hasTail: true,
  ),
  Reptile(
    name: 'Reptile 1',
    gender: 'Male',
    age: 3,
    activityLevel: 'Nocturnal',
    scaleColor: 'Green',
    isColdBlooded: true,
  ),
  Reptile(
    name: 'Reptile 2',
    gender: 'Female',
    age: 4,
    activityLevel: 'Diurnal',
    scaleColor: 'Brown',
    isColdBlooded: true,
  ),
  Reptile(
    name: 'Reptile 3',
    gender: 'Male',
    age: 5,
    activityLevel: 'Nocturnal',
    scaleColor: 'Gray',
    isColdBlooded: true,
  ),
  Bird(
    name: 'Bird 1',
    gender: 'Male',
    age: 2,
    activityLevel: 'Diurnal',
    featherColor: 'Red',
    canFly: true,
  ),
  Bird(
    name: 'Bird 2',
    gender: 'Female',
    age: 3,
    activityLevel: 'Diurnal',
    featherColor: 'Blue',
    canFly: true,
  ),
  Bird(
    name: 'Bird 3',
    gender: 'Male',
    age: 4,
    activityLevel: 'Diurnal',
    featherColor: 'Yellow',
    canFly: false,
  ),
  Bird(
    name: 'Bird 4',
    gender: 'Female',
    age: 5,
    activityLevel: 'Diurnal',
    featherColor: 'Green',
    canFly: true,
  ),
];
