import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:secondapp/category_device.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem(
    this.id,
    this.title,
    this.images,
  );

  final String title;
  final Image images;
  final String id;

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/categoriesdevice', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.green,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Raleway'),
            ),
            Container(margin: EdgeInsets.all(20), height: 70, child: images),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ],
            color: Colors.white),
      ),
    );
  }
}
