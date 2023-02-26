
import 'package:json_annotation/json_annotation.dart';
part 'courses_model.g.dart';

@JsonSerializable()
class CourseListModel {
  int? code;
  List<CourseList>? courseList;
  String? message;
  bool? status;

  CourseListModel({this.code, this.courseList, this.message, this.status});
  factory CourseListModel.fromJson(Map<String, dynamic> json) => _$CourseListModelFromJson(json);

  Map<String, dynamic> toJson() => _$CourseListModelToJson(this);

}

@JsonSerializable()
class CourseList {
  String? category;
  List<String>? courseObjectives;
  String? id;
  String? name;
  String? owner;
  String? ownerName;
  String? picture;
  String? pictureType;
  String? publisher;
  List<String>? sections;
  String? subhead;
  List<String>? tags;

  CourseList(
      {this.category,
        this.courseObjectives,
        this.id,
        this.name,
        this.owner,
        this.ownerName,
        this.picture,
        this.pictureType,
        this.publisher,
        this.sections,
        this.subhead,
        this.tags});

  factory CourseList.fromJson(Map<String, dynamic> json) => _$CourseListFromJson(json);

  Map<String, dynamic> toJson() => _$CourseListToJson(this);

}