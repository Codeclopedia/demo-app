import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class ShimmerWidgets extends StatelessWidget {
  const ShimmerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 221, 221, 221),
          highlightColor: Colors.white,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.14,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
          ),
        ),
        Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 221, 221, 221),
          highlightColor: Colors.white,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.02),
          child: Shimmer.fromColors(
            baseColor: const Color.fromARGB(255, 221, 221, 221),
            highlightColor: Colors.white,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Shimmer.fromColors(
            baseColor: const Color.fromARGB(255, 221, 221, 221),
            highlightColor: Colors.white,
            child: Text(
              "Courses",
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
            itemCount: 3,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: MediaQuery.of(context).size.width * 0.03,
                mainAxisSpacing: MediaQuery.of(context).size.height * 0.022,
                childAspectRatio: 0.95),
            itemBuilder: (context, index) {
              return Shimmer.fromColors(
                  baseColor: const Color.fromARGB(255, 221, 221, 221),
                  highlightColor: Colors.white,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ));
            },
          ),
        ),
      ],
    );
  }
}
