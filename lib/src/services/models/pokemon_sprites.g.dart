// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_sprites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) {
  return PokemonSprites(
      json['front_default'] as String,
      json['front_shiny'] as String,
      json['front_female'] as String,
      json['front_shiny_female'] as String,
      json['back_default'] as String,
      json['back_shiny'] as String,
      json['back_female'] as String,
      json['back_shiny_female'] as String);
}

Map<String, dynamic> _$PokemonSpritesToJson(PokemonSprites instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
      'front_female': instance.frontFemale,
      'front_shiny_female': instance.frontShinyFemale,
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'back_female': instance.backFemale,
      'back_shiny_female': instance.backShinyFemale
    };
