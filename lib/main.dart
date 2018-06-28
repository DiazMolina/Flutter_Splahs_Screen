import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Splash Screen',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),()=>print("Splahs Finish!"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.deepOrange),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(

                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: Icon(
                          Icons.satellite,
                          color: Colors.black,
                          size: 80.0,
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Hispasat",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Text(
                      "Free Tv FTA",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
