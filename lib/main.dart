import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home : new MyApplication()
  ));
}
class MyApplication extends StatefulWidget {
  @override
  _State createState() => new _State();

}
class _State extends State<MyApplication> {

  String _value = "";

  void onClick() => setState(() => _value = new DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name here"),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 20,
      ),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.red,
          mini: true,
          child: new Icon(Icons.av_timer),
          elevation: 25.0,
          highlightElevation: 30.0,
          onPressed: onClick
      ),

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value)
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}