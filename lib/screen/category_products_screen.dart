import 'package:flutter/material.dart';
import 'package:zakupy/model/product.dart';
import 'package:zakupy/widget/my_app_bar.dart';

import '../dataaccess/products_data.dart';

class CategoryProductsScreen extends StatefulWidget {
  static const String routeName = '/category-products';

  @override
  State<CategoryProductsScreen> createState() => _CategoryProductsScreenState();
}

class _CategoryProductsScreenState extends State<CategoryProductsScreen> {
  late final categoryId;
  late final categoryName;
  late final List<Product> categoryProducts;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }


  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      var routeArguments = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
      print('routeArguments: $routeArguments');
      categoryId = routeArguments['categoryId'];
      categoryName = routeArguments['categoryName'];
      print('categoryId: $categoryId');
      categoryProducts = PRODUCTS.where((product) => product.categoryId == categoryId).toList();
      print('categoryProducts: $categoryProducts');
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(categoryName),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 30,
                width: double.infinity,
                child: Text(categoryProducts[index].productName),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.lightGreenAccent
                ),
              ),
            );
          },
          itemCount: categoryProducts.length,
        ),
      ),
    );
  }
}
