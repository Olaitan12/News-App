import 'package:json_annotation/json_annotation.dart';
part 'category.g.dart';

@JsonSerializable()
class Category {
  Category(this.image, this.title);

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  String image;
  String title;

  @override
  String toString() {
    return 'Category{image: $image, title: $title}';
  }

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}