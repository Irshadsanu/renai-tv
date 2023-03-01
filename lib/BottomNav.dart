import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'home.dart';


class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(left: 15, right: 15),
      // height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromARGB(65, 65, 65, 100),
        gradient: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: <Color>[
            Colors.black,
            Colors.blueGrey,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 3,
        ),
        child: ValueListenableBuilder(
          valueListenable: HomePage.selectedIndexNotifier,
          builder: (BuildContext ctx, int updatedIndex, _) {
            return GNav(
              onTabChange: (newIndex) {
                HomePage.selectedIndexNotifier.value = newIndex;
              },
              gap: 8,
              selectedIndex: updatedIndex,
              color: Colors.white,
              backgroundColor: const Color.fromARGB(0, 85, 85, 100),
              activeColor: Colors.white,
              tabBackgroundColor: Colors.black,
              padding: const EdgeInsets.all(8),
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'HOME',
                  iconColor: Colors.white,
                  textColor: Colors.yellow[600],
                  iconActiveColor: Colors.yellow[600],
                ),
                GButton(
                  icon: Icons.radio_outlined,
                  text: 'RADIO',
                  textColor: Colors.yellow[600],
                  iconActiveColor: Colors.yellow[600],
                ),
                GButton(
                  icon: Icons.chat_outlined,
                  text: 'CHAT',
                  textColor: Colors.yellow[600],
                  iconActiveColor: Colors.yellow[600],
                ),
                GButton(
                  icon: Icons.person_outline_sharp,
                  text: 'ACCOUNT',
                  textColor: Colors.yellow[600],
                  iconActiveColor: Colors.yellow[600],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}