import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: BasicsPage(),
    );
  }
}

class BasicsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //recupere la taileee du contex
    var platform = Theme.of(context).platform;//recupere le th_me du contexet
    print("size: $size");
    print("plateforme : $platform");

    return Scaffold(
      body: Container(
        height: size.height,//prends tout l'ecran et aplik un margin height de 50
        width: size.width,//prends tout l'ecran et aplik un margin botom et top de 50
        color: Colors.greenAccent,
        margin: EdgeInsets.all(50),//xa veux dire k tout les cotes oront la valeur 50
        padding: EdgeInsets.only(top: 150),
        child: Text("salut les developpeurs d'africasys",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 50,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.italic,
          fontFamily: 'IndieFlower-Regular.ttf',
        ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


