import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': 'What is your favourite colour?',
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 8,
        },
        {
          'text': 'Green',
          'score': 6,
        },
        {
          'text': 'White',
          'score': 4,
        },
      ],
    },
    {
      'questionText': 'What is your favourite animal',
      'answers': [
        {
          'text': 'Rabbit',
          'score': 1,
        },
        {
          'text': 'Snake',
          'score': 10,
        },
        {
          'text': 'Lion',
          'score': 5,
        },
        {
          'text': 'Elephant',
          'score': 3,
        },
      ],
    },
    {
      'questionText': 'What is your favourite anime',
      'answers': [
        {
          'text': 'DS',
          'score': 1,
        },
        {
          'text': 'DS',
          'score': 1,
        },
        {
          'text': 'DS',
          'score': 1,
        },
        {
          'text': 'DS',
          'score': 10,
        },
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    print('Quiz reset');
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
      // Creates a base page design and structure for the app
    );
  }
}

/*
Column by default takes all height of viewport

null
  Direct comparisons with null is possible, like C/Java

final and const
  final is used, when you don't want to change the value of variable after first assignment. So initially it need not be initialized.
    It is runtime constant.
  const is used for same purpose, but must be initialized too.
    It is compile time constant.

  if the object is not meant to be changed, also the variable
    use const for indentifier.
  if the object only is not meant to be changed, but the variable can.
    use const for object, and var for identifier
    Ex:
      var dummy = const ['Hello'];
      dummy.add('Bye'); // Gives compile time error as list is unmodifiable.
  if data is not going to be changed, once initialized later
    use final for identifier.


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
