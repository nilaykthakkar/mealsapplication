import 'package:flutter/material.dart';
import './category_card.dart';
import './dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals Application'),
      ),
      body: GridView(
        children: dummyCategories
            .map(
              (data) => CategoryCard(
                title: data.title,
                color: data.color,
                id: data.id,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
        padding: const EdgeInsets.all(15),
      ),
    );
  }
}
