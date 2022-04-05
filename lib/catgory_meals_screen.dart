import 'package:flutter/material.dart';
import 'package:mealsapplication/meal_item.dart';
import 'package:mealsapplication/model/meal.dart';
import 'dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = '/category-meals-screens';
  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> result =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    String? _id;
    String? _title;    
    _id = result['id'];
    _title = result['title'];
    List<Meal> meals=dummy_meals.where((meal) => meal.categories.contains(_id)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(_title!),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return MealCard(meal: meals[index]);
        },
      ),
    );
  }
}
