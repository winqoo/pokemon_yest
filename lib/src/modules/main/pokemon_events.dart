import 'package:equatable/equatable.dart';

abstract class PokemonEvents extends Equatable {
  PokemonEvents([List props = const []]) : super(props);
}

class FetchPokemonsEvent extends PokemonEvents {
  FetchPokemonsEvent();

  @override
  String toString() => 'FetchPokemonsEvent';
}
