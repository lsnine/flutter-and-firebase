import 'package:flutter/material.dart';
import 'package:login/services/auth.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: new Stack(children: <Widget>[
          /*
          new Image(
            image:
                new AssetImage("assets/LouieStevenCadaguman_WVSUScribble.jpg"),
            fit: BoxFit.cover,
            //color: Colors.black87,
            //colorBlendMode: BlendMode.darken,
          ),
          */
          new Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            new FlutterLogo(
              size: 150.0,
            ),
            new Form(
                child: new Theme(
              data: new ThemeData(
                  brightness: Brightness.dark,
                  primarySwatch: Colors.teal,
                  inputDecorationTheme: new InputDecorationTheme(
                      labelStyle:
                          new TextStyle(color: Colors.teal, fontSize: 20.0))),
              child: new Container(
                padding: const EdgeInsets.all(40.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new TextFormField(
                        decoration:
                            new InputDecoration(labelText: "Enter Email"),
                        keyboardType: TextInputType.emailAddress),
                    new TextFormField(
                        decoration:
                            new InputDecoration(labelText: "Enter Password"),
                        keyboardType: TextInputType.text,
                        obscureText: true),
                    new Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new MaterialButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            height: 60.0,
                            minWidth: 120.0,
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: new Text("Login"),
                            onPressed: () async {
                              dynamic result = await _auth.signInAnon();
                              if (result == null) {
                                print("Error Signing in");
                              } else {
                                print("Signed in");
                              }
                            },
                            splashColor: Colors.redAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          ),
                          new MaterialButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            height: 60.0,
                            minWidth: 120.0,
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: new Text("Sign Up"),
                            onPressed: () => {},
                            splashColor: Colors.redAccent,
                          ),
                        ]),
                    new FlatButton(
                        onPressed: () => {},
                        child: new Text("Forgot Password?"),
                        textColor: Colors.white),
                    new Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                    ),
                    new MaterialButton(
                        minWidth: 0.0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                        onPressed: () => {},
                        textColor: Colors.black,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            new Image(
                              image: AssetImage("assets/google_logo.png"),
                              height: 30,
                              alignment: Alignment.center,
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                            Text("Sign in with Google"),
                          ],
                        )),
                    new MaterialButton(
                        minWidth: 0.0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                        onPressed: () => {},
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            new Image(
                              image: AssetImage("assets/PngItem_5053860.png"),
                              height: 30,
                              alignment: Alignment.center,
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                            Text("Sign in with Facebook"),
                          ],
                        ))
                  ],
                ),
              ),
            ))
          ])
        ])));
  }
}
