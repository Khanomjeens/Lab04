import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ex StateFul'),
        ),
        body: ChangeTextOnButtonPress(),
      ),
    );
  }
}

class ChangeTextOnButtonPress extends StatefulWidget {
  @override
  _ChangeTextOnButtonPressState createState() => _ChangeTextOnButtonPressState();
}

class _ChangeTextOnButtonPressState extends State<ChangeTextOnButtonPress> {
  String displayText = 'Please press the Button';

  void changeText(String newText) {
    setState(() {
      displayText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          displayText,
          style: TextStyle(fontSize: 24,height: 15),
        ),
        SizedBox(height: 200),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => changeText('1'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,fixedSize: Size(200, 100)
              ),
              child: Text('1'),
            ),
            ElevatedButton(
              onPressed: () => changeText('2'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 137, 211),fixedSize: Size(200, 100)
              ),
              child: Text('2'),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => changeText('3'),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 255, 251, 0),fixedSize: Size(200, 100)
              ),
              child: Text('3'),
            ),
            ElevatedButton(
              onPressed: () => changeText('4'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 161, 59),fixedSize: Size(200, 100)
              ),
              child: Text('4'),
            ),
          ],
        ),
      ],
    );
  }
}