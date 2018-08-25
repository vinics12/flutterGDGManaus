import 'package:flutter/material.dart';
import 'categories_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  var _colors = new ColorSwatch(
    0xFF0000FF,
    {
      50: new Color(0xFFFF0000),
      100:new  Color(0xFFFF0000),
      150: new Color(0xFFFF0000),
      200:new  Color(0xFFFF0000),
    },
  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Unit Converter',
        home: new CategoriesPage(),
        theme: new ThemeData(
          primaryColor: this._colors[200],
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: new Color.fromRGBO(0Xff,0, 0, 1.0),
            displayColor: Colors.green[500],
          ),
        ));
  }
}