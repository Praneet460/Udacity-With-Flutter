import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Hello Rectangle',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Demo Hello Rectangle',
                 style: const TextStyle(
                   color: Colors.white,
                   fontFamily: 'Comfortaa',
                   fontWeight: FontWeight.w300,
                   fontSize: 20.0,
                 ),),
        ),
        body: new DemoHelloRectangle(),
      ),
    ),
  );
}

class DemoHelloRectangle extends StatelessWidget{
@override
Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Container(
        color: Colors.redAccent,
        height: 400.0,
        width: 300.0,
        child: new Center(
          child: new Text(
            'Hello!',
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
              fontSize: 60.0,
            ),
          ),
        ),
      ),
    );
  }
}
