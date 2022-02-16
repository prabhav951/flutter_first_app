import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // Trying to implement state
  // But it is not possible in a Stateless Widget
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'questionText': 'What is your favourite colour?',
        'answers': [
          'Black',
          'Red',
          'Green',
          'White',
        ],
      },
      {
        'questionText': 'What is your favourite animal',
        'answers': [
          'Rabbit',
          'Snake',
          'Lion',
          'Elephant',
        ],
      },
      {
        'questionText': 'What is your favourite anime',
        'answers': [
          'DS',
          'DS',
          'DS',
          'DS',
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answer, _answerQuestion);
            }).toList(),
          ],
        ),
      ),
      // Creates a base page design and structure for the app
    );
  }
}

/*
_ infront of classes indicates that these cannot be used in other files.
_ infront of members indicates private access within file/other files.

Stateful Widget
  It can be created when external data changes.
  The State subclass is not recreated in order for the state to be peristant
  setState() recalls the build method again

State is Data/Info used by the App
  Stateless widget
    Text()
    widget is once made and internal data is never changed.
    If input data to Text() changes, whole widget is rebuilt
  Stateful
    Can have a state

Different types of widgets
  Output and input(visible) - RaisedButton, Text(), Card()
  Layout and Control(invisible) - Row(), Column(), ListView()
    Give structure to app

  Container() - acts sometimes as visible and invisible widget.

Class
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

  Multiple Constructors
      class Person {}
      String name;
      int age;
      Person({String inputName, age = 30}) {
        name = inputName;
        this.age = age;
      }

      Person.veryOld(String inputName) {
        this.age = 60;
      }
    }

*/
