import 'package:flutter/cupertino.dart';

enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final Affordability affordability;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isSpicey;
  final bool isVegan;
  final bool isVegetarian;
  final bool isSweet;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.affordability,
    required this.complexity,
    required this.imageUrl,
    required this.duration,
    required this.ingredients,
    required this.steps,
    required this.isSpicey,
    required this.isVegan,
    required this.isVegetarian,
    required this.isSweet,
  });

  String complexityText() {
    if (complexity == Complexity.challenging) {
      return 'Challenging';
    } else if (complexity == Complexity.hard) {
      return 'Hard';
    }
    return 'Simple';
  }
}
