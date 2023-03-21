//import 'dart:html';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hrmodule/dashbord_screen/homepage.dart';
import 'package:hrmodule/leaves_screen.dart/leavsScreen.dart';
import 'package:gap/gap.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), label: "Actions"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cloud_queue), label: "Explore")
          ],
          selectedItemColor: Color.fromARGB(255, 80, 59, 241),
        ),
        body: [
          HomePage(),
          LeavesScreen(),
        ].elementAt(_index));
  }
}
