import 'package:pokemon_yest/src/services/api/pokemon_service.dart';
import 'package:pokemon_yest/src/services/models/pokemon_details.dart';
import 'package:pokemon_yest/src/services/repositories/pokemon/pokemon_repository.dart';

class PokemonCacheRepository implements PokemonRepository {
  List<PokemonDetails> _pokemons;
  final PokemonService pokemonService;

  PokemonCacheRepository(this.pokemonService);

  @override
  Future<List<PokemonDetails>> getPokemons() async {
    if (_pokemons == null) {
      var pokemonDetails = await pokemonService.fetchPokemons();

      _pokemons = await Stream.fromIterable((pokemonDetails.results))
          .asyncMap((detail) async =>
              await pokemonService.fetchPokemonDetails(detail.url))
          .toList();
    }
    return _pokemons;
  }
}
