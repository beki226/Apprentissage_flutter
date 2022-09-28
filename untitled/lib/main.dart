import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'App Basique',
      theme: ThemeData(
          primarySwatch: Colors.pink
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
      appBar: AppBar(
        leading: Icon(Icons.favorite),
        actions: [
          Icon(Icons.handyman),
          Icon(Icons.border_color),
        ],
        title: Text('App basique'),
        centerTitle: true,
        elevation: 7.5,

      ),
      //widget container
      body: Container(
        height: size.height,//prends tout l'ecran et aplik un margin height de 50
        width: size.width,//prends tout l'ecran et aplik un margin botom et top de 50
        color: Colors.white,
        margin: EdgeInsets.all(50),//xa veux dire k tout les cotes oront la valeur 50
        padding: EdgeInsets.all(50),
        //widget center
        child: Center(
           //widget card
        child: Card(
          //widget padding
          child: Padding(
            padding: EdgeInsets.all(4),
            child: fromAsset(size),
          ),
            margin: EdgeInsets.all(50),
            elevation: 7.5,
          ),
        ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: iconeApp(size),
      ),
        );
   }
   Image fromAsset(Size size){
     return Image.asset('assets/pc.jpg',
     fit: BoxFit.cover,
     height: size.height,
     width: size.width,
     );
   }
   Image fromNetwork(Size size){
     return Image.network('https://images.pexels.com/photos/13719624/pexels-photo-13719624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
       height: size.height,
       width: size.width,
       fit: BoxFit.cover,
     );
   }
   Icon iconeApp(Size size){
     return Icon(
      Icons.house,
      size: size.width / 10,
      color: Colors.white,
      semanticLabel: 'yoo',
    );
   }
   Text spanDemo(){
    return Text.rich(
        TextSpan(
            text: 'salut',
            style: TextStyle(color: Color.fromARGB(20, 10, 100, 1),
              fontStyle: FontStyle.italic,),
            children: [
              TextSpan(
                  text: "salut",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                  )
              )
            ]
        )
    );
   }
  }




