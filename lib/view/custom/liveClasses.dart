import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/custom/shapes/liveClassesTile.dart';
import 'package:get/get.dart';

import '../../controller/apiController.dart';

class LiveClassesWidget extends StatelessWidget {
  LiveClassesWidget({super.key});
  ApiController apiController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Live Classes",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
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
            itemCount: apiController.apidata!.value.body.liveClasses.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: MediaQuery.of(context).size.width * 0.03,
                mainAxisSpacing: MediaQuery.of(context).size.height * 0.022,
                childAspectRatio: 0.95),
            itemBuilder: (context, index) {
              return LiveClassesTile(
                index: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
