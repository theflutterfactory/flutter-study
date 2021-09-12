import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:test_app/topics/coding_basics/class/bird.dart';
import 'package:test_app/topics/coding_basics/class/cat.dart';
import 'package:test_app/topics/coding_basics/class/dog.dart';

class Zoo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Dog dog = buildZoo();

    List value = getArray();

    return Scaffold(
      appBar: AppBar(title: Text('Forest')),
      body: Container(
        child: Center(
          child: Text(
            value.toString(),
            style: TextStyle(fontSize: 72),
          ),
        ),
      ),
    );
  }

  Dog buildZoo() {
    Dog dog = Dog();
    dog.name = "Missy";
    return dog;
  }

  // calculate(5);

  List array1 = [3, 5, 5, 8, 9, 7, 1];
  List array2 = [5, 8, 3, 9, 5, 3, 0];

  List getArray() {
    //Loop through Array 1

    Set intSet1 = HashSet<int>();
    Set intSet2 = HashSet<int>();

    List result = [];

    for (int i = 0; i < array1.length; i++) {
      int currentValue = array1[i];

      intSet1.add(currentValue);
    }

   for (int i = 0; i < array2.length; i++) {
      int currentValue = array2[i];

      intSet2.add(currentValue);
    }

    for (int j = 0; j < intSet2.length; j++) {
      if (intSet1.contains(intSet2.elementAt(j))) {
        result.add(intSet2.elementAt(j));
      }
    }

    //[3, 5, 8]

    return result;
  }
}
