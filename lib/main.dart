import 'package:flutter/material.dart';
import 'package:flutterlogintest/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup':(BuildContext context) => new SignupPage()
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              // when u want to pile one widget on top of the other
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                  child: Text(
                    'Hello',
                    style:
                    TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 120.0, 0.0, 0.0),
                  child: Text(
                    'There',
                    style:
                    TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(200.0, 110.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                  obscureText: true,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0,left: 20.0),
                  child: InkWell(
                      child: Text('Forgt Password',
                          style:TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline
                          )
                      )
                  ),
                ),
                SizedBox(height: 40.0,), // white space between 2 widgets
                Container(
                  height: 40.0, // height of the button
                  child: Material( //material widget to define all material components used as a button
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){},
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0
                        ),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: ImageIcon(AssetImage('assets/images/fb.png')),
                        ),
                        SizedBox(width: 10.0,),
                        Center(
                          child: Text('Login with facebook',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'
                            ), ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'New to Spotify?',
                style: TextStyle(
                    fontFamily:'Montserrat'
                ),
              ),
              SizedBox(width: 5.0),
              InkWell(
                onTap:(){
                  Navigator.of(context).pushNamed('/signup');
                },
                child: Text('Register',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
