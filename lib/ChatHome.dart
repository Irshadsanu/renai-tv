

import 'package:flutter/material.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
              gradient:  LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
                  Colors.black,
                  Colors.black12
                ],
              ),
            ),
            width: 360,
            height: 170,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                  ),
                  child: Text("ASSISTANCE",style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 55,
                  ),
                  child: Container(
                    width: 100,
                    height: 25,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text("CALL",style: TextStyle(fontSize: 12),),
                        Icon(Icons.phone_android)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15
                  ),
                  child: Container(
                    width: 100,
                    height: 25,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text("CHAT",style: TextStyle(fontSize: 12),),
                        Icon(Icons.whatshot,color: Colors.green,)
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        ),
      ],
    );
  }
}
