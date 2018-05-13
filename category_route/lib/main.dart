import 'package:flutter/material.dart';
import 'category_route.dart';

void main(){
  runApp(
      new CategRoute()
  );
}

class CategRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CategRoute',
      home: new CategoryRoute(),
    );
  }
}