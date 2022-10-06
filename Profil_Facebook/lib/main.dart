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
      title: 'Profil Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;
    double heigth= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Facebook'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
         child: Column(
           children: [
             Stack(
               alignment: Alignment.topCenter,
               children: [
                 Image.asset('assets/pexel3.jpg',
                   height: 300,
                   width: MediaQuery.of(context).size.width,
                   fit: BoxFit.cover,),
                 Padding(padding: EdgeInsets.only(top: 230),
                  child: CircleAvatar(
                   radius: 70,
                   backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/pexel2.jpg'),
                 ),
                 ),
               ],
             ),
             SizedBox(
               height: 50,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text('KASSOUM TRAORE',
                   style: TextStyle(
                     fontSize: 30.0,
                     fontWeight: FontWeight.bold,
                     fontStyle: FontStyle.italic,
                   ),
                   textAlign: TextAlign.center,
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child:
                  Text('Bonjour AfricaSys, Dart et Flutter sont très intéressant.'
                      ' Pouvoir apprendre ces langage afin de me rendre utile pour vous est ma priorité',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ),
              ],
             ),
             SizedBox(
               height: 50,
             ),
            Row(
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      padding: EdgeInsets.all(15),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("Modifier le profil", textAlign: TextAlign.center,),
                    ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.border_color),
                ),
              ],
            ),
             SizedBox(
               height: 20,
             ),
            Menu('A propos de moi'),
            IconsMenu(Icons.house, 'Ouagadougou'),
             IconsMenu(Icons.work, 'Developpeur'),
             IconsMenu(Icons.favorite, 'Rien à signaler'),
             SizedBox(
               height: 20,
             ),
             Menu('Amis'),
             /*Row(
               children: [
                 ImageDesAmis('Pexel','assets/pexel1.jpg', width/3),
               ],
             ),*/
             PhotosAmis(),
             SizedBox(
               height: 20,
             ),
             Menu('Publications'),
             pubs(time: "10 Minutes", image: 'assets/pexel4.jpg', description: "De belles vacances par moments au bord de la"
                 "mer serait très interesseant.Malheureusement le BF est un pas enclavé. ", like: 5, comment: 10),
             pubs(time: "2 joures", image: "assets/pexel5.jpg", description: 'Pas de commentaire', like: 50, comment: 36),
             pubs(time: "3 Semaines", image: "assets/pexel6.jpg", description: "", like: 20, comment: 5),
             pubs(time: "1 Mois", image: "assets/pexel7.jpg", description: "Apres visualisation je decrirais la pub ainsi que la photo", like: 100, comment: 60),
             pubs(time: "4 Mois", image: "assets/pexel8.jpg", description: "Courage, Détermination, Passion, Optimisme", like: 200, comment: 130),
             pubs(time: "5 Mois", image: "assets/pexel9.jpg", description: "Hello la famille, comment ca se passe?", like: 50, comment: 39),
             pubs(time: "1 An", image: "assets/pexel3.jpg", description: "Dossier classé", like: 300, comment: 250),
             pubs(time: "2 ans", image: "assets/pexel2.jpg", description: "Le style c'est lui", like: 150, comment: 30),
             pubs(time: "5 ans", image: "assets/pexel1.jpg", description: "Aucune description", like: 40, comment: 12),
           ],
         ),
      ),
    );
  }
  CircleAvatar PhotoDeProfile(double radius){
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.white,
      backgroundImage: AssetImage('assets/pexel2.jpg'),
    );
  }
 Widget Menu(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
         padding: EdgeInsets.all(10),
           child: Text(
           text,
           style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 30,
              ),
            ),
        ),
      ],
    );
 }
 Widget IconsMenu(IconData? icon,String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Icon(icon),
        ),
        Expanded(child: Container(
          child: Text(text,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.normal,
           ),
          ),
          ),
          flex: 3,
        ),
      ],
    );
 }
 Column ImageDesAmis(String text, String image, double width){
    return Column(
      children: [
        Container(
          width: width,
          height: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
            boxShadow: [BoxShadow(color: Colors.grey)],
          ),
        ),
        Text(text),
      ],
    );
 }
 Row PhotosAmis(){
    Map<String, String> photo = {
      "Pexel1": "assets/pexel1.jpg", "Pexel2": "assets/pexel2.jpg",
      "Pexel3": "assets/pexel3.jpg"
    };
    List<Widget> children = [];
    photo.forEach((text, image) { children.add(ImageDesAmis(text, image, 200));});
    return Row(children: children,
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }

  //fonction pour gerer les postes ou publication
  Container pubs({required String time, required String image, required String description, int like = 0, int comment = 0}){
    return Container(
      margin: EdgeInsets.only(top:10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [

              PhotoDeProfile(40),
              Padding(padding: EdgeInsets.only(right: 5)),
              Text('KASSOUME TRAORE'),
              Spacer(),
              temps(time),
            ],
          ),
          Image.asset(image, fit: BoxFit.cover,),
          SizedBox(
            height: 15,
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Icon(Icons.favorite, color: Colors.pink,),
              Text("$like Likes"),
              Spacer(),
              Icon(Icons.message, color: Colors.blue,),
              Text("$comment Commentaires"),
            ],
          ),
        ],
      ),
    );
  }
  Text temps(String time){
    return Text("Il y'a $time", style: TextStyle(color: Colors.blue),);
  }

}


