import 'package:flutter/material.dart';

import '../screen/category_products_screen.dart';

class CategoryItem extends StatelessWidget {
  final int id;
  final String categoryName;
  final Color color;

  CategoryItem(this.id, this.categoryName, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryProductsScreen.routeName,
        arguments: {
          'categoryId': id,
          'categoryName': categoryName
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          categoryName,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
