import 'package:exam_app_ui/utils/globle.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                height: 76,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 10),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "It All Start Here",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Gujrat",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 26,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.notifications_none,
                          color: Colors.black,
                          size: 26,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.qr_code_scanner,
                          color: Colors.black,
                          size: 26,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: h * 0.03,
                          child: Icon(
                            Icons.movie_filter_rounded,
                            color: Colors.redAccent,
                            size: h * 0.04,
                          ),
                        ),
                        Text("Movies"),
                      ],
                    ),
                    SizedBox(
                      width: w * 0.029,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: h * 0.03,
                          child: Icon(
                            Icons.music_note,
                            color: Colors.redAccent,
                            size: h * 0.04,
                          ),
                        ),
                        Text("Music \nShows"),
                      ],
                    ),
                    SizedBox(
                      width: w * 0.029,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: h * 0.03,
                          child: Icon(
                            Icons.sports_kabaddi,
                            color: Colors.redAccent,
                            size: h * 0.04,
                          ),
                        ),
                        Text("Sports"),
                      ],
                    ),
                    SizedBox(
                      width: w * 0.029,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: h * 0.03,
                          child: Icon(
                            Icons.mic,
                            color: Colors.redAccent,
                            size: h * 0.04,
                          ),
                        ),
                        Text("Comedy \nShows"),
                      ],
                    ),
                    SizedBox(
                      width: w * 0.029,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: h * 0.03,
                          child: Icon(
                            Icons.stream,
                            color: Colors.redAccent,
                            size: h * 0.04,
                          ),
                        ),
                        Text("stream"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Image.asset(
                  "assets/image/12.jpg",
                  fit: BoxFit.cover,
                ),
                height: h * 0.21,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                child: Image.asset(
                  "assets/image/13.jpg",
                  fit: BoxFit.fill,
                ),
                height: h * 0.1,
                width: w * 0.44,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended movies",
                      style: TextStyle(
                        fontSize: textScaler.scale(20),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All >",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: textScaler.scale(18),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...Moviesdata.map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  Routes.detailPage,
                                  arguments: e,
                                );
                              },
                              child: Container(
                                height: h * 0.25,
                                width: w * 0.17,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      e['img'],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.006,
                            ),
                            Text(
                              e["name"],
                              style: TextStyle(
                                fontSize: textScaler.scale(17),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                child: Image.asset(
                  "assets/image/ticketad.png",
                  fit: BoxFit.cover,
                ),
                height: h * 0.21,
                width: w * 0.44,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              Row(
                children: [
                  SizedBox(
                    width: w * 0.013,
                  ),
                  Text(
                    "The Best Events Thish Week",
                    style: TextStyle(
                      fontSize: textScaler.scale(23),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: w * 0.013,
                  ),
                  Text(
                    "Monday To Sunday,we got you covered",
                    style: TextStyle(
                      fontSize: textScaler.scale(18),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Container(
                      height: h * 0.155,
                      width: w * 0.21,
                      child: Image.asset(
                        "assets/image/plans.png",
                        fit: BoxFit.fitHeight,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: Container(
                      height: h * 0.155,
                      width: w * 0.21,
                      child: Image.asset(
                        "assets/image/plans.png",
                        fit: BoxFit.fitHeight,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_balance_wallet_rounded,
                color: Colors.white,
              ),
              splashColor: Colors.cyan,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_call,
                color: Colors.white,
              ),
              splashColor: Colors.cyan,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.profilepage);
              },
              icon: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              splashColor: Colors.cyan,
            ),
            label: "",
          ),
        ],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
      ),
    );
  }
}
