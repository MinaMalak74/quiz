import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'third_screen.dart';
import '../widgets/build_traning.dart';
import '../widgets/buildcontainer.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  static const String routeName = 'secondScreen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/girl.png',
                        width: 56.42.w,
                        height: 56.42.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Jade',
                          style: GoogleFonts.inter(
                              fontSize: 16.sp, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Ready to workout?',
                          style: GoogleFonts.inter(
                              fontSize: 18.sp, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Badge(
                      smallSize: 10,
                      child: Icon(Icons.notifications),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                IntrinsicHeight(
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF8F9FC),
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(20),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BuildCard(
                            img: 'assets/images/heart.png',
                            firstText: 'Heart Rate',
                            secondText: '81',
                            thirdText: 'BPM',
                          ),
                          VerticalDivider(
                            thickness: 1,
                            color: Color(0xffD9D9D9),
                          ),
                          BuildCard(
                            img: 'assets/images/menu.png',
                            firstText: 'To-do',
                            secondText: '32,5',
                            thirdText: '%',
                          ),
                          VerticalDivider(
                            thickness: 1,
                            color: Color(0xffD9D9D9),
                          ),
                          BuildCard(
                            img: 'assets/images/fire.png',
                            firstText: 'Calo',
                            secondText: '1000',
                            thirdText: 'Cal',
                          ),
                          VerticalDivider(
                            thickness: 1,
                            color: Color(0xffD9D9D9),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Workout Programs',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TabBar(
                    isScrollable: true,
                    padding: const EdgeInsets.all(10),
                    tabs: [
                      Text(
                        'All Type',
                        style: GoogleFonts.inter(
                            color: const Color(0xff363F72), fontSize: 16),
                      ),
                      Text(
                        'Full Body',
                        style: GoogleFonts.inter(
                            color: const Color(0xff667085), fontSize: 16),
                      ),
                      Text(
                        'Upper',
                        style: GoogleFonts.inter(
                            color: const Color(0xff667085), fontSize: 16),
                      ),
                      Text(
                        'Lower',
                        style: GoogleFonts.inter(
                            color: const Color(0xff667085), fontSize: 16),
                      )
                    ]),
                SizedBox(
                  height: 24.h,
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        BuildTraning(
                          img: 'assets/images/train1.png',
                          header: 'Morning Yoga',
                          numberOfDays: '7',
                          typeOfTrain: 'Improve mental focus.',
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        BuildTraning(
                            numberOfDays: '3',
                            header: 'Plank Exercise',
                            typeOfTrain: 'Improve posture and stability.',
                            img: 'assets/images/train2.png'),
                        SizedBox(
                          height: 24,
                        ),
                        BuildTraning(
                            numberOfDays: '3',
                            header: 'Plank Exercise',
                            typeOfTrain: 'Improve posture and stability.',
                            img: 'assets/images/train2.png')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            unselectedItemColor: Colors.grey,
            selectedItemColor: const Color(0xff363F72),
            onTap: (value) {
              Navigator.pushNamed(context, ThirdScreen.routeName);
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/home_bottom.png'),
                    size: 24),
                label: '.',
              ),
              BottomNavigationBarItem(
                icon:
                    ImageIcon(AssetImage('assets/images/arrow.png'), size: 24),
                label: 'item',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/w.png'), size: 24),
                label: '.',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/profile.png'),
                    size: 24),
                label: 'profile',
              )
            ]),
      ),
    );
  }
}
