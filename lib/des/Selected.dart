import 'package:flutter/material.dart';
import 'package:renai_tv/des/desbtn.dart';

class Selected extends StatelessWidget {
  const Selected({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              height: 170,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              image: const NetworkImage(
                "https://cdn.pixabay.com/photo/2017/08/22/11/55/linked-in-2668692__340.png",
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 25.0, top: 5, right: 25),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "LinkedIn Corporation\nMicrosoft Corporation",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 25.0, top: 5, right: 25),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "750 million+ members | Manage your professional identity. Build and engage with your professional network. Access knowledge, insights and opportunities.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ),
        desbtn()
      ],
    );
  }
}