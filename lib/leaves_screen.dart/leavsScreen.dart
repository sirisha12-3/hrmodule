import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:hrmodule/leaves_screen.dart/attendance_info.dart';

import 'apply Regularization.dart';
import 'apply_leave.dart';
import 'leave_balance.dart';
import 'payslip.dart';
import 'ytd_report.dart';

class LeavesScreen extends StatefulWidget {
  const LeavesScreen({Key? key}) : super(key: key);

  @override
  State<LeavesScreen> createState() => _LeavesScreenState();
}

class _LeavesScreenState extends State<LeavesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 247, 247),
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: const Text(
          "Actions",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Gap(10),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => ApplyRegularization()));
              },
              child: cardWidget("Apply Regularization", Icons.arrow_back,
                  Color.fromARGB(255, 190, 187, 249))),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => AttendanceInfo()));
            },
            child: cardWidget("Attendance Info", Icons.timer_outlined,
                Color.fromARGB(255, 190, 187, 249)),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => ApplyLeaves()));
            },
            child: cardWidget("Apply Leave", Icons.calendar_today,
                Color.fromARGB(255, 203, 228, 248)),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => LeaveBalance()));
            },
            child: cardWidget("Leave Balance", Icons.calendar_today,
                Color.fromARGB(255, 203, 228, 248)),
          ),
          cardWidget("Holiday Calendar", Icons.calendar_today,
              Color.fromARGB(255, 203, 228, 248)),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => PaySlips()));
            },
            child: cardWidget("Payslip", Icons.picture_as_pdf,
                Color.fromARGB(255, 244, 212, 168)),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => YtdreportsScreen()));
            },
            child: cardWidget("YTD Reports", Icons.picture_as_pdf,
                Color.fromARGB(255, 244, 212, 168)),
          ),
          cardWidget("IT Statement", Icons.waving_hand,
              Color.fromARGB(255, 244, 212, 168))
        ],
      )),
    );
  }

  Widget cardWidget(String title, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.6,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon, size: 15),
          ),
        ),
        Gap(10),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        )
      ]),
    );
  }
}
