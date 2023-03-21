import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:hrmodule/calender.dart';
import 'package:hrmodule/leaves_screen.dart/recent_activitys.dart';

class AttendanceInfo extends StatefulWidget {
  const AttendanceInfo({Key? key}) : super(key: key);

  @override
  State<AttendanceInfo> createState() => _AttendanceInfoState();
}

class _AttendanceInfoState extends State<AttendanceInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: const Text(
            "AttendanceInfo",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(30),
            height: 180,
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color.fromARGB(255, 228, 223, 223),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Avg.Work Hrs",
                        ),
                        const Text(
                          "09:12",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: "+7% ",
                            style: TextStyle(color: Colors.green),
                          ),
                          TextSpan(
                            text: "From Feb",
                            style: TextStyle(
                                color: Colors.grey),
                          ),
                        ]))
                      ],
                    ),
                Gap(35),
                    Column(
                      children: [
                        const Text(
                          "Avg.Actual Work Hrs",
                        ),
                        const Text(
                          "09:12",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: "+7% ",
                            style: TextStyle(color: Colors.green),
                          ),
                          TextSpan(
                            text: "From Feb",
                            style: TextStyle(
                                color: Colors.grey),
                          ),
                        ]))
                      ],
                    )
                  ],
                ),
                Gap(10),
                Column(
                  children: const [
                    Text(
                      "penalty Days",
                    ),
                    Text(
                      "0",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                )
              ]),
            ),
          ),
          Gap(10),
          Card(color: Color.fromARGB(255, 240, 208, 246),child: Row(
            children: const [
              CircleAvatar(backgroundColor: Color.fromARGB(255, 247, 227, 197),child: Icon(Icons.explore),),
              Gap(5),
              Text("Tap on date to view attendance", style: TextStyle(color: Colors.orange,))
            ],
          )),
          ElevatedButton(onPressed: (){}, child: Text("Show Legend")),
          Gap(10),
          SizedBox(
            child: CalendarScreen()),
        ]),
        );
  }
}
