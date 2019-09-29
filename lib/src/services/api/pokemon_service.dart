import 'package:pokemon_yest/src/services/models/pokemon_response.dart';
import 'package:pokemon_yest/src/services/models/pokemon_details.dart';

abstract class PokemonService {
  Future<PokemonResponse> fetchPokemons();

  Future<PokemonDetails> fetchPokemonDetails(String url);
}
