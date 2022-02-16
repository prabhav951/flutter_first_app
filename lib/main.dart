import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Trying to implement state
  // But it is not possible in a Stateless Widget
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite colour?',
      'What is your favourite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen');
              },
            ),
            ElevatedButton(
              child: Text('Answer 4'),
              onPressed: null,
            ),
          ],
        ),
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