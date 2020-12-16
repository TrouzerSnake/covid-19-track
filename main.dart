// CONNOR HYATT
// Projet dde session demo

void main() {
  runApp(MaterialApp( 
    home: MyApp(),
    theme: themeData,
  ));
}

final ThemeData themeData = ThemeData(
  canvasColor: Colors.redAccent,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
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

class PageThree Extends MaterialPageRoute<Null> {
  PageThree() : super(builder: (BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: TextField("Comment vous sentez vous"),
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

      
class collegeBoreal extends StatelessWidget { 
  @override 
  Widget build(BuildContext ctx) { 
    return MaterialApp( 
      title: Strings.appBarTitle
      theme: ThemeData( 
        primaryColor: Colors.black ,
      ),
      home: Scaffold( 
        appBar: AppBar( 
          title: Text("COLLEGEBOREAL"),
        ),
      ),
    );
  }
}
