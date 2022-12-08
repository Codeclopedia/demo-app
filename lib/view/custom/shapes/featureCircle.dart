import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/controller/apiController.dart';
import 'package:get/get.dart';

class FeatureCircle extends StatelessWidget {
  final String path;
  FeatureCircle({super.key, required this.path});
  ApiController apiController = Get.find();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.pinkAccent,
      radius: MediaQuery.of(context).size.width * 0.1,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        child: CachedNetworkImage(
          imageUrl: apiController.host + path,
          placeholder: (context, url) {
            return CircularProgressIndicator.adaptive();
          },
        ),
      ),
    );
  }
}
