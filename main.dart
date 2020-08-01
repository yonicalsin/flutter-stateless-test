import "package:flutter/material.dart";

void main () {
  runApp(
     new MaterialApp(
       home: MyApp(),
     )
  );
}

class MyApp extends StatelessWidget {
  @override 
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Application"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                title: new Text("First Card"),
                icon: new Icon(Icons.access_time, size: 40.0,),
              ),
              new MyCard(
                title: new Text("Second Card"),
                icon: new Icon(Icons.account_balance_wallet),
              ),
              new MyCard(
                title: new Text("Third Card"),
                icon: new Icon(Icons.whatshot),
              )
            ]
          ) // Column,
        ) // Center
      ) // Container
    );
  }
}


class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;
  
  MyCard({this.title, this.icon});
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon
            ]
          )
        )
      )
    );
  }
}

