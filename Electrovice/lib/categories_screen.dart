import 'package:flutter/material.dart';
import 'package:secondapp/category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: GridView(
        padding: EdgeInsets.all(5),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(
                  catData.id,
                  catData.title,
                  catData.images,
                ))
            .toList(),
      ),
    );
  }
}
