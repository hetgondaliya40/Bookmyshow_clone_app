import 'package:flutter/material.dart';

import '../../utils/globle.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(
            "Hi!",
            style: TextStyle(
              fontSize: textScaler.scale(30),
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "Edit Profile > ",
            style: TextStyle(
              fontSize: textScaler.scale(15),
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          trailing: const Icon(
            Icons.account_circle_outlined,
            size: 45,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            height: h * 0.02,
            width: w,
            color: Color(0xffebeef5),
          ),
          Column(
            children: [
              Column(
                children: [
                  ...pro.map(
                    (e) => ListTile(
                      leading: Icon(
                        e['Icon'],
                        color: Colors.black,
                        size: 35,
                      ),
                      title: Text(
                        e['title'],
                        style: TextStyle(
                          fontSize: textScaler.scale(16),
                        ),
                      ),
                      subtitle: Text(
                        e['subtitle'],
                        style: TextStyle(
                          fontSize: textScaler.scale(12),
                          color: Colors.grey.shade700,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.02,
                    width: w,
                    color: Color(0xffebeef5),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Column(
                children: [
                  ...pro1.map(
                    (e) => ListTile(
                      leading: Icon(
                        e['Icon'],
                        color: Colors.black,
                        size: 35,
                      ),
                      title: Text(
                        e['title'],
                        style: TextStyle(
                          fontSize: textScaler.scale(16),
                        ),
                      ),
                      subtitle: Text(
                        e['subtitle'],
                        style: TextStyle(
                          fontSize: textScaler.scale(12),
                          color: Colors.grey.shade700,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
