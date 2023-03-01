import 'package:flutter/material.dart';
import 'package:renai_tv/AppBar.dart';
import 'package:renai_tv/Cate/CateGrid.dart';
import 'CateScroll.dart';


class Categories extends StatelessWidget {
   const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(85, 85, 85, 100),
      appBar:  const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Appbar(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13.0, top: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'CATEGORIES',
                style: TextStyle(color: Colors.amber[200]),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CateScroll(),
          const SizedBox(
            height: 20,
          ),

          CateGrid(),

        ],
      ),
    );
  }
}

