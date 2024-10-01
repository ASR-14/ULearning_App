import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';
import 'package:ulearning_app/common/widgets/flutter_toast.dart';
import 'package:ulearning_app/pages/application/widgets/application_widgets.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        body: buildPage(_index),
        bottomNavigationBar: Container(
          width: 375.w,
          height: 58.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.h),
                  topRight: Radius.circular(20.h)),
              color: AppColors.primaryElement,
              boxShadow: [
                BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 1,
                    color: Colors.grey.withOpacity(0.1))
              ]),
          child: BottomNavigationBar(
            selectedItemColor: AppColors.primaryElement,
            unselectedItemColor: AppColors.primaryFourthElementText,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _index,
            onTap: (value) {
              setState(() {
                _index = value;
              });
            },
            elevation: 0,
            items: [
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
            ],
          ),
        ),
      )),
    );
  }
}
