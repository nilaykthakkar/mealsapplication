import 'package:flutter/material.dart';
import 'package:mealsapplication/category_screen.dart';
import 'package:mealsapplication/catgory_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.bold,
                fontFamily: 'Opensans',
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CategoryScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
      },
    );
  }
}
