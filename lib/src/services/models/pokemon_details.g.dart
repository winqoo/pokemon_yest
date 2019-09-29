// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetails _$PokemonDetailsFromJson(Map<String, dynamic> json) {
  return PokemonDetails(
      json['name'] as String,
      json['id'] as int,
      json['height'] as int,
      json['weight'] as int,
      json['sprites'] == null
          ? null
          : PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PokemonDetailsToJson(PokemonDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'sprites': instance.sprites
    };
