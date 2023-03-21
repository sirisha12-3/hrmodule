//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:hrmodule/calender.dart';

class LeaveScreen extends StatefulWidget {
  final String? selectedleave;
  const LeaveScreen({Key? key, this.selectedleave}) : super(key: key);

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  List<String> LeaveTypes = [
    "Casual Leave",
    "Sick Leave",
    "Maternity Leave",
    "Informed Loss of Pay",
    "Loss of Pay",
    "Com - off",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 242, 244),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(106),
          child: SafeArea(
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_back)),
                      const Text(
                        "Leave",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.home_outlined,
                            size: 30,
                          )),
                    ],
                  ),
                  const TabBar(tabs: [
                    Tab(
                        child: Text(
                      "Apply",
                      style: TextStyle(color: Colors.black38),
                    )),
                    Tab(
                        child: Text(
                      "Pending",
                      style: TextStyle(color: Colors.black38),
                    )),
                    Tab(
                        child: Text(
                      "History",
                      style: TextStyle(color: Colors.black38),
                    ))
                  ]),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          CalendarScreen(),
          Text("data"),
          Text("data"),
        ]),
      ),
    );
  }
}
