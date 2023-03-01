import 'package:flutter/material.dart';

import 'des/Description.dart';

class MostView extends StatefulWidget {
  const MostView({Key? key}) : super(key: key);

  @override
  State<MostView> createState() => _MostViewState();
}

class _MostViewState extends State<MostView> {
  var imageUrlList = [
  "https://cdn.pixabay.com/photo/2015/03/22/17/28/rings-684944__340.jpg",
  "https://cdn.pixabay.com/photo/2014/11/13/06/10/boy-529065__340.jpg",
  "https://cdn.pixabay.com/photo/2020/05/26/07/43/sea-5221913__340.jpg",
  "https://cdn.pixabay.com/photo/2017/04/15/12/08/chain-2232278__340.jpg",
  "https://cdn.pixabay.com/photo/2017/08/22/11/55/linked-in-2668692__340.png",
  "https://cdn.pixabay.com/photo/2018/06/18/22/51/architecture-3483531__340.jpg",
  "https://cdn.pixabay.com/photo/2013/06/07/15/45/sky-122701__340.jpg",

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
                  child: Text("MOST VIEWED",
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
                  child: InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        fit: BoxFit.fill,
                        width: 210,
                        image: NetworkImage(imageUrlList[index],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Description()),
                      );
                    },
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
