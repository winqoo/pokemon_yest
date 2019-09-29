import 'package:json_annotation/json_annotation.dart';

part 'pokemon_item.g.dart';

@JsonSerializable()
class PokemonItem {
  String name;

  String url;

  factory PokemonItem.fromJson(Map<String, dynamic> json) =>
      _$PokemonItemFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonItemToJson(this);

  PokemonItem(this.name, this.url);
}
