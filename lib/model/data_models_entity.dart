import 'dart:convert';
import 'package:sliders/generated/json/base/json_field.dart';
import 'package:sliders/generated/json/data_models_entity.g.dart';

@JsonSerializable()
class DataModelsEntity {

	late double id;
	late String name;
	late String description;
	late double price;
	late double stars;
	late double people;
	@JSONField(name: "selected_people")
	late double selectedPeople;
	late String img;
	late String location;
	@JSONField(name: "created_at")
	late String createdAt;
	@JSONField(name: "updated_at")
	late String updatedAt;
  
  DataModelsEntity();

  factory DataModelsEntity.fromJson(Map<String, dynamic> json) => $DataModelsEntityFromJson(json);

  Map<String, dynamic> toJson() => $DataModelsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}