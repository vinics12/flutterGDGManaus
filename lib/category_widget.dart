import 'package:flutter/material.dart';
import 'category.dart';
import 'category_detail_page.dart';

class CategoryWidget extends StatelessWidget {
  Category category;

  CategoryWidget({this.category});

  _goToDetail(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
    Navigator.of(context).push(
      new MaterialPageRoute<Null>(
        builder: (BuildContext context) => new CategoryDetailPage(
          category: this.category,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Container(
        height: 90.0,
        child: new InkWell(
          borderRadius: new BorderRadius.circular(8.0),
          highlightColor: category.color,
          splashColor: category.color,
          onTap: () => _goToDetail(context),
          child: new Row(
            children: [
              new Icon(
                Icons.cake,
                size: 60.0,
              ),
              new Center(
                child: new Text(category.name,
                    style: new TextStyle(
                      fontSize: 22.0,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
