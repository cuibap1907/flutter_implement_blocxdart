import 'package:flutter/material.dart';
import 'package:flutter_implement_blocanddartx/bloc/counter_bloc.dart';


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
  CounterBloc _counterBloc = new CounterBloc(initialCount: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "You have already touched time: ",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
            StreamBuilder<int>(
              stream: _counterBloc.observableCounter,
              builder: (context, snapshot) {
                return Text(
                  "${snapshot.data}",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                );
              }
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
              onPressed: _counterBloc.incrementCounter,
              child: Icon(Icons.add),
              tooltip: "increment counter",
            ),
          ),
          FloatingActionButton(
            onPressed: _counterBloc.decrementCounter,
            child: Icon(Icons.remove),
            tooltip: "decrement counter",
          ),
        ],
      ),
    );
  }
}
