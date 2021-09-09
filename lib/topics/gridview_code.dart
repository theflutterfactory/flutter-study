import 'package:flutter/material.dart';

class GridViewCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2, //Two columns
        children: List.generate(
          100,
          (index) => Container(
            margin: EdgeInsets.all(8),
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}

//NOT related to Gridviews but just good to know :)

String someFunction(int value) {
  //This is the old/inefficient way of return values based on conditions
  // if (value > 5) {
  //   return 'Pass';
  // } else {
  //   return 'Fail';
  // }

  //This is the newer way - It's Ternary operation
  return value > 5 ? 'Pass' : 'Fail';
}

//Return values based on a condition. It doesn't have to be a numeric condition
String someFunction2(int value) => value > 5 ? 'Pass' : 'Fail';
