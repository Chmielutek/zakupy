import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  MyAppBar(this.title) : preferredSize = Size.fromHeight(kToolbarHeight), super();

  @override
  final Size preferredSize; // default is 56.0

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Colors.blue, Colors.lightGreenAccent]),
        ),
      ),
      title: Text(widget.title),
      actions: [
        // TODO dodać dodawanie listy zakupów bądź produktu
      ],
      backgroundColor: Theme.of(context).backgroundColor,
      elevation: 0,
    );
  }
}
