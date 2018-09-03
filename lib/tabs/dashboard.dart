import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  
  Dashboard._({
    Key key, 
  }): super(key: key);
  
  final String title;

  factory Dashboard({
    Key key,
    String title,
  }) {
    return Dashboard._(key: key);
  }

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with AutomaticKeepAliveClientMixin<Dashboard> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) => new Container(
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Icon(
          Icons.dashboard,
          size: 150.0,
          color: Colors.black12
        ),
        new Text('Dashboard tab content')
      ]
    ),
  );

  @override
  bool get wantKeepAlive => true;
  
}
