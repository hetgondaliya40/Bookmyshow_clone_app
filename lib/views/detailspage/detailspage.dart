import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.height;
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(data["name"]),
        actions: [
          Icon(Icons.share),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h * 0.25,
              width: w * 0.4223,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(
                    data['thum'],
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            SizedBox(),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              height: h * 0.07,
              width: w * 0.4223,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: textScaler.scale(30),
                    ),
                    SizedBox(
                      width: w * 0.003,
                    ),
                    Text(
                      data['rating'],
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: textScaler.scale(22),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.004,
                    ),
                    Text(
                      "(${data['votes']} Votes) >",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: textScaler.scale(18),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.054,
                    ),
                    Container(
                      height: h * 0.036,
                      width: w * 0.093,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: w * 0.002, color: Colors.red),
                      ),
                      child: Center(
                        child: Text(
                          "Rate now",
                          style: TextStyle(
                            letterSpacing: textScaler.scale(0.5),
                            fontWeight: FontWeight.w500,
                            fontSize: textScaler.scale(18),
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: h * 0.02,
                  width: w * 0.163,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: Text(
                    "2D,3D,IMAX 2D,IMAX 3D",
                    style: TextStyle(
                      fontSize: textScaler.scale(14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: w * 0.02,
                ),
                Container(
                  height: h * 0.02,
                  width: w * 0.115,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: Text(
                    "Hindi, Gujrati, +3",
                    style: TextStyle(
                      fontSize: textScaler.scale(14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  data['hours'],
                ),
                SizedBox(
                  width: w * 0.01,
                ),
                Text("●"),
                SizedBox(
                  width: w * 0.01,
                ),
                Text("Action, Sci-Fi,Thriller"),
                SizedBox(
                  width: w * 0.01,
                ),
                Text("●"),
                SizedBox(
                  width: w * 0.01,
                ),
                Text("UA"),
                SizedBox(
                  width: w * 0.01,
                ),
                Text("●"),
                SizedBox(
                  width: w * 0.01,
                ),
                Text(
                  data['date'],
                ),
              ],
            ),
            SizedBox(
              height: h * 0.004,
            ),
            Text(
              data["description"],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...data['cast'].map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              e['img'],
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            e['name'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: textScaler.scale(17),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.bookingPage);
              },
              child: Container(
                height: h * 0.053,
                width: w * 0.4223,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.redAccent.shade200,
                ),
                child: Center(
                  child: Text(
                    "Book tickets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: textScaler.scale(20),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
