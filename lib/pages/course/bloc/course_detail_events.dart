import 'package:ulearning_app/common/entities/entities.dart';

abstract class CourseDetailEvents {
  const CourseDetailEvents();
}

class TriggerCourseDetail extends CourseDetailEvents {
  const TriggerCourseDetail(this.courseItem) : super();
  final CourseItem courseItem;
}
