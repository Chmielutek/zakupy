import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakupy/screen/add_shopping_list_screen.dart';
import 'package:zakupy/screen/populate_shopping_list_screen.dart';

import 'screen/category_products_screen.dart';
import 'screen/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale('en', '');

  String getLocaleLanguageTag() {
    return _locale.languageCode;
  }

  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Lato',
          primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      locale: _locale,
      home: TabsScreen(),
      routes: {
        TabsScreen.routeName: (ctx) => TabsScreen(),
        AddShoppingListScreen.routeName: (ctx) => AddShoppingListScreen(),
        PopulateShoppingListScreen.routeName: (ctx) => PopulateShoppingListScreen(),
        CategoryProductsScreen.routeName: (ctx) => CategoryProductsScreen()
      },
    );
  }
}
