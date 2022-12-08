import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/controller/apiController.dart';
import 'package:get/get.dart';

class BannerWidget extends StatelessWidget {
  BannerWidget({super.key});
  CarouselController buttonCarouselController = CarouselController();
  ApiController apiController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        children: [
          CarouselSlider.builder(
            carouselController: buttonCarouselController,
            itemCount: apiController.apidata!.value.body.banners.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  imageUrl:
                      apiController.apidata!.value.body.banners[itemIndex],
                  fit: BoxFit.contain,
                  placeholder: (context, url) {
                    return Container();
                  },
                ),
              );
            },
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.2,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {},
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
