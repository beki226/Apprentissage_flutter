
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
      title: 'App flutter 2',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Home(),
    );
  }
}
class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrainement Row'),
        centerTitle: true,
      ),
      body: Center(

          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Divider(
                  height: 50,
                  color: Colors.deepOrange,

                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    fromNetwork(400, 400),
                  ],
                ),
                Divider(
                  height: 50,
                  color: Colors.deepOrange,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://images.pexels.com/photos/13461809/pexels-photo-13461809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightGreen,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                row(),
                Divider(
                  height: 30,
                  color: Colors.deepOrange,
                ),
              ],
            ),
          ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.amberAccent,
      ),
      );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
  Text test(){
    return Text('Bonjour les guys',
           style: TextStyle(
             fontWeight: FontWeight.bold,
             fontStyle: FontStyle.italic,
             fontFamily: 'italic',
             letterSpacing: 2.0,
             color: Colors.white,
           ),);
  }
  Image fromAsset(double height, double width){
      return Image.asset('assets/Lenovo.PNG',
          height: height,
          width: width,
      );
  }
  Image fromNetwork(double height, double width){
    return Image.network('https://images.pexels.com/photos/8758386/pexels-photo-8758386.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          height: height,
          width: width,
    );
  }
  Row row(){
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue,
          foregroundImage: NetworkImage('https://images.pexels.com/photos/8758386/pexels-photo-8758386.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        ),
        Spacer(),
        Expanded(child: Text('Joli???',
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
        ),
        ),
        fromAsset(200.0,200.0),
        //fromNetwork(300, 300),
      ],
    );
  }
}
