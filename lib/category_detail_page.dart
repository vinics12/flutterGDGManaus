import 'package:flutter/material.dart';
import 'category.dart';
import 'package:flutter/cupertino.dart';
import 'unit.dart';

final _padding = new EdgeInsets.all(16.0);

class CategoryDetailPage extends StatefulWidget {
  final Category category;

  CategoryDetailPage({this.category});

  @override
  State<StatefulWidget> createState() => new CategoryDetailState();
}

class CategoryDetailState extends State<CategoryDetailPage> {
  var _count = 0;
  double inputValue;
  Unit inputUnit;
  String outputValue;
  Unit outputUnit;

  @override
  initState() {
    super.initState();
    _setDefaultItems();
  }

  void _setDefaultItems() {
    this.inputValue = 0.0;
    this.inputUnit = widget.category.units[0];
    this.outputUnit = widget.category.units[1];
    this.outputValue = '';
  }

  void _onTap() {
    setState(() {
      _count++;
    });
  }

  void _inputUnitChange(var unitName) {
    setState(() {
      this.inputUnit = widget.category.units.firstWhere(
            (Unit unit) => unit.name == unitName,
        orElse: null,
      );
    });
  }

  void _outputUnitChange(var unitName) {
    setState(() {
      this.outputUnit = widget.category.units.firstWhere(
            (Unit unit) => unit.name == unitName,
        orElse: null,
      );
    });
  }

  Widget _createDropdown(String currentValue, ValueChanged<dynamic> onChanged) {
    var optionsList = <DropdownMenuItem>[];
    for (var unit in widget.category.units) {
      optionsList.add(
        new DropdownMenuItem(
          value: unit.name,
          child: new Text("${unit.name}"),
        ),
      );
    }

    return new Container(
      margin: new EdgeInsets.all(8.0),
      decoration: new BoxDecoration(
          border: new Border.all(
            color: Colors.grey[400],
            width: 1.0,
          )),
      padding: new EdgeInsets.all(8.0),
      child: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[50],
        ),
        child: new DropdownButtonHideUnderline(
          child: new ButtonTheme(
            child: new DropdownButton(
              style: Theme.of(context).textTheme.title,
              value: currentValue,
              items: optionsList,
              onChanged: onChanged,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var input = new Container(
        child:new  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration:new  InputDecoration(
                  labelText: "Input",
                  labelStyle: Theme.of(context).textTheme.display1,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(0.0),
                  )),
            ),
            _createDropdown(inputUnit.name, _inputUnitChange)
          ],
        ));

    var arrows = new RotatedBox(
      quarterTurns: 1,
      child: new Icon(
        Icons.compare_arrows,
        size: 40.0,
      ),
    );

    var output = new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new InputDecorator(
            child: new Text(
              outputValue,
              style: Theme.of(context).textTheme.display1,
            ),
            decoration: new InputDecoration(
              labelText: 'Output',
              labelStyle: Theme.of(context).textTheme.display1,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(0.0),
              ),
            ),
          ),
          _createDropdown(outputUnit.name, _outputUnitChange)
        ],
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title:new  Text(widget.category.name),
        backgroundColor: widget.category.color,
      ),
      body: new ListView(
        padding: _padding,
        children: [
          input,
          arrows,
          output,
        ],
      ),
    );
  }
}