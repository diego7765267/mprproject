import 'package:first1/homepage.dart';
import 'package:flutter/material.dart';
import 'package:first1/loginpage.dart';
import 'package:first1/signup_page.dart';
import 'package:first1/litdisclaimer.dart';
import 'package:first1/user_page.dart';
import 'package:first1/mdtrckr.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:'homepage',
    routes: {
      'homepage': (context)=>homepg(),
      'loginpage': (context)=>lgn(),
      'signup_page':(context)=>sgnpg(),
      'disclaimer':(context)=>disc(),
      'usrpage':(context)=>usr(),
      'mood_tracker':(context)=>mdtrker(),
    },
  ));
}
