import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon_yest/src/services/models/pokemon_item.dart';

part 'pokemon_response.g.dart';

@JsonSerializable()
class PokemonResponse {
  final List<PokemonItem> results;
  PokemonResponse(this.results);

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonResponseToJson(this);
}
