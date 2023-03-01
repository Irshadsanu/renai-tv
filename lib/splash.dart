import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';


class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Renai TV",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: splashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black54,
      child: Container(
        margin: EdgeInsets.all(150),
        child: Image.asset("assets/logo.png",
        width: 8,
        ),
      ),
    );
  }
}




