import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class RecentActivity extends StatelessWidget {
 final Color color;
   RecentActivity({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: color,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.umbrella,
                    size: 20,
                  ),
                  color: Color.fromARGB(255, 249, 151, 184),
                ),
              ),
              Gap(10),
              Text(
                "Check in",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
              ),
              Spacer(),
              const Text(
                "8:30 am",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "24 Mar 2023",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
              ),
              Spacer(),
              Text(
                "Ontime ",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
              ),
              const Text(
                "+8h",
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
