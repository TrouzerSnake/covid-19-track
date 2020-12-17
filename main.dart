// CONNOR HYATT
// Projet dde session demo

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: themeData,
  ));
}

final ThemeData themeData = ThemeData(
  canvasColor: Colors.white,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    var front = 'Covid-19-Questionaire';

    return MaterialApp(
      title: front,
      home: Scaffold(
          body: Column(
        children: [
          Image.network(
              'https://www.vmcdn.ca/f/files/shared/corporate-logos/_logo_collegeboreal_1500x600.png;w=630'),
          Container(padding: EdgeInsets.all(25)),
          Container(
            child: Text('Bienvenue!'),
            padding: EdgeInsets.all(35),
          ),
          TextField(
              decoration:
                  InputDecoration(hintText: "Entrez votre nom pour continuer")),
          Container(padding: EdgeInsets.all(25)),
          Center(
            child: FlatButton(
                onPressed: () {
                  Navigator.push(ctx, PageTwo());
                },
                child: Text("Continuer") // FlatButton
                ),
          )
        ],
      )),
    );
  }
}

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
              body: Column(
            children: [
              Image.network(
                  'https://www.vmcdn.ca/f/files/shared/corporate-logos/_logo_collegeboreal_1500x600.png;w=630'),
              Container(
                  padding: EdgeInsets.all(35),
                  child: Text(
                      'Pour Accéder au campus aujourdhui, tu dois compléter le questionaire.')),
              Center(
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(ctx, PageThree());
                    },
                    child: Text("Commencer le questionaire")),
              )
            ],
          ));
        });
}

class PageThree extends MaterialPageRoute<Null> {
  PageThree()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Clique Ici Pour Retourner"),
                elevation: 1.0,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    //child: TextField("Avez vous voyager hors du canada dans les dernier 14 jours?"),
                    //child: TextField("Avez vout été en contacte avec quelqu'un qui a eu le covid dans les derniers 14 jours?"),
                  )
                ],
              ),
              body: Column(children: [
                Image.network(
                    'https://www.vmcdn.ca/f/files/shared/corporate-logos/_logo_collegeboreal_1500x600.png;w=630'),
                Container(
                    padding: EdgeInsets.all(35),
                    child: Text(
                      'Formulaire COVID-19 pour',
                    )),
                Container(
                    padding: EdgeInsets.all(35),
                    child: Text('Date 2020-12-17')),
                TextField(
                    decoration: InputDecoration(
                        hintText:
                            "Comment vous sentez vous(1=Mal 2=Bien 3=Excellent):")),
                Container(padding: EdgeInsets.all(25)),
                TextField(
                    decoration: InputDecoration(
                        hintText:
                            "Avez-vous voyager hors du Canada dans les derniers 14 jours(O/N):")),
                Container(padding: EdgeInsets.all(25)),
                TextField(
                    decoration: InputDecoration(
                        hintText:
                            "Avez-Vous été en contacte avec un individu qui as eu COVID-19 dans les derniers 14 jours(O/N):")),
                Container(padding: EdgeInsets.all(25)),
                Center(
                    child: MaterialButton(
                  onPressed: () {
                    Navigator.popUntil(
                        ctx, ModalRoute.withName(Navigator.defaultRouteName));
                  },
                  child: Text("Soumettre"),
                ))
              ]));
        });
}

class CollegeBoreal extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    var title = 'Formulaire COVID-19 pour';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Image.network(
              'https://www.vmcdn.ca/f/files/shared/corporate-logos/_logo_collegeboreal_1500x600.png;w=630')),
    );
  }
}

