import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'unit.dart';
import 'converter_route.dart';

final _rowHeight = 100.0;
final _borderRadius = new BorderRadius.circular(_rowHeight/2);

class Category extends StatelessWidget{
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final List<Unit> units;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.units,
}) : assert(name != null),
     assert(color != null),
     assert(iconLocation != null),
     assert(units != null),
     super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return new Scaffold(
          appBar: new AppBar(
            elevation: 1.0,
            title: new Text(
              name,
              style: Theme.of(context).textTheme.display1,
            ),
            centerTitle: true,
            backgroundColor: color,
          ),
          body: new ConverterRoute(
            color: color,
            name: name,
            units: units,
          ),
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color:  Colors.transparent,
      child: new Container(
        height: _rowHeight,
        child: new InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () => _navigateToConverter(context),
          child: new Padding(padding: new EdgeInsets.all(8.0),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Padding(padding: new EdgeInsets.all(16.0),
              child: new Icon(iconLocation,
              size: 60.0,
              ),),
              new Center(
                child: new Text(name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline,),
              ),
            ],
          ),),
        ),
      ),
    );
  }

}