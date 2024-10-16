import 'package:ulearning_app/common/entities/entities.dart';

class CourseDetailStates {
  const CourseDetailStates({this.courseItem});
  final CourseItem? courseItem;

  CourseDetailStates copyWith({CourseItem? courseItem}) {
    return CourseDetailStates(courseItem: courseItem ?? this.courseItem);
  }
}
