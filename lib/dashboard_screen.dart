import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';
import 'package:hrmodule/Profile_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool status = false;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  void _openEndDrawer() {
    _key.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    _key.currentState!.closeEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        endDrawer: ProfileScreen(),
        drawerEnableOpenDragGesture: false,
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: const Text(
            "DALVKOT",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  _openEndDrawer();
                },
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Text("SK"),
                ),
              ),
            ),
       
        
             
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hello Srikanth",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    ),
                    Gap(10),
                    const Icon(
                      Icons.handshake,
                      size: 30,
                      color: Colors.amber,
                    )
                  ],
                ),
              ),
              Gap(5),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: 370,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15, left: 15),
                          child: Text(
                            "Salary",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 23),
                          ),
                        ),
                        Gap(220),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios),
                        ),
                      ]),
                      Gap(30),
                      Row(children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Net Pay",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                        Gap(220),
                        Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue.shade100),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.download,
                                    color: Colors.blueAccent,
                                  )),
                            )),
                      ]),
                       Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        child: Text(
                         status?"₹99998":"₹******",
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Gap(5),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.1,
                        color: Colors.grey.shade100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Gross Pay",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                 Text(
                                  status?"₹10000":"₹******",
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Deductions",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                Text( status?"₹990":"₹***",
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.black))
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 60),
                            child: Text(
                              "Show Salary",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(top: 15,left: 15),
                             child: FlutterSwitch(
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
                           )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Gap(20),
              Container(
                height: 540,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Upcoming Holidays",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Gap(20),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_right, size: 30))
                      ]),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.9,
                              mainAxisSpacing: 7,
                              crossAxisSpacing: 5),
                      itemBuilder: (BuildContext, int index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 242, 219, 246),
                        ));
                      }),
                ]),
              ),
               BottomNavigationBar(items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.home,
                        color: Colors.grey,
                      )),
                  label: "Home"
                ),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.attractions)),
                    label: "Action"),
                BottomNavigationBarItem(
                    icon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.explore)),
                    label: "Explore"),
                  
              ]), 
             
            ]),
        ));
  }
}
