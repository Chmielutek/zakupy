import 'package:flutter/material.dart';
import 'package:zakupy/screen/product_categories_screen.dart';
import 'package:zakupy/screen/shopping_list_screen.dart';

import '../widget/my_app_bar.dart';

class TabsScreen extends StatefulWidget {
  static String routeName = '/tabs';

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;


  @override
  void initState() {
    _pages = [
      {
        'page': ShoppingListScreen(),
        'title': 'Shopping lists'
      },
      {
        'page': ProductCategoriesScreen(),
        'title': 'Products'
      }
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar('Zakupy'),
      // drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget?,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: _selectPage,
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).focusColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Listy zakupów'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
              label: 'Produkty'
          )
        ],
      ),
    );
  }
}

