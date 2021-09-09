import 'package:flutter/material.dart';

class ColumnRowCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colum/Row"),
      ),
      body: Center(
        child: Column(
          //Main axis is Vertical
          mainAxisAlignment: MainAxisAlignment.center, //Center vertically
          children: [
            Text('This is a Column'),
            SizedBox(height: 16),
            Icon(Icons.map),
            SizedBox(height: 16),
            Row(
              //This Row is inside of a Column, Main Axis is horizontal
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Row inside  Column'),
                Icon(Icons.phone),
                Column(
                  //This Colum is inside of a row, which is inside of a column
                  children: [
                    Icon(Icons.alarm),
                    Icon(Icons.anchor),
                    Icon(Icons.edit),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
