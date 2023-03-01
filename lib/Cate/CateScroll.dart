


import 'package:flutter/material.dart';

class CateScroll extends StatelessWidget {
  final scroll = [
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
    "https://cdn.pixabay.com/photo/2013/06/07/15/47/sky-122703__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/20/19/05/horse-1341780__340.jpg",
    "https://cdn.pixabay.com/photo/2017/06/08/18/19/chain-2384436__340.jpg",
  ];
   CateScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 30.0, top: 7),
      child: SizedBox(
        height: 120,
        // width: 250,
        child: ListView.builder(
            itemCount: scroll.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                  padding:  EdgeInsets.all(8),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        width: 150,
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          scroll[index],
                        ),
                      )));
            })),
      ),
    );
  }
}