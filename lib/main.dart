import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bloc & dartx demo",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(
        title: "Demo rxDart Bloc.",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title = "";

  MyHomePage({Key key, String title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counternum = 0;

  void _incrementCounter() {
    setState(() {
      _counternum++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counternum--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "You have already touched time: ",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
            Text(
              "$_counternum",
              style: TextStyle(fontSize: 18, color: Colors.red),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: 
            FloatingActionButton(
              onPressed: _incrementCounter,
              child: Icon(Icons.add),
              tooltip: "increment counter",
            ),
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            child: Icon(Icons.remove),
            tooltip: "decrement counter",
          ),
        ],
      ),
    );
  }
}
