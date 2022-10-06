
class profile{
  //attributs
  String prenom;
  String nom;
  String pass;
  int age;
  bool genre;
  double height;
  List<String> passion = [];
  String? langue;
//constructeur
  profile({this.prenom = '', this.nom = '', this.pass='', this.age =0,
  this.genre= true, this.height= 0, this.passion = const [], this.langue=""});
//mrthodes
  String identite() => "$prenom $nom";

  String ageAnciennete(){
    String Anciennete = "$age an";
    if(age>1){
      Anciennete += 's';
    }
    return Anciennete;
  }

  String determinationGenre() => (genre)? 'Féminin' : 'Masculin';
  String parmaterageTaille() => "${height.toInt()} cm";
  String fonctionPassions() {
    String maPassion = "";
    if(passion.length == 0){
      return maPassion;
    } else{
      maPassion = "";
      passion.forEach((passions) {
        maPassion += "$passion";
      });
      return maPassion;
    }
  }

  String languePrefere() => "$langue";
  String maMotivation() => "$pass";
}