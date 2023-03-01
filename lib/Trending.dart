import 'package:flutter/material.dart';


class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  var imageUrlList = [
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
    "https://cdn.pixabay.com/photo/2013/06/07/15/47/sky-122703__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/20/19/05/horse-1341780__340.jpg",
    "https://cdn.pixabay.com/photo/2017/06/08/18/19/chain-2384436__340.jpg",
  ];



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 3,
      ),
      child: Container(
        height: 143,
        color: Colors.black,
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    top: 7,

                  ),
                  child: Text("TRENDING",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white,fontSize: 10),

                  ),
                )


              ],
            ),
            Container(
              color: Colors.black,
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrlList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      fit: BoxFit.fill,
                      width: 210,
                      image: NetworkImage(imageUrlList[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
