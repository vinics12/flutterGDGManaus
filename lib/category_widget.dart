import 'package:flutter/material.dart';
import 'package:hello_world/category.dart';
import 'package:hello_world/category_detail_page.dart';

class CategoryWidget extends StatelessWidget {
  Category category;

  CategoryWidget({this.category});

  _goToDetail(BuildContext context){
    if(Navigator.of(context).canPop()){
      Navigator.of(context).pop();
    }
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new CategoryDetailPage(category)));
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 90.0,
        child: new InkWell(
          splashColor: category.color,
          borderRadius: new BorderRadius.circular(8.0),
          onTap: ()=> _goToDetail(context),
          child: new Row(
            children: <Widget>[
              new Icon(
                category.icon,
                size: 60.0,
              ),
              new Text(category.name)
            ],
          ),
        ));
  }
}
