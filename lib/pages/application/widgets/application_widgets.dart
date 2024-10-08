import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';
import 'package:ulearning_app/pages/home/home_page.dart';
import 'package:ulearning_app/pages/profile/profile.dart';

Widget buildPage(int index) {
  List<Widget> widget = [
    const HomePage(),
    const Center(child: Text("Search")),
    const Center(child: Text("Course")),
    const Center(child: Text("Chat")),
    const ProfilePage(),
  ];

  return widget[index];
}

var bottomTabs = [
  BottomNavigationBarItem(
      activeIcon: SizedBox(
        width: 15.w,
        height: 15.h,
        child: Image.asset('assets/icons/home.png',
            color: AppColors.primaryElement),
      ),
      label: "home",
      icon: SizedBox(
        width: 15.w,
        height: 15.h,
        child: Image.asset('assets/icons/home.png'),
      )),
  BottomNavigationBarItem(
      activeIcon: SizedBox(
        width: 15.w,
        height: 15.h,
        child: Image.asset('assets/icons/search2.png',
            color: AppColors.primaryElement),
      ),
      label: "search",
      icon: SizedBox(
        width: 15.w,
        height: 15.h,
        child: Image.asset('assets/icons/search2.png'),
      )),
  BottomNavigationBarItem(
      activeIcon: SizedBox(
        width: 15.w,
        height: 15.h,
        child: Image.asset('assets/icons/play-circle1.png',
            color: AppColors.primaryElement),
      ),
      label: "course",
      icon: SizedBox(
        width: 15.w,
        height: 15.h,
        child: Image.asset('assets/icons/play-circle1.png'),
      )),
  BottomNavigationBarItem(
      activeIcon: SizedBox(
        width: 15.w,
        height: 15.h,
        child: Image.asset('assets/icons/message-circle.png',
            color: AppColors.primaryElement),
      ),
      label: "chat",
      icon: SizedBox(
        width: 15.w,
        height: 15.h,
        child: Image.asset('assets/icons/message-circle.png'),
      )),
  BottomNavigationBarItem(
      activeIcon: SizedBox(
        width: 15.w,
        height: 15.h,
        child: Image.asset('assets/icons/person2.png',
            color: AppColors.primaryElement),
      ),
      label: "search",
      icon: SizedBox(
        width: 15.w,
        height: 15.h,
        child: Image.asset('assets/icons/person2.png'),
      )),
];
