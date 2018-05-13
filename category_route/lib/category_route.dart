import 'package:flutter/material.dart';
import 'category.dart';

final _backgroundColor = Colors.green[100];
class CategoryRoute extends StatelessWidget{

  const CategoryRoute();

  static final _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static final _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  
  Widget _buildCategoryWidgets(List<Widget> categories){
    return new ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(new Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.adb,
      ));
    }

    final listView = new Container(
      color: _backgroundColor,
      padding: new EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(categories),
    );

    final appBar = new AppBar(
      elevation: 0.0,
      title: new Text(
        'Category Route',
        style: new TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    return new Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}