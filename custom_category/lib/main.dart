import 'package:flutter/material.dart';
import 'category.dart';

const _categoryName = 'My Android';
const _categoryIcon = Icons.adb;
const _categoryColor = Colors.teal;

void main(){
  runApp(
    new CategoryApp()
  );
}

class CategoryApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Category App',
      home: new Scaffold(
        backgroundColor: Colors.teal[100],
        body: new Center(
          child: new Category(
            name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon,
          ),
        )
      ),
    );
  }
}