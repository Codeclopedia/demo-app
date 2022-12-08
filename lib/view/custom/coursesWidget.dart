import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/controller/apiController.dart';
import 'package:flutter_application_1/view/custom/shapes/coursesTile.dart';
import 'package:get/get.dart';

class CoursesWidget extends StatelessWidget {
  CoursesWidget({super.key});
  ApiController apiController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Courses",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.07,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.02),
          child: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: apiController.apidata!.value.body.featuredCourses.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: MediaQuery.of(context).size.width * 0.03,
                mainAxisSpacing: MediaQuery.of(context).size.height * 0.022,
                childAspectRatio: 0.95),
            itemBuilder: (context, index) {
              return CoursesTile(
                index: index,
              );
            },
          ),
        ),
        const Align(
            alignment: Alignment.center,
            child: Text(
              "See all",
              style: TextStyle(color: Colors.grey),
            )),
      ],
    );
  }
}
