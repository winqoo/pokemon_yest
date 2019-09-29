import 'package:pokemon_yest/src/services/models/pokemon_details.dart';

abstract class PokemonRepository {
  Future<List<PokemonDetails>> getPokemons();
}
