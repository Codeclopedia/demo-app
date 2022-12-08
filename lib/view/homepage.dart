import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/apiController.dart';
import 'package:flutter_application_1/view/apidatawidget.dart';
import 'package:flutter_application_1/view/custom/backgroundUi.dart';
import 'package:flutter_application_1/view/custom/customAppbar.dart';
import 'package:flutter_application_1/view/custom/shapes/searchtab.dart';
import 'package:flutter_application_1/view/shimmerWidgets.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  ApiController apiController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          const BackgroundUi(), //the black custom shape ui in background
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: ListView(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.06),
              children: [
                const CustomAppbar(),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03),
                  child: Text(
                    "Hello",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.08,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  "Piyush,",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.12,
                      fontWeight: FontWeight.w900),
                ),
                const SearchTab(),
                FutureBuilder(
                  future: apiController.callApi(),
                  builder: (context, snapshot) {
                    Widget widget =
                        snapshot.hasData ? ApidataWidgets() : ShimmerWidgets();
                    return widget;
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
