import 'package:flutter/material.dart';

import 'package:flutter_application_1/controller/apiController.dart';
import 'package:flutter_application_1/view/custom/banner.dart';
import 'package:flutter_application_1/view/custom/coursesWidget.dart';
import 'package:flutter_application_1/view/custom/liveClasses.dart';
import 'package:flutter_application_1/view/custom/shapes/coursesTile.dart';
import 'package:flutter_application_1/view/custom/shapes/featureCircle.dart';
import 'package:flutter_application_1/view/custom/shapes/liveClassesTile.dart';
import 'package:get/get.dart';

class ApidataWidgets extends StatelessWidget {
  ApidataWidgets({super.key});
  ApiController apiController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerWidget(),
        Container(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.04),
                  child: Text(
                    "EMPOWERING EDUCATIONS",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.width * 0.04),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Image.asset(
                  "assets/—Pngtree—teacher female superman image_6324397.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.02),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeatureCircle(
                  path: apiController
                      .apidata!.value.body.featuredCategories[0].image,
                ),
                FeatureCircle(
                  path: apiController
                      .apidata!.value.body.featuredCategories[1].image,
                ),
                FeatureCircle(
                  path: apiController
                      .apidata!.value.body.featuredCategories[2].image,
                ),
              ],
            ),
          ),
        ),
        CoursesWidget(),
        LiveClassesWidget()
      ],
    );
  }
}
