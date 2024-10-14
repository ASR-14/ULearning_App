import 'package:ulearning_app/common/entities/entities.dart';

class HomePageStates {
  const HomePageStates(
      {this.index = 0, this.courseItem = const <CourseItem>[]});
  final int index;
  final List<CourseItem> courseItem;

  HomePageStates copyWith({int? index, List<CourseItem>? courseItem}) {
    return HomePageStates(
        courseItem: courseItem ?? this.courseItem, index: index ?? this.index);
  }
}
