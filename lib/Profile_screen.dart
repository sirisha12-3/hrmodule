import 'dart:async';
import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 200,
        child: ListView(
          children: <Widget>[
           Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.blueAccent.shade400,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Stack(children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey.shade300,
                        backgroundImage: const NetworkImage(
                            "https://www.nicepng.com/png/detail/340-3400291_smiling-person-png-man-with-arms-crossed-png.png"),
                      ),
                      Positioned(
                          right: 0.1,
                          top: 0.5,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            radius: 20,
                            child: IconButton(
                                onPressed: () async {
                                  ImageSource imageSource =
                                      await showImagePicker();
                                  final ImagePicker _picker = ImagePicker();
                                  final XFile? image = await _picker.pickImage(
                                      source: imageSource, imageQuality: 70);
                                  if (image != null) {
                                    String base64 =
                                        base64Encode(await image.readAsBytes());
                                    String base64String =
                                        'data:image/png;base64, $base64';
                                  }
                                },
                                icon: const Icon(Icons.edit,
                                    color: Colors.black, size: 25)),
                          ))
                    ])),
                Gap(10),
                const Text(
                  "Mr.Sreekanth Reddy",
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Gap(10),
                const Text(
                  "DVT580",
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Gap(5),
          Container(
            height: 300,
            width: 290,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Extension No:",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black26),
                ),
                Gap(10),
                Text("-",style: TextStyle(fontSize: 30,
                color: Colors.black87,fontWeight: FontWeight.bold
                )),
                Gap(10),
                Text("Location:",
                 style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26),
                ),
                Gap(10),
                Text("Banglore",style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,fontWeight: FontWeight.w500
                ),),
                 Gap(10),
                 Text("Joining Date",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26
                 ),),
                 Gap(10),
                 Text("03 oct 2022",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87
                 )),
                 Gap(10),
                 Text("Date of Birth",style: TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.bold,
                  color: Colors.black26 
                 )),
                 Gap(10),
                 Text("06Jan",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                   color: Colors.black87
                 ),),
                 ]),
          ),
          Gap(90),
          Center(
            child: Text("Log Out",style: TextStyle(
              fontSize: 18,
              color: Colors.blueAccent.shade200,
              fontWeight: FontWeight.w400
            ),),
           ),
           Gap(30),
           Divider(
            color: Colors.grey.shade300,
            thickness: 0.9,
            indent: 10,
            endIndent: 4,
           ),
           Text("@ 2023 Greytip software Pvt.ltd.",
           style:TextStyle(
            color: Colors.grey.shade400,
            fontSize: 15,
            fontWeight: FontWeight.w400
           )),
           Text("V6.0.9",style: TextStyle(
            color: Colors.grey.shade400,
           ),)

        ],
      ),
          ],
        ),
      ),
    );
  }

  Future<ImageSource> showImagePicker() {
    Completer<ImageSource> completer = Completer();

    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading:
                      const Icon(Icons.camera_alt, color: Colors.blueAccent),
                  title: const Text('Take a picture'),
                  onTap: () async {
                    Navigator.of(context).pop();
                    completer.complete(ImageSource.camera);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.image, color: Colors.blueAccent),
                  title: const Text('Choose from gallery'),
                  onTap: () async {
                    Navigator.of(context).pop();
                    completer.complete(ImageSource.gallery);
                  },
                ),
              ],
            ),
          );
        });
    return completer.future;
  }
}
