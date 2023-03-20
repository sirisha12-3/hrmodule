import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hrmodule/Signup_screen.dart';

import 'package:hrmodule/new_page.dart';
import 'package:hrmodule/verification.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditinController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // String? Email;
  validateForm() {
    if (!emailTextEditingController.text.contains("@")) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Email Address is Not Valied"),
        duration: Duration(seconds: 1),
      ));
    } else if (passwordTextEditinController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("password is requried"),
        duration: Duration(seconds: 1),
      ));
    } else {
      loginUserInfo();
    }
  }

  loginUserInfo() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext c) {
          return ProgressDialog(
            message: "Processing, Please wait..",
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(children: [
                Column(
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xFF6C2123),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Welcome back ! Login with your Credentials",
                      style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold,
                       color: Colors.black38),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      makeInput(
                          label: "Email",
                          controller: emailTextEditingController),
                      // validator: (val) =>
                      //     val!.isEmpty ? 'Email cannot be empty.' : null,
                      // onSaved: (val) => Email = val),
                      makeInput(
                          label: "Password",
                          obsureText: true,
                          controller: passwordTextEditinController),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          validateForm();
                        },
                        color: Colors.indigoAccent[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white70),
                        ),
                      ),
                     
                      const Gap(10),
                      Column(
                        children:[
                           Gap(10),
                      GestureDetector(
                        onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Register()));
                        },
                        child: const Text(
                      "Forget Password",
                      style: TextStyle(
                          color: Color(0xFF6C2123),
                          fontWeight: FontWeight.w700),
                        ),
                      ),
                      Gap(10),
                       Row(
                         children: [
                           const Padding(
                             padding: EdgeInsets.only(left: 50),
                             child: Text("Don't have an account?",
                             style:TextStyle(color: Colors.black38,
                             fontWeight: FontWeight.bold
                             ) ,),
                           ),
                        
                      const Gap(10),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignupPage()));
                        },
                        child: const Text(
                          "SignUp",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFF6C2123)),
                        ),
                      )
                       ],
                       ),
                    ])
                    ],
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label, obsureText = false, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)),
        ),
      ),
      const SizedBox(
        height: 30,
      )
    ],
  );
}
