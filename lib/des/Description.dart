import 'package:flutter/material.dart';
import 'package:renai_tv/des/Related.dart';

import '../AppBar.dart';
import 'Selected.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(85, 85, 85, 100),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
        child: Appbar()
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25.0, top: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'DESCRIPTION',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              height: 360,
              child: const Selected(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 25.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'RELATED',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Related(),
        ],
      ),
    );
  }
}