import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';
import 'package:ulearning_app/common/values/constant.dart';
import 'package:ulearning_app/common/widgets/base_text_widget.dart';
import 'package:ulearning_app/pages/course/course_detail/bloc/course_detail_states.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    title: reusableText("Course detail"),
  );
}

Widget thumbNail(String thumbn) {
  return Container(
    width: 325.w,
    height: 220.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.w),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 0.1,
              spreadRadius: 1)
        ],
        image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: NetworkImage("${AppConstants.SERVER_UPLOADS}$thumbn"))),
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

Widget descriptionText(String description) {
  return reusableText(description,
      color: AppColors.primaryThirdElementText,
      fontWeight: FontWeight.normal,
      fontSize: 11.sp);
}

Widget courseSummaryTitle() {
  return reusableText("The Course Includes", fontSize: 14.sp);
}

Widget courseSummaryView(BuildContext context, CourseDetailStates state) {
  var imagesInfo = <String, String>{
    "${state.courseItem!.video_len.toString()} Hours Video": "video_detail.png",
    "Total ${state.courseItem!.lesson_num.toString()} Lessons":
        "file_detail.png",
    "67 Downloadable Resources": "download_detail.png",
  };
  return Column(
    children: [
      ...List.generate(
          imagesInfo.length,
          (index) => GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 15.h),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        // width: 30.w,
                        // height: 30.w,
                        // padding: const EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.w),
                            color: AppColors.primaryElement),
                        child: Image.asset(
                          "assets/icons/${imagesInfo.values.elementAt(index)}",
                          width: 30.w,
                          height: 30.w,
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        imagesInfo.keys.elementAt(index),
                        style: TextStyle(
                            color: AppColors.primarySecondaryElementText,
                            fontWeight: FontWeight.bold,
                            fontSize: 11.sp),
                      ),
                    ],
                  ),
                ),
              )),
    ],
  );
}

//////
Widget courseLessonList() {
  return Container(
    width: 325.w,
    height: 100.h,
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(10.w),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 1))
        ]),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60.w,
                height: 60.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.h),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/icons/image_1.png"))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _listContainer(),
                  _listContainer(
                      fontSize: 10,
                      color: AppColors.primaryThirdElementText,
                      fontWeight: FontWeight.normal)
                ],
              )
            ],
          ),
          Container(
            child: Image(
                height: 24.h,
                width: 24.h,
                image: const AssetImage("assets/icons/arrow_right.png")),
          )
        ],
      ),
    ),
  );
}

Widget _listContainer(
    {double fontSize = 13,
    Color color = AppColors.primaryText,
    FontWeight fontWeight = FontWeight.bold}) {
  return Container(
    width: 200.w,
    margin: EdgeInsets.only(left: 6.w),
    child: Text(
      "UI Design",
      overflow: TextOverflow.clip,
      maxLines: 1,
      style: TextStyle(
          color: color, fontSize: fontSize.sp, fontWeight: fontWeight),
    ),
  );
}
