import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class PaySlips extends StatefulWidget {
  const PaySlips({Key? key}) : super(key: key);

  @override
  State<PaySlips> createState() => _PaySlipsState();
}

class _PaySlipsState extends State<PaySlips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 249, 247, 247),
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
       title: const Text("Payslips",style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: Container(
          margin: EdgeInsets.only(top:20,left: 10,right: 10),
          height: 130,
          width: MediaQuery.of(context).size.width*1.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey, width: 1),color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(children: [
              Row(
                children: [
                  const Text(
                   "Payslip",
                    style: TextStyle(
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
                          fontWeight:FontWeight.normal),
                    )),
                  ),
                  Gap(10),
                  Container(
                    height: 25,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromARGB(255, 42, 98, 218)),
                    child: const Center(
                        child: Text(
                      "Download",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                         fontWeight: FontWeight.w400),
                    ),),
                  ),
                ],
              ),
            ]),
          ),
            ),
    );
  }
}
