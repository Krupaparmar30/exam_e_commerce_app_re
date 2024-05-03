import 'package:exam_e_commerce_app_re/screens/cartscreen.dart';
import 'package:exam_e_commerce_app_re/screens/cheakscreen.dart';
import 'package:exam_e_commerce_app_re/screens/detailsscreen.dart';
import 'package:exam_e_commerce_app_re/screens/homescreen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homePage(),
        '/dea':(context) => detailsPage(),
        '/cart':(context) => cartPage(),
        '/last':(context) => lastPage(),
      },
    );
  }
}
