import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hrmodule/leaves_screen.dart/payslip.dart';

import '../leaves_screen.dart/leavsScreen.dart';

import 'package:gap/gap.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 247, 247),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        
        title: const Text(
          "Dalvkot",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.blueAccent,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            color: Colors.white,
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: const [
                Text(
                  "Hello",
                  style: TextStyle(
                      color: Color.fromARGB(255, 171, 168, 168),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Sirisha",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.front_hand,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => PaySlips()));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 180,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 228, 223, 223),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Salary",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Gap(10),
                      FlutterSwitch(
                        height: 20.0,
                        width: 40.0,
                        padding: 4.0,
                        toggleSize: 15.0,
                        borderRadius: 10.0,
                        activeColor: Color.fromARGB(255, 242, 219, 246),
                        value: status,
                        onToggle: (value) {
                          setState(() {
                            status = value;
                          });
                        },
                      ),
                      Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 242, 219, 246),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.downloading,
                              color: Color.fromARGB(255, 237, 160, 250),
                            )),
                      ),
                    ],
                  ),
                  Gap(20),
                  Text(
                    status ? "₹18700" : "₹*****",
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                  Gap(20),
                  Row(
                    children: const [
                      Text("Gross Pay"),
                      Spacer(),
                      Text("Deductions"),
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Text(
                        status ? "₹20100" : "₹*****",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        status ? "₹2000" : "₹*****",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Gap(5),
          Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 1.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(children: [
                Row(
                  children: [
                    const Text("Upcoming Holidays",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    Spacer(),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_drop_up)),
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.9,
                        crossAxisSpacing: 5,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return UpdateHolidays(
                            "date\nmonth", "Ugadi Festival", "Wednesday");
                      }),
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }

  Widget UpdateHolidays(
    String date,
    String Festival,
    String days,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 242, 219, 246),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Spacer(),
            Text(Festival,
                style: const TextStyle(
                    color: Color.fromARGB(255, 238, 77, 133),
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            Gap(10),
            Text(days,
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
