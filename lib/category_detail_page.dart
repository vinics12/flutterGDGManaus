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

  void _onTap(){
    setState((){
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: widget.category.color,
        title: new Text(widget.category.name),
      ),
      body: new GestureDetector(
        onTap: ()=> _onTap(),
        child: new Container(
          child: new Center(
            child: new Text("$_count teste", style: Theme.of(context).textTheme.title,),
          ),
        ),
      ),
    );
  }
}
