import 'package:flutter/material.dart';
import 'profile.dart';

class profil extends StatefulWidget{

  @override
  profilState createState() => profilState();
}

class profilState extends State<profil>{
  profile monProfil = profile(prenom: "Sidiki", nom: "SAWADOGO");
  late TextEditingController prenom;
  late TextEditingController nom;
  late TextEditingController pass;
  late TextEditingController age;
  bool Decouvrir = false;
  Map<String, bool> passions = {
    "Lido": false,
    "Football": false,
    "Tenis": false,
    "Baby Foot": false,
    "Baskeball": false,
    "Programmation": false,
    "Lecture": false,
    "Musique": false,
  };
  @override
  void initState(){
    super.initState();
    prenom = TextEditingController();
    nom = TextEditingController();
    pass = TextEditingController();
    age = TextEditingController();
    prenom.text = monProfil.prenom;
    nom.text = monProfil.nom;
    pass.text = monProfil.pass;
    age.text = monProfil.age.toString();

  }

  @override dispose(){
    super.dispose();
    prenom.dispose();
    nom.dispose();
    pass.dispose();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Informations Personnelles:"),),
         body: SingleChildScrollView(
           child: Column(
             mainAxisSize: MainAxisSize.max,
             children: [
               Card(
                 color: Colors.teal,
                 elevation: 13,
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                 child: Column(
                   children: [
                     Text(monProfil.identite()),
                     Text("Age: ${monProfil.ageAnciennete()}"),
                     Text("Taille: ${monProfil.parmaterageTaille()}"),
                     Text("Genre: ${monProfil.determinationGenre()}"),
                     Text("passions: ${monProfil.fonctionPassions()}"),
                     Text("Langue mieux parlée: ${monProfil.languePrefere()}"),
                     Text("Mot de passe: "),
                     ElevatedButton(
                         onPressed: MiseAJourDecouverte,
                         child: Text((Decouvrir)?"Ne pas afficher":"Afficher"),
                     ),
                     (Decouvrir) ? Text(monProfil.pass) : Container(height: 0, width: 0,),

                   ],
                 ),
                 ),
               ),
               Divider(color: Colors.lightGreenAccent, thickness: 1,),
               titre('Modifier les infos'),
               ChampDeText(controller: prenom, hint: "Entrez votre prénom "),
               ChampDeText(controller: nom, hint: "Entrez votre nom"),
               ChampDeText(controller: pass, hint: "Quelle est votre mot de passe?", valeur: true),
               ChampDeText(controller: age, hint: 'Quel est votre age?', type: TextInputType.number),
               Row(
                 mainAxisSize: MainAxisSize.max,
                 mainAxisAlignment : MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Genre: ${monProfil.determinationGenre()}"),
                   Switch(value: monProfil.genre,
                     onChanged: ((choix){
                       setState(() {
                         monProfil.genre = choix;
                       });
                     }),
                   ),
                 ],
               ),
               Row(
                 mainAxisSize: MainAxisSize.max,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Taille: ${monProfil.parmaterageTaille()}"),
                   Slider(value: monProfil.height,
                       min: 0,
                       max: 250,
                       onChanged: ((nouvelleTaille){
                         setState(() {
                           monProfil.height = nouvelleTaille;
                         });
                       })
                   ),
                   Divider(color: Colors.lightGreenAccent, thickness: 1,),
                   mesPassions(),
                   Divider(color: Colors.lightGreenAccent, thickness: 1,),
                   buttonsRadio(),
                 ],
               ),
             ],
           ),
         ),
     );
  }
  //Champ de configuration d'un mot de passe
  TextField ChampDeText({required TextEditingController controller,required String hint, bool valeur: false, TextInputType type: TextInputType.text}){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
      ),
      keyboardType: type,
      obscureText: valeur,
      onSubmitted: ((nouvelValeur){
        print(nouvelValeur);
        MiseAJourUtilisateur();
      }),
    );
  }
  MiseAJourUtilisateur(){
    setState(() {
     monProfil= profile(
        prenom: (prenom.text != monProfil.prenom)?prenom.text:monProfil.prenom,
        nom: (nom.text != monProfil.nom)?nom.text:monProfil.nom,
        pass: (pass.text != monProfil.pass)?pass.text:monProfil.pass,
        langue: monProfil.langue,
        passion: monProfil.passion,
        height: monProfil.height,
        age: int.parse(age.text),
        genre: monProfil.genre,
      );
    });
  }
  MiseAJourDecouverte(){
    setState(() {
      Decouvrir = !Decouvrir;
    });
  }

  Column mesPassions(){
    List<Widget> widgets = [titre('Mes passions')];
    passions.forEach((passion, valider) {
     Row lignes = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
       children: [
         Text(passion),
         Checkbox(value: valider,
             onChanged: (valeur){
             setState(() {
               passions[passion] = valeur ?? false;
               List<String> recupere = [];
               passions.forEach((key, value) {
                 if(value == true ){
                   recupere.add(key);
                 }
               });
               monProfil.passion = recupere;
             });
             }),
       ],
      );
     widgets.add(lignes);
    });
    return Column(
    children: widgets,
    );
  }
  Column buttonsRadio(){
    
    List<Widget> choix = [];
    List<String> langues = ["Anglais", "Francais", "Moore", "Dioula"];
    int index = langues.indexWhere((langue) => (langue.startsWith(monProfil.languePrefere())));
    for(var i = 0; i<langues.length; i++){
      Column listeLangue = Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${langues[i]} '),
         Radio(
             value: i,
             groupValue: index,
             onChanged: (x) {
               setState(() {
                 monProfil.langue=langues[x as int];
               });
             }
         ),
        ],
      );
      choix.add(listeLangue);
    }
    return Column(
      children:[
        titre('Ma langue prefere'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: choix,
        ),
      ],
    );
  }
  Text titre(String text){
    return Text(text,
      style: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
