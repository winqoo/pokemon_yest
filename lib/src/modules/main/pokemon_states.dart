import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:pokemon_yest/src/data/models/pokemon_model.dart';

@immutable
abstract class PokemonState extends Equatable {
  PokemonState([List props = const []]) : super(props);
}

class PokemonLoadingState extends PokemonState {
  @override
  String toString() => 'PokemonLoadingState';
}

class PokemonsLoadedState extends PokemonState {
  final List<Pokemon> pokemons;

  PokemonsLoadedState(this.pokemons) : super([PokemonState]);

  @override
  String toString() => 'PokemonsLoadedState: $pokemons';
}

class PokemonErrorState extends PokemonState {
  final Exception error;

  PokemonErrorState(this.error) : super([error]);

  @override
  String toString() => 'PokemonErrorState: $error';
}
