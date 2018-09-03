import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  Home._({
    Key key, 
  }): super(key: key);
  
  final String title;

  factory Home({
    Key key,
    String title,
  }) {
    return Home._(key: key);
  }

  @override
  _HomeState createState() => _HomeState();
 
}


class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
  
  int _counter = 0;

  void _incrementCounter() {
    setState(() { 
      _counter++;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body:
      new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(" 点击次数: "),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        )
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
  
}

