

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
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
                  padding: EdgeInsets.fromLTRB(15.0, 80.0, 0.0, 0.0),
                  child: Text(
                    'Signup',
                    style:
                    TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(230.0, 80.0, 0.0, 0.0),
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
                TextField(
                  decoration: InputDecoration(
                      labelText: 'NICK NAME',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0,left: 20.0),
                ),
                SizedBox(height: 20.0,), // white space between 2 widgets
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
                          'SIGNUP',
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
                        SizedBox(width: 10.0,),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Text('GO BACK',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'
                              ), ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
