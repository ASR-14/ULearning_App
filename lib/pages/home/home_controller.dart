import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/common/apis/course_api.dart';
import 'package:ulearning_app/common/entities/entities.dart';
import 'package:ulearning_app/global.dart';
import 'package:ulearning_app/pages/home/bloc/home_page_blocs.dart';
import 'package:ulearning_app/pages/home/bloc/home_page_events.dart';

class HomeController {
  late BuildContext context;
  UserItem get userProfile => Global.storageService.getUserProfile();

  static final HomeController _singleton = HomeController._external();

  HomeController._external();

  factory HomeController({required BuildContext context}) {
    _singleton.context = context;
    return _singleton;
  }

  Future<void> init() async {
    if (Global.storageService.getUserToken().isNotEmpty) {
      var result = await CourseAPI.courseList();
      if (result.code == 200) {
        if (context.mounted) {
          print("data hhhhmmmm   ${result.data}");
          context.read<HomePageBlocs>().add(HomePageCourseItem(result.data!));
        }
      } else {
        print(result.code);
      }
    } else {
      print("User has already logged out");
    }

    // if (Global.storageService.getUserToken().isNotEmpty) {
    //   var result = await CourseAPI.courseList();
    //   if (result.code == 200) {
    //     context.read<HomePageBlocs>().add(HomePageCourseItem(result.data!));
    //   } else {
    //     print(result.data);
    //   }
    // }
  }
}
