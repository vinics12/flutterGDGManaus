import 'package:flutter/material.dart';
import 'package:hello_world/category.dart';

final _padding = new EdgeInsets.all(16.0);

class CategoryDetailPage extends StatefulWidget {
  Category category;

  CategoryDetailPage(this.category);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: category.color,
        title: new Text(category.name),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() => new CategoryDetailPageState();
}

class CategoryDetailPageState extends State<CategoryDetailPage> {


  Widget createDropDown() {
    return new Container(
      margin: _padding,
      child: new DropdownButtonHideUnderline(
          child: new ButtonTheme(
            child: new DropdownButton(items: [
              new DropdownMenuItem(child: new Text('unit1')),
              new DropdownMenuItem(child: new Text('unit2'))
            ], onChanged: null),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    var input = new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                labelText: "input",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(0.0)),
                labelStyle: Theme.of(context).textTheme.body2),
          ),
          createDropDown()
        ],
      ),
    );

    var arrows = new RotatedBox(
      quarterTurns: 1,
      child: new Icon(
        Icons.compare_arrows,
        size: 40.0,
      ),
    );

    var output = new Container(
      margin: new EdgeInsets.only(top: 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new InputDecorator(
            decoration: new InputDecoration(
                labelText: "input",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(0.0)),
                labelStyle: Theme.of(context).textTheme.body2),
          ),
          createDropDown()
        ],
      ),
    );

    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: widget.category.color,
          title: new Text(widget.category.name),
        ),
        body: new ListView(
          padding: _padding,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[input, arrows, output],
            )
          ],
        ));
  }
}
