import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class YtdreportsScreen extends StatefulWidget {
  const YtdreportsScreen({Key? key}) : super(key: key);

  @override
  State<YtdreportsScreen> createState() => _YtdreportsScreenState();
}

class _YtdreportsScreenState extends State<YtdreportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 249, 247, 247),
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Text("YTD Reports"),
      ),
      body: Column(
        children: [
          Reports("YTD Statement", "6200000"),
          Gap(20),
          Reports("PF YTD Statement", "₹600000")
        ],
      ),
    );
  }

  Widget Reports(String status, String amount) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      height: 130,
      width: MediaQuery.of(context).size.width * 1.5,
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
                status,
                style: const TextStyle(
                    color: Color.fromARGB(255, 77, 76, 76),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,),
              ),
              Spacer(),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 19, 141, 127),
                ),
              ),
            ],
          ),
          Row(children: [Text(
            amount,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
          ),],),
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
                child: const Center(
                  child: Text(
                    "Download",
                    style: TextStyle(
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
