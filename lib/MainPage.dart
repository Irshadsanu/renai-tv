




import 'package:flutter/material.dart';

import 'Cate/Categories.dart';
import 'Fiqh.dart';
import 'MostView.dart';
import 'Recent.dart';
import 'Trending.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Recent(),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 8,

              ),
              child: TextButton(
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Categories()),
                  );
                },
                child:const Text("CATEGORIES",style:TextStyle(color: Colors.amber),),
              ),
            ),
          ],
        ),
        MostView(),
        Trending(),
        Fiqh(),
      ],
    );
  }
}
