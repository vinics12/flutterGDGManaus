import 'package:flutter/material.dart';
import 'package:hello_world/category.dart';
import 'package:hello_world/category_widget.dart';
import 'package:hello_world/unit.dart';

final _color = Colors.greenAccent;

class CategoriesPage extends StatelessWidget {
  final _categories = <Category>[
    new Category(name: 'Length', color: Colors.yellow),
    new Category(name: 'Area', color: Colors.blue),
    new Category(name: 'Volume', color: Colors.green),
    new Category(name: 'Area', color: Colors.orange),
    new Category(name: 'Time', color: Colors.purple),
    new Category(name: 'Digital Storage', color: Colors.red),
    new Category(name: 'Energy', color: Colors.blueGrey),
    new Category(name: 'Currency', color: Colors.blueGrey),
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: _color,
        title: new Text("Unit Converter"),
      ),
      body: new Container(child: new ListView.builder(
        itemBuilder: (BuildContext context, int i) {
          return new CategoryWidget(category: _categories[i]);
        },
        itemCount: _categories.length,
      ),)
    );
  }
}
