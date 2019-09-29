import 'package:bloc/bloc.dart';
import 'package:pokemon_yest/src/data/models/pokemon_model.dart';
import 'package:pokemon_yest/src/modules/main/pokemon_events.dart';
import 'package:pokemon_yest/src/modules/main/pokemon_states.dart';
import 'package:pokemon_yest/src/services/repositories/pokemon/pokemon_repository.dart';

class PokemonsBloc extends Bloc<PokemonEvents, PokemonState> {
  final PokemonRepository _pokemonRepository;

  PokemonsBloc(this._pokemonRepository);

  @override
  PokemonState get initialState => PokemonLoadingState();

  @override
  Stream<PokemonState> mapEventToState(PokemonEvents event) async* {
    if (event is FetchPokemonsEvent) {
      yield* _getPokemons();
    }
  }

  Stream<PokemonState> _getPokemons() async* {
    yield PokemonLoadingState();
    try {
      var pokemons = await _pokemonRepository.getPokemons();
      yield PokemonsLoadedState(pokemons
          .map((pokemonDetails) => Pokemon.fromPokemonDetails(pokemonDetails))
          .take(10)
          .toList());
    } catch (e) {
      yield PokemonErrorState(e);
    }
  }
}
