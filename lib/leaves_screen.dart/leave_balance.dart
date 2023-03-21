//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:hrmodule/leaves_screen.dart/apply_leave.dart';

class LeaveBalance extends StatefulWidget {
  const LeaveBalance({Key? key}) : super(key: key);

  @override
  State<LeaveBalance> createState() => _LeaveBalanceState();
}

class _LeaveBalanceState extends State<LeaveBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 247, 247),
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: const Text(
          "Leave Balance",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Gap(20),
        Avelabulleaves(
          "Earned Leaves",
          0,
          Color.fromARGB(255, 247, 242, 244),
        ),
        Avelabulleaves(
          "Sick Leave",
          0,
          Colors.white,
        ),
        Avelabulleaves(
          "Casual Leaves",
          0,
          Colors.white,
        ),
        Avelabulleaves(
          "Maternity Leaves",
          0,
          Color.fromARGB(255, 247, 242, 244),
        ),
        Avelabulleaves(
          "InformedLoss of Pay",
          0,
          Color.fromARGB(255, 247, 242, 244),
        ),
        Avelabulleaves(
          "Loss of Pay",
          0,
          Color.fromARGB(255, 247, 242, 244),
        ),
        Avelabulleaves(
          "Comp - off",
          0,
          Color.fromARGB(255, 247, 242, 244),
        ),
        FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => ApplyLeaves()));
          },
          color: Color.fromARGB(255, 42, 98, 218),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            "Apply",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }

  Widget Avelabulleaves(String leavetype, int count, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey, width: 1),
          color: color),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Row(
            children: [
              Text(
                leavetype,
                style: const TextStyle(
                    color: Color.fromARGB(255, 77, 76, 76),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
              Spacer(),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "${count.toString()}",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 158, 158, 158),
                          fontSize: 20)),
                  const TextSpan(
                      text: "Bal",
                      style: TextStyle(
                          color: Color.fromARGB(255, 177, 178, 179),
                          fontSize: 20))
                ]),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "${count} greanted, ${count} consumed",
                style: const TextStyle(
                  color: Color.fromARGB(255, 177, 178, 179),
                ),
              ),
              Spacer(),
              const Text(
                "-",
                style: TextStyle(
                  color: Color.fromARGB(255, 42, 98, 218),
                  fontSize: 30,
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
