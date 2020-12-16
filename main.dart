// CONNOR HYATT
// Projet dde session demo

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    var front = 'Bienvenue!';
    
    return MaterialApp( 
      title: front,
      home: Scaffold( 
        appBar: AppBar( 
          title: Text('Pour débuté entré votre nom'),
        ),
        body: Image.network('https://www.vmcdn.ca/f/files/shared/corporate-logos/_logo_collegeboreal_1500x600.png;w=630')
      ),
    );
    return Scaffold(
      body: Center(
        child: Flatbutton(
            onPressed: () {
              Navigator.push(ctx, PageTwo());
            },
            child: TextField("Entrez votre nom pour continuer"), // FlatButton

      ),
    );
  }
}

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo() : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(ctx).canvasColor,
              elevation: 3.0,
            ),
            body: Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    ctx,
                    PageThree()
                  );
                },
                child: Text("Commencer le questionaire")
              ),
            ),
          );
        });
}

class PageThree extends MaterialPageRoute<Null> {
  PageThree() : super(builder: (BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: TextField("Comment vous sentez vous 1=Mal 2=Bien 3=Excellent"),
        backgroundColor: Theme.of(ctx).canvasColor,
        elevation: 4.0,
        actions: <Widget>[ 
          IconButton( 
            icon: Icon(Icons.close),
            onPressed: (){ 
              Navigator.pop(ctx);
            },
            child: TextField("Avez vous voyager hors du canada dans les dernier 14 jours?"),
            child: TextField("Avez vout été en contacte avec quelqu'un qui a eu le covid dans les derniers 14 jours?"),
          )
        ],
      ),
      body: Center( 
        child: MaterialButton( 
          onPressed: (){ 
            Navigator.popUntil(ctx, ModalRoute.withName(Navigator.defaultRouteName));
          },
          child: Text("Termine le quiz"),
        )
      )
    );
  });
}


class CollegeBoreal extends StatelessWidget { 
  @override 
  Widget build(BuildContext ctx) { 
    var title = 'Formulaire COVID-19 pour';

    return MaterialApp( 
      title: title,
      theme: ThemeData( 
        primaryColor: Colors.black ,
      ),
      home: Scaffold( 
        appBar: AppBar( 
          title: Text(title),
        ),
        body: Image.network('https://www.vmcdn.ca/f/files/shared/corporate-logos/_logo_collegeboreal_1500x600.png;w=630')
      ),
    );
  }
}
