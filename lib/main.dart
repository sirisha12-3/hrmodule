import 'package:flutter/material.dart';
import 'package:hrmodule/Login_screen.dart';
import 'package:hrmodule/Profile_screen.dart';
import 'package:hrmodule/actions_list.dart';
import 'package:hrmodule/dashboard_screen.dart';
import 'package:hrmodule/otp_screen.dart';

import 'package:hrmodule/splash_screen.dart';
import 'package:hrmodule/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home:DashBoard(),
    );
  }
}

