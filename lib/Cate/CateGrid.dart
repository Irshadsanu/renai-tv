import 'package:flutter/material.dart';

class CateGrid extends StatelessWidget {
  final grid = [
    "https://cdn.pixabay.com/photo/2015/03/22/17/28/rings-684944__340.jpg",
    "https://cdn.pixabay.com/photo/2014/11/13/06/10/boy-529065__340.jpg",
    "https://cdn.pixabay.com/photo/2020/05/26/07/43/sea-5221913__340.jpg",
    "https://cdn.pixabay.com/photo/2017/04/15/12/08/chain-2232278__340.jpg",
    "https://cdn.pixabay.com/photo/2017/08/22/11/55/linked-in-2668692__340.png",
    "https://cdn.pixabay.com/photo/2018/06/18/22/51/architecture-3483531__340.jpg",
    "https://cdn.pixabay.com/photo/2013/06/07/15/45/sky-122701__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
  ];
   CateGrid({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/1.8,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
    itemCount: grid.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 12.0,
    mainAxisSpacing: 12.0,
        childAspectRatio: (1/.60),
    ),
    itemBuilder: (BuildContext context, int index){
    return  ClipRRect(
          borderRadius: BorderRadius.circular(20),
        child: Image(
        width: 150,
        fit: BoxFit.fill,
        image: NetworkImage(
        grid[index],
        )));
    },
        ),
      ),
    );
  }
}