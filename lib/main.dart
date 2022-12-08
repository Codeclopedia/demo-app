import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/apiController.dart';
import 'package:flutter_application_1/view/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ApiController controller = Get.put(ApiController());
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.black,
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}
