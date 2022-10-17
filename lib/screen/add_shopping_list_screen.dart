import 'package:flutter/material.dart';

import '../widget/my_app_bar.dart';
import 'populate_shopping_list_screen.dart';

class AddShoppingListScreen extends StatefulWidget {
  static String routeName = '/add-list';

  @override
  State<AddShoppingListScreen> createState() => _AddShoppingListScreenState();
}

class _AddShoppingListScreenState extends State<AddShoppingListScreen> {
  final shoppingListNameController = TextEditingController();


  @override
  void dispose() {
    shoppingListNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Dodaj listę zakupów'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: TextField(
                controller: shoppingListNameController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter shopping list name'
                ),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed(PopulateShoppingListScreen.routeName, arguments: {'name': shoppingListNameController.text});
                },
                icon: Icon(Icons.arrow_forward),
                label: Text('Dalej'),
            )
          ],
        ),
      ),
    );
  }
}
