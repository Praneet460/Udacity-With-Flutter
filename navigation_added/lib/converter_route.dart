import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'unit.dart';

class ConverterRoute extends StatelessWidget{

  final String name;
  final Color color;
  final List<Unit>  units;

  const ConverterRoute({
    @required this.name,
    @required this.color,
    @required this.units,
}) : assert(name != null),
     assert(color != null),
     assert(units != null);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final unitWidgets = units.map((Unit unit){
      return new Container(
        color: color,
        margin: new EdgeInsets.all(8.0),
        padding: new EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            new Text(
              unit.name,
              style: Theme.of(context).textTheme.subhead,
        ),

          ],
        ),
      );
    }).toList();

    return new ListView(
      children: unitWidgets,
    );
  }
}