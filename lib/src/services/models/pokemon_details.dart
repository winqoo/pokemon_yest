import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon_yest/src/services/models/pokemon_sprites.dart';

part 'pokemon_details.g.dart';

@JsonSerializable()
class PokemonDetails {
  int id;
  String name;
  int height;
  int weight;
  PokemonSprites sprites;

  factory PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDetailsToJson(this);

  PokemonDetails(
    this.name,
    this.id,
    this.height,
    this.weight,
    this.sprites,
  );
}
