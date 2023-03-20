import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ActionsPage extends StatefulWidget {
 

  @override
  State<ActionsPage> createState() => _ActionsPageState();
}

class _ActionsPageState extends State<ActionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Text("Actions",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,top: 20),
        child: Container(
             height: 70,
             width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: Colors.white,
              ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade100
                    ),
                    child: const Icon(Icons.archive,
                    color: Colors.black,),
                 ),
                  ),
                 Gap(20),
                 Text("asdghghhhhhh",style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 18
                 ),)
                ],
               )
        ),
      ),
    );
  }
}
