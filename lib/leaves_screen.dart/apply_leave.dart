//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import 'leave.dart';

class ApplyLeaves extends StatefulWidget {
  const ApplyLeaves({Key? key}) : super(key: key);

  @override
  State<ApplyLeaves> createState() => _ApplyLeavesState();
}

class _ApplyLeavesState extends State<ApplyLeaves> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: const Text(
          "Apply",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => LeaveScreen()));
              },
              child: Cardslist("Apply Leave", "Leave")),
          Cardslist("Apply Leave", "Restricted Holiday"),
          Cardslist("Cancel Leave", "Leave Cancel"),
          Cardslist("Cancel Leave", "Comp off Grant"),
        ],
      ),
    );
  }

  Widget Cardslist(String leavetype, String leaves) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey, width: 1),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Row(
            children: [
              Text(
                leaves,
                style: const TextStyle(
                    color: Color.fromARGB(255, 77, 76, 76),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
              Spacer(),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 19, 141, 127),
                ),
              )
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 25,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: const Center(
                    child: Text(
                  "View Pending",
                  style: TextStyle(
                      color: Color.fromARGB(255, 42, 98, 218),
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                )),
              ),
              Gap(10),
              Container(
                height: 25,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(255, 42, 98, 218)),
                child: Center(
                  child: Text(
                    leavetype,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
