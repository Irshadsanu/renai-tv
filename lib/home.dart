import 'package:flutter/material.dart';
import 'package:renai_tv/MainPage.dart';
import 'AccountHome.dart';
import 'AppBar.dart';
import 'BottomNav.dart';
import 'ChatHome.dart';
import 'RadioHome.dart';




class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Renai Tv",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = const [MainPage(), RadioHome(), ChatHome(), AccountHome()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottom(),
      backgroundColor: const Color.fromARGB(85, 85, 85, 100),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Appbar(),
      ),

      body: ValueListenableBuilder(
        valueListenable: HomePage.selectedIndexNotifier,
        builder: (BuildContext context, int updatedIndex, _) {
          return _pages[updatedIndex];
        },
      ),

    );

  }
}
