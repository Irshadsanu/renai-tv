

import 'package:flutter/material.dart';

class RadioHome extends StatelessWidget {
  const RadioHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image:AssetImage("assets/radiobg.png"),width: 38,color: Colors.amber,),
            Padding(
              padding: EdgeInsets.only(
                top: 10
              ),
              child: Text("RADIO",style: TextStyle(fontSize: 35,color: Colors.amber),),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text("COMING SOON",style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
        const Image(image: AssetImage("assets/LoadingImages.png"),width: 140,color: Colors.white,)

      ],
    );
  }
}
