

import 'package:flutter/material.dart';

class AccountHome extends StatelessWidget {
  const AccountHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        width: 350,
        height: 350,
        decoration: const BoxDecoration(
          gradient:  LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: <Color>[
              Colors.black,
              Colors.black12
            ],
          ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
          
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: const Text("PROFILE",style: TextStyle(color: Colors.white),),
            ),
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(
                top: 20,
                bottom: 15
              ),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(Icons.person_rounded,color: Colors.white,size: 60,)
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("USER NAME",style: TextStyle(color: Colors.white),),
            ),const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("example@email.com",style: TextStyle(color: Colors.white),),
            ),const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("MOB:0123 000 000",style: TextStyle(color: Colors.white),),
            ),const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Location",style: TextStyle(color: Colors.white),),
            ),


          ],
        ),
      ),
    );
  }
}
