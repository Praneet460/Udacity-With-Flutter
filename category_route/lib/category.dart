import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

final _rowHeight = 100.0;
final _borderRadius = new BorderRadius.circular(_rowHeight/2);

class Category extends StatelessWidget{

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
}) : assert(name != null),
     assert(color != null),
     assert(iconLocation != null),
     super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.transparent,
      child: new Container(
        height: _rowHeight,
        child: new InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () {
            print("I was tapped!");
          },
          child: new Padding(
            padding: new EdgeInsets.all(8.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(16.0),
                  child: new Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                new Center(
                  child: new Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}