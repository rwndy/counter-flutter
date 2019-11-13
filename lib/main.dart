import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: CounterApp(),
    ));

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int number = 0;
  void tekanTombol() 
    {
      setState(() {
        number = number + 1;
      });
    }

  void kurangTombol()
    {
      setState(() {
        if (number == 0) {
          return 0;
        } else {
          number = number - 1;
        }
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Kurang (-)'),
              onPressed: kurangTombol,
            ),
            Text(
              number.toString(),
              style: TextStyle(fontSize: 12 + number.toDouble()),
            ),
            RaisedButton(
              child: Text('Tambah (+)'),
              onPressed: tekanTombol,
            )
          ],
        ),
      ),
    );
  }
}
