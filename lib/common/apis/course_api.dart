import 'package:ulearning_app/common/entities/course.dart';
import 'package:ulearning_app/common/utils/http_util.dart';

class CourseAPI {
  static Future<CourseListResponseEntity> courseList() async {
    var response = await HttpUtil().post('api/courseList');
    print("dataaaa ${response.toString()}");
    if (response == null) {
      return CourseListResponseEntity.fromJson({});
    }
    return CourseListResponseEntity.fromJson(response);
  }
}
