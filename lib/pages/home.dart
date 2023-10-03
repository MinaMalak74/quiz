import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/pages/second_screen.dart';


import '../widgets/build_icon.dart';
import '../widgets/buildchoice.dart';
import '../widgets/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = 'homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 40.w,
                      height: 40.h,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Moody',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Badge(
                      smallSize: 10,
                      child: Icon(Icons.notifications_none_rounded, size: 24.w),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    Text('Hello, ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp,
                        )),
                    Text(
                      'Sara Rose',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                          color: const Color(0xff371B34)),
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'How are you feeling today ?',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                      fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 16.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BuildEmog(
                      text: 'Love',
                      img: 'assets/images/loveemg.png',
                    ),
                    BuildEmog(
                      text: 'Cool',
                      img: 'assets/images/coolemg.png',
                    ),
                    BuildEmog(
                      text: 'Happy',
                      img: 'assets/images/happyemg.png',
                    ),
                    BuildEmog(
                      text: 'Sad',
                      img: 'assets/images/sad.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    Text(
                      'Feature',
                      style: GoogleFonts.inter(shadows: [
                        const Shadow(
                            blurRadius: 3,
                            color: Colors.black,
                            offset: Offset(0, 1)),
                      ], fontSize: 18.sp, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'See more',
                          style: TextStyle(
                              shadows: const [
                                Shadow(
                                    blurRadius: 2,
                                    color: Colors.black38,
                                    offset: Offset(0, 1)),
                              ],
                              fontSize: 14.sp,
                              color: Colors.green,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                          size: 20.w,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                const SliderWidget(),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exercise',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'See more',
                          style: TextStyle(
                              color: const Color(0xff027A48),
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: const Color(0xff027A48), size: 20.w),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: BuildCochic(
                            select: true,
                            txt: 'Relaxation',
                            img: 'assets/images/q.png',
                            color: Color(0xffF9F5FF))),
                    SizedBox(
                      width: 24.w,
                    ),
                    const Expanded(
                      child: BuildCochic(
                        select: true,
                        txt: 'Meditation',
                        img: 'assets/images/yoga.png',
                        color: Color(0xffFDF2FA),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: BuildCochic(
                        select: true,
                        txt: 'Breathing',
                        img: 'assets/images/breating.png',
                        color: Color.fromRGBO(255, 250, 245, 1),
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    const Expanded(
                      child: BuildCochic(
                        select: true,
                        txt: 'Yoga',
                        img: 'assets/images/run.png',
                        color: Color.fromRGBO(240, 249, 255, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 24,
          showSelectedLabels: true,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          onTap: (value) =>
              Navigator.pushNamed(context, SecondScreen.routeName),
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/home_bottom.png')),
              label: '.',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/item.png')),
              label: 'item',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/celender.png')),
              label: 'celender',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/profile.png')),
              label: 'profile',
            )
          ]),
    );
  }
}
