import 'package:flutter/material.dart';
import 'chats.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue,
        title: new Text("WingMate"),
        elevation: 10.0,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: () => debugPrint("Search")),
          new IconButton(icon: new Icon(Icons.dehaze), onPressed: () => debugPrint("About")),
        ],
      ),
      body: new ChatScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("All Contacts"),
        tooltip: 'All Contacts',
        child: Icon(Icons.message),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Colors.lightBlueAccent,
          elevation: 10.0,
          items: [
            new BottomNavigationBarItem(icon: new Icon(Icons.chat_bubble), title: new Text("Chats")),
            new BottomNavigationBarItem(icon: new Icon(Icons.event), title: new Text("Events")),
            new BottomNavigationBarItem(icon: new Icon(Icons.music_note), title: new Text("Group Play")),
          ], onTap: (int i){
            if(i==1) Navigator.popAndPushNamed(context, '/events_sl');
            else if(i==2) Navigator.popAndPushNamed(context, '/group_play_sl');
          },)
    );
  }
}