import 'package:sliders/generated/json/base/json_convert_content.dart';
import 'package:sliders/model/data_models_entity.dart';

DataModelsEntity $DataModelsEntityFromJson(Map<String, dynamic> json) {
	final DataModelsEntity dataModelsEntity = DataModelsEntity();
	final double? id = jsonConvert.convert<double>(json['id']);
	if (id != null) {
		dataModelsEntity.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		dataModelsEntity.name = name;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		dataModelsEntity.description = description;
	}
	final double? price = jsonConvert.convert<double>(json['price']);
	if (price != null) {
		dataModelsEntity.price = price;
	}
	final double? stars = jsonConvert.convert<double>(json['stars']);
	if (stars != null) {
		dataModelsEntity.stars = stars;
	}
	final double? people = jsonConvert.convert<double>(json['people']);
	if (people != null) {
		dataModelsEntity.people = people;
	}
	final double? selectedPeople = jsonConvert.convert<double>(json['selected_people']);
	if (selectedPeople != null) {
		dataModelsEntity.selectedPeople = selectedPeople;
	}
	final String? img = jsonConvert.convert<String>(json['img']);
	if (img != null) {
		dataModelsEntity.img = img;
	}
	final String? location = jsonConvert.convert<String>(json['location']);
	if (location != null) {
		dataModelsEntity.location = location;
	}
	final String? createdAt = jsonConvert.convert<String>(json['created_at']);
	if (createdAt != null) {
		dataModelsEntity.createdAt = createdAt;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		dataModelsEntity.updatedAt = updatedAt;
	}
	return dataModelsEntity;
}

Map<String, dynamic> $DataModelsEntityToJson(DataModelsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['description'] = entity.description;
	data['price'] = entity.price;
	data['stars'] = entity.stars;
	data['people'] = entity.people;
	data['selected_people'] = entity.selectedPeople;
	data['img'] = entity.img;
	data['location'] = entity.location;
	data['created_at'] = entity.createdAt;
	data['updated_at'] = entity.updatedAt;
	return data;
}