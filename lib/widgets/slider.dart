import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/img_model.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final List<ImageModel> imagesList = [
    ImageModel('assets/images/slider.png', 0),
    ImageModel('assets/images/slider.png', 1),
    ImageModel('assets/images/slider.png', 2)
  ];
  int currentIndex = 0;

  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            carouselController: controller,
            options: CarouselOptions(
              height: 168,
              aspectRatio: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOutQuad,
              enlargeCenterPage: true,
              enlargeFactor: .2,
              onPageChanged: (index, reason) {
                currentIndex = index;
                setState(() {});
              },
            ),
            items: imagesList
                .map(
                  (e) => Card(
                    elevation: 20,
                    shape: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            e.img,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                )
                .toList()),
        const SizedBox(
          height: 10,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagesList
                .asMap()
                .entries
                .map((e) => Container(
                      width: 6,
                      height: 6,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == e.key
                              ?const Color(0xff98A2B3)
                              : const Color(0xffD9D9D9)),
                    ))
                .toList())
      ],
    );
  }
}
