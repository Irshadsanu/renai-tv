import 'package:flutter/material.dart';

class Related extends StatelessWidget {
  final related = [
    "https://cdn.pixabay.com/photo/2013/06/07/15/45/sky-122701__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
  ];
  Related({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: 140,
        // width: 250,
        child: ListView.builder(
            itemCount: related.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        width: 210,
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          related[index],
                        ),
                      )));
            })),
      ),
    );
  }
}