import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  HomeModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image});

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}
