import 'package:exam_app_ui/views/booking_page/Booking_Page.dart';
import 'package:exam_app_ui/views/profilepage/profile.dart';
import 'package:flutter/material.dart';

import '../views/Home_Page.dart';
import '../views/detailspage/detailspage.dart';

class Routes {
  static String homePage = '/';
  static String detailPage = 'details_page';
  static String profilepage = 'profil_epage';
  static String bookingPage = 'booking_page';

  static Map<String, WidgetBuilder> myRoutes = {
    homePage: (context) => const HomePage(),
    detailPage: (context) => const DetailsPage(),
    profilepage: (context) => const ProfilePage(),
    bookingPage: (context) => const Booking_Page(),
  };
}
