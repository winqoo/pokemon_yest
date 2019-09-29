import 'package:json_annotation/json_annotation.dart';

part 'pokemon_sprites.g.dart';

@JsonSerializable()
class PokemonSprites {
  @JsonKey(name: 'front_default')
  String frontDefault;

  @JsonKey(name: 'front_shiny')
  String frontShiny;

  @JsonKey(name: 'front_female')
  String frontFemale;

  @JsonKey(name: 'front_shiny_female')
  String frontShinyFemale;

  @JsonKey(name: 'back_default')
  String backDefault;

  @JsonKey(name: 'back_shiny')
  String backShiny;

  @JsonKey(name: 'back_female')
  String backFemale;

  @JsonKey(name: 'back_shiny_female')
  String backShinyFemale;

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonSpritesToJson(this);

  PokemonSprites(
    this.frontDefault,
    this.frontShiny,
    this.frontFemale,
    this.frontShinyFemale,
    this.backDefault,
    this.backShiny,
    this.backFemale,
    this.backShinyFemale,
  );
}
