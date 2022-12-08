import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/controller/apiController.dart';
import 'package:get/get.dart';

class CoursesTile extends StatelessWidget {
  final int index;
  CoursesTile({super.key, required this.index});
  ApiController apiController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: CachedNetworkImage(
                imageUrl: apiController.host +
                    apiController
                        .apidata!.value.body.featuredCourses[index].image,
                fit: BoxFit.cover,
                placeholder: (context, url) {
                  return Container();
                },
              ),
            ),
          ),
          Flexible(
            child: Text(
              apiController.apidata!.value.body.featuredCourses[index].name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.035),
            ),
          ),
        ],
      ),
    );
  }
}
