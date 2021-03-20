import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDG Budapest',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: GDGBudapest(title: 'Flutter Demo 4 GDG Budapest'),
    );
  }
}

class GDGBudapest extends StatefulWidget {
  GDGBudapest({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GDGBudapestState createState() => _GDGBudapestState();
}

class _GDGBudapestState extends State<GDGBudapest> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: change ? _buildWorld() : _buildFlutter()),
            GestureDetector(
              onTap: () => setState(() => change = !change),
              child: Text(
                'Click here 🎉',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWorld() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Hello, GDG Budapest!',
          style: TextStyle(
            fontSize: 35,
            color: Colors.lightBlue[100],
          ),
        ),
      ],
    );
  }

  Widget _buildFlutter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Hello, WTM Budapest!',
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'Roboto',
            color: Colors.lightBlueAccent,
          ),
        ),
      ],
    );
  }
}
