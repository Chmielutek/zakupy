import 'package:flutter/material.dart';

import '../dataaccess/categories_data.dart';
import '../widget/category_item.dart';

class ProductCategoriesScreen extends StatelessWidget {
  const ProductCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
        ),
        children: DUMMY_CATEGORIES
            .map((category) => CategoryItem(category.id, category.categoryName, category.color))
            .toList(),
      ),
    );
  }
}
