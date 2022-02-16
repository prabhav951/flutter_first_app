import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('This is my default'),
      ),
        // Creates a base page design and structure for the app
    );
  }
}

/*


Different types of widgets
  Output and input(visible) - RaisedButton, Text(), Card()
  Layout and Control(invisible) - Row(), Column(), ListView()
    Give structure to app

  Container() - acts sometimes as visible and invisible widget.

Named arguments are defined by enclosing those in {}.
  class Person {}
    String name;
    int age;
    Person({String inputName, age = 30}) {
      name = inputName;
      this.age = age;
    }
  }

They are optional by default but can be made compuslory by using @required annotation
THIS IS NOT A DART FUNCTIONALITY, but of the flutter framework
  Person({@required String inputName, @required age = 30}) {
    ...
  }

A shorter way to define a constructor. The arugument values are directly assigned into the data members.
  Person({this.name, this.age = 30});

@override
  We want to override the method of the parent.

*/