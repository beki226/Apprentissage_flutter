import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first apk'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Text('helo africa'),
          ElevatedButton(
              onPressed: (){},
              child: Text('click me')
          ),
          Container(
            color: Colors.lightBlue,
            padding: EdgeInsets.all(30.0),
            child: Text('le containeur'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('cliquer'),
        backgroundColor: Color.fromRGBO(50, 100, 80, 1),
      ),
    );
  }
}

