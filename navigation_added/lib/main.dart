import 'package:flutter/material.dart';
import 'category_route.dart';

void main(){
  runApp(new AddNavigator());
}

class AddNavigator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Add Navigator',
      home: new CategoryRoute(),
    );
  }
}