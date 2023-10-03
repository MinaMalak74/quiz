import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/tab_model.dart';
import '../widgets/doctor.dart';
import '../widgets/stack_img.dart';
import '../widgets/tabs.dart';


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  static const String routeName = 'thirdScreen';
  final List<TabModel> tabs = const [
    TabModel(
      containerBackGroundColor: Color(0xffF4EBFF),
      containerBorderColor: Color(0xffD6BBFB),
      txt: 'Discover',
      txtColor: Color(0xff6941C6),
    ),
    TabModel(
        containerBackGroundColor: Color(0xffffffff),
        containerBorderColor: Color(0xffE4E7EC),
        txt: 'News',
        txtColor: Color(0xff667085)),
    TabModel(
        containerBackGroundColor: Color(0xffffffff),
        containerBorderColor: Color(0xffE4E7EC),
        txt: 'Most Viewed',
        txtColor: Color(0xff667085)),
    TabModel(
        containerBackGroundColor: Color(0xffffffff),
        containerBorderColor: Color(0xffE4E7EC),
        txt: 'Saved',
        txtColor: Color(0xff667085))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff9fafb),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/flower.png'),
                      Text('AliceCare',
                          style: GoogleFonts.milonga(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xffD0D5DD),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Color(0xff667085),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Text(
                          'Articles, Video, Audio and More,...',
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff667085)),
                        ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => TabWidget(
                            txt: tabs[index].txt,
                            containerBackGroundColor:
                                tabs[index].containerBackGroundColor,
                            txtBackGroundColor: tabs[index].txtColor,
                            borderColor: tabs[index].containerBorderColor),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 8),
                        itemCount: tabs.length),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Hot topics',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff5925DC),
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff5925DC),
                        size: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                   SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ImageContainer(img: 'assets/images/self_care.png'),
                        SizedBox(
                          width: 10,
                        ),
                        ImageContainer(
                          img: 'assets/images/cycle.png',
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Get Tips',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ContactDoctor(),
                  const SizedBox(
                    height: 24,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Cycle Phases and Period',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff5925DC),
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff5925DC),
                        size: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: 1,
            iconSize: 50,
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            unselectedItemColor: Colors.grey,
            selectedItemColor: const Color(0xff6941C6),
            onTap: (value) {
              Navigator.pushNamed(context, ThirdScreen.routeName);
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/celender.png')),
                label: 'Today',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/item2.png')),
                label: 'Insights',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/chat.png')),
                label: 'chat',
              ),
            ]));
  }
}
