import 'package:flutter/material.dart';
import 'package:hello_world/category.dart';

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
  State<StatefulWidget> createState() => new  CategoryDetailPageState();
}

class CategoryDetailPageState extends State<CategoryDetailPage> {
  var _count = 0;
  var _toggled = false;

  void _onTap(){
    setState((){
      _count++;
    });
  }

  void _onToggle(toggle){
    setState((){
      _toggled = toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: widget.category.color,
        title: new Text(widget.category.name),
      ),
      body: new Container(
        child: new Center(
          child: new Column( children: <Widget>[
            new GestureDetector(child: new Text("$_count teste", style: Theme.of(context).textTheme.title,), onTap: ()=>this._onTap(),),
            new Switch(value: _toggled, onChanged: (toggle)=> this._onToggle(toggle))
          ],),
        ),
      )
    );
  }
}
