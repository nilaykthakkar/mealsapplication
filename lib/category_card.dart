import 'package:flutter/material.dart';
import 'catgory_meals_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required title, required color, required id})
      : _title = title,
        _color = color,
        _id = id,
        super(key: key);

  final String _title;
  final Color _color;
  final String _id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) {
        //       return CategoryMealsScreen(
        //         id: _id,
        //         title: _title,
        //       );
        //     },
        //   ),
        // );
        Navigator.of(context).pushNamed(CategoryMealsScreen.routeName,
            arguments: {'title': _title, 'id': _id});
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          _title,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: _color,
            gradient: LinearGradient(
              colors: [_color.withOpacity(0.6), _color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
      ),
    );
  }
}
