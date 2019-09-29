// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) {
  return PokemonResponse((json['results'] as List)
      ?.map((e) =>
          e == null ? null : PokemonItem.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$PokemonResponseToJson(PokemonResponse instance) =>
    <String, dynamic>{'results': instance.results};
