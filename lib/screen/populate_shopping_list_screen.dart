import 'package:flutter/material.dart';
import 'package:zakupy/widget/my_app_bar.dart';

class PopulateShoppingListScreen extends StatelessWidget {
  static String routeName = '/populate-list';

  @override
  Widget build(BuildContext context) {
    final routeArguments = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final shoppingListName = routeArguments['name'];
    return Scaffold(
      appBar: MyAppBar('Dodaj zakupy do: $shoppingListName'),
      body: Center(
        child: Text('Adding some products'),
      ),
    );
  }
}
