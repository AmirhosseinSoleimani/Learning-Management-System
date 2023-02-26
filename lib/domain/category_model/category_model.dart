class CategoryModel{
  String? id;
  String? name;
  String? picture;

  CategoryModel({
    this.id,
    this.name,
    this.picture,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['picture'] = picture;
    return data;
  }
}