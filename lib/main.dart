import 'package:flutter/material.dart';
import 'package:test_app/topics/column_row_code.dart';
import 'package:test_app/topics/derfault_code.dart';
import 'package:test_app/topics/gridview_code.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Remember that every new Screen you navigate to needs
    //a new scaffold. It's like a new painting requires a new canvas
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return ListTile(
                title: Text('Default Code'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DefaultCode(),
                  ),
                ),
              );
              break;
            case 1:
              return ListTile(
                title: Text('GridView Code'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridViewCode(),
                  ),
                ),
              );
              break;
            case 2:
              return ListTile(
                title: Text('Column/Row Code'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ColumnRowCode(),
                  ),
                ),
              );
              break;
          }
          return Container();
        },
      ),
    );
  }
}
