import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("WingMate"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: () => debugPrint("Search")),
          new IconButton(icon: new Icon(Icons.dehaze), onPressed: () => debugPrint("About")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("All Contacts"),
        tooltip: 'All Contacts',
        child: Icon(Icons.message),
      ),

    );
  }

}