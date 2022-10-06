import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        title: Text('premiere apk'),
        centerTitle: true,
      ),
      body:
        Row(
        children: [
          Text('helo africa'),
          ElevatedButton(
              onPressed: (){},
              child: Text('click me')
          ),
          Container(
            color: Colors.lightBlue,
            padding: EdgeInsets.all(2.0),
            child: Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Text('helo africa'),
                  ElevatedButton(onPressed: (){}, child: Text('coucou'),),
                    ],
                  ),
                ),
            ),
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

