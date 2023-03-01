import 'package:flutter/material.dart';

import 'button2.dart';

class desbtn extends StatelessWidget {
  const desbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SizedBox(
          width: 160,
          height: 45,
          child: TextButton.icon(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // <-- Radius
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: () {},
              icon: const Icon(Icons.play_circle_outlined),
              label: const Text('WATCH NOW')),
        ),
        const button2(
          icon: Icons.add_circle_outline_rounded,
          name: 'My List',
        ),
        const button2(
          icon: Icons.share_outlined,
          name: 'Share',
        )
      ]),
    );
  }
}