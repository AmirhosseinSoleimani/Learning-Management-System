import 'package:flutter/cupertino.dart';

class CategoryModel{
  String? id;
  String? name;
  Widget? svgPicture;
  Function? onTap;

  CategoryModel({
    this.id,
    this.name,
    this.svgPicture,
    this.onTap
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    svgPicture = json['picture'];
    onTap = json['onTap'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['picture'] = svgPicture;
    data['onTap'] = onTap;
    return data;
  }
}