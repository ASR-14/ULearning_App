import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';
import 'package:ulearning_app/common/widgets/base_text_widget.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    title: reusableText("Course detail"),
  );
}

Widget thubNail() {
  return Container(
    width: 325.w,
    height: 230.h,
    decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/icons/image_1.png'))),
  );
}

Widget menuView() {
  return SizedBox(
    width: 325.w,
    child: Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            decoration: BoxDecoration(
                color: AppColors.primaryElement,
                borderRadius: BorderRadius.circular(7.w),
                border: Border.all(color: AppColors.primaryElement)),
            child: reusableText("Author Page",
                color: AppColors.primaryElementText,
                fontWeight: FontWeight.normal,
                fontSize: 10.sp),
          ),
        ),
        _iconAndNum("assets/icons/people.png", 0),
        _iconAndNum("assets/icons/star.png", 0)
      ],
    ),
  );
}

Widget _iconAndNum(String iconPath, int num) {
  return Container(
    margin: EdgeInsets.only(left: 30.w),
    child: Row(
      children: [
        Image(image: AssetImage(iconPath), width: 20.w, height: 20.h),
        reusableText(num.toString(),
            color: AppColors.primaryThirdElementText,
            fontSize: 11.sp,
            fontWeight: FontWeight.normal)
      ],
    ),
  );
}

Widget goBuyButton(String name) {
  return Container(
    width: 330.w,
    height: 50.h,
    decoration: BoxDecoration(
        color: AppColors.primaryElement,
        borderRadius: BorderRadius.circular(10.w),
        border: Border.all(color: AppColors.primaryElement)),
    child: Center(
        child: Text(
      name,
      style: TextStyle(
          color: AppColors.primaryElementText,
          fontSize: 16.sp,
          fontWeight: FontWeight.normal),
    )),
  );
}

Widget descriptionText() {
  return reusableText(
      "During development, Flutter apps run in a VM that offers stateful hot reload of changes without needing a full recompile. For release, Flutter apps are compiled directly to machine code, whether Intel x64 or ARM instructions, or to JavaScript if targeting the web. The framework is open source, with a permissive BSD license, and has a thriving ecosystem of third-party packages that supplement the core library functionality.",
      color: AppColors.primaryThirdElementText,
      fontWeight: FontWeight.normal,
      fontSize: 11.sp);
}
