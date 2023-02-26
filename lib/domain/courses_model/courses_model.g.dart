// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseListModel _$CourseListModelFromJson(Map<String, dynamic> json) =>
    CourseListModel(
      code: json['code'] as int?,
      courseList: (json['courseList'] as List<dynamic>?)
          ?.map((e) => CourseList.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$CourseListModelToJson(CourseListModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'courseList': instance.courseList,
      'message': instance.message,
      'status': instance.status,
    };

CourseList _$CourseListFromJson(Map<String, dynamic> json) => CourseList(
      category: json['category'] as String?,
      courseObjectives: (json['courseObjectives'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: json['id'] as String?,
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      ownerName: json['ownerName'] as String?,
      picture: json['picture'] as String?,
      pictureType: json['pictureType'] as String?,
      publisher: json['publisher'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subhead: json['subhead'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CourseListToJson(CourseList instance) =>
    <String, dynamic>{
      'category': instance.category,
      'courseObjectives': instance.courseObjectives,
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'ownerName': instance.ownerName,
      'picture': instance.picture,
      'pictureType': instance.pictureType,
      'publisher': instance.publisher,
      'sections': instance.sections,
      'subhead': instance.subhead,
      'tags': instance.tags,
    };
