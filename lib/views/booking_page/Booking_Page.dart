import 'dart:math';

import 'package:exam_app_ui/utils/globle.dart';
import 'package:flutter/material.dart';

class Booking_Page extends StatefulWidget {
  const Booking_Page({super.key});

  @override
  State<Booking_Page> createState() => _Booking_PageState();
}

class _Booking_PageState extends State<Booking_Page> {
  @override
  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const Text(
              ("name"),
            ),
            SizedBox(
              width: w * 0.24,
            ),
            const Icon(
              Icons.search,
            ),
            SizedBox(
              width: w * 0.02,
            ),
            const Icon(
              Icons.tune,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...book.map(
                  (e) => Container(
                    height: h * 0.1,
                    width: w * 0.07,
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey.shade200),
                          bottom: BorderSide(color: Colors.grey.shade300)),
                      color: e['color'],
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 2),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            e['day'],
                            style: TextStyle(
                              fontSize: textScaler.scale(12),
                              color: e['colors'],
                            ),
                          ),
                          Text(
                            e['date'],
                            style: TextStyle(
                              fontSize: textScaler.scale(17),
                              fontWeight: FontWeight.w500,
                              color: e['colors'],
                            ),
                          ),
                          Text(
                            e['month'],
                            style: TextStyle(
                              fontSize: textScaler.scale(12),
                              color: e['colors'],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hindi ● 2D",
                  style: TextStyle(
                    fontSize: textScaler.scale(15),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Change >",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: textScaler.scale(15),
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: h * 0.045,
                  margin: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Container(
                    height: h * 0.04,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Sort by",
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: textScaler.scale(16),
                          ),
                        ),
                        Transform.rotate(
                          angle: pi * -0.5,
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: h * 0.015,
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...price.map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(4),
                          child: Container(
                            height: h * 0.04,
                            width: w * 0.11,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              e["price"],
                              style: TextStyle(
                                color: Colors.pink,
                                letterSpacing: 1.2,
                                fontSize: textScaler.scale(14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: h * 0.63,
              width: w * 0.43,
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
