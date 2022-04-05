import 'package:flutter/material.dart';
import 'package:mealsapplication/model/meal.dart';

class MealCard extends StatelessWidget {
  const MealCard({Key? key, required meal})
      : _mealItem = meal,
        super(key: key);

  final Meal _mealItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                child: Image.network(_mealItem.imageUrl),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.all(12),
                  color: Colors.black45,
                  child: Text(
                    _mealItem.title,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.lock_clock),
                    SizedBox(width: 5),
                    Text(
                      _mealItem.duration.toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.business_center_sharp),
                    SizedBox(width: 5),
                    Text(_mealItem.complexityText())
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money),
                    SizedBox(width: 5),
                    Text('Affordable'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
