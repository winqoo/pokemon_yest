import 'package:pokemon_yest/src/services/models/pokemon_details.dart';

class Pokemon {
  int id;
  String name;
  int height;
  int weight;
  String frontImageUrl;

  Pokemon(this.id, this.name, this.height, this.weight, this.frontImageUrl);

  Pokemon.fromPokemonDetails(PokemonDetails pokemonDetails) {
    this.id = pokemonDetails.id;
    this.name = pokemonDetails.name;
    this.height = pokemonDetails.height;
    this.weight = pokemonDetails.weight;
    this.frontImageUrl = pokemonDetails.sprites.frontDefault;
  }
}
