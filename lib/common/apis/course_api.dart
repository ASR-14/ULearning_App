import 'package:ulearning_app/common/entities/base.dart';
import 'package:ulearning_app/common/entities/course.dart';
import 'package:ulearning_app/common/utils/http_util.dart';

class CourseAPI {
  static Future<CourseListResponseEntity> courseList() async {
    var response = await HttpUtil().post('api/courseList');
    if (response == null) {
      return CourseListResponseEntity.fromJson({});
    }
    return CourseListResponseEntity.fromJson(response);
  }

  static Future<CourseDetailResponseEntity> courseDetail(
      {CourseRequestEntity? params}) async {
    var response = await HttpUtil()
        .post('api/courseDetail', queryParameters: params?.toJson());
    if (response == null) {
      return CourseDetailResponseEntity.fromJson({});
    }
    // print(response.toString());
    return CourseDetailResponseEntity.fromJson(response);
  }

  static Future<BaseResponseEntity> coursePay(
      {CourseRequestEntity? params}) async {
    var response = await HttpUtil()
        .post('api/checkout', queryParameters: params?.toJson());
    if (response == null) {
      return BaseResponseEntity.fromJson({});
    }
    // print(response.toString());
    return BaseResponseEntity.fromJson(response);
  }
}
