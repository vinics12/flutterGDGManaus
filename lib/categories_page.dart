import 'package:flutter/material.dart';
import 'category.dart';
import 'category_widget.dart';
import 'unit.dart';

final _color = Colors.greenAccent;

List<Unit> _generateUnit(String name) {
  return new List.generate(4, (int i) {
    var pos = i+1;
    return new Unit(
      name: '$name - $pos',
      conversion: pos.toDouble(),
    );
  });
}

class CategoriesPage extends StatelessWidget {
  final _categoryList = <Category>[
    new Category(
      name: 'Length',
      color: Colors.red,
      icon: Icons.ac_unit,
      units: _generateUnit("Length"),
    ),
    new Category(
      name: 'Area',
      color: Colors.green,
      icon: Icons.cake,
      units: _generateUnit("Area"),
    ),
    new Category(
      name: 'Volume',
      color: Colors.blue,
      icon: Icons.compare_arrows,
      units: _generateUnit("Volume"),
    ),
    new Category(
      name: 'Energy',
      color: Colors.purple,
      icon: Icons.directions,
      units: _generateUnit("Energy"),
    ),
    new Category(
      name: 'Mass',
      color: Colors.yellow,
      icon: Icons.directions,
      units: _generateUnit("Mass"),
    ),
    new Category(
      name: 'Currency',
      color: Colors.grey,
      icon: Icons.directions,
      units: _generateUnit("Currency"),
    ),
    new Category(
      name: 'Digital Storage',
      color: Colors.purple,
      icon: Icons.directions,
      units: _generateUnit("Digital Storage"),
    ),
    new Category(
      name: 'Time',
      color: Colors.blue,
      icon: Icons.directions,
      units: _generateUnit("Time"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: _color,
        title: new Text("Unit Converter"),
      ),
      body: new Container(
        color: _color,
        child: new ListView.builder(
          itemBuilder: (BuildContext context, int i) {
            return new CategoryWidget(category: _categoryList[i]);
          },
          itemCount: _categoryList.length,
        ),
      ),
    );
  }
}