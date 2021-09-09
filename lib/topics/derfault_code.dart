import 'package:flutter/material.dart';

class DefaultCode extends StatefulWidget {
  @override
  _DefaultCodeState createState() => _DefaultCodeState();
}

class _DefaultCodeState extends State<DefaultCode> {
  int _counter = 0;
  String homeString = 'You have pushed the button this many times:';

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 1;
      homeString = 'I Just pushed the button';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(homeString),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
