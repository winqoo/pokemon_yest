import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:pokemon_yest/src/data/models/pokemon_model.dart';
import 'package:pokemon_yest/src/modules/main/list/pokemon_list_item.dart';
import 'package:pokemon_yest/src/modules/main/pokemon_bloc.dart';
import 'package:pokemon_yest/src/modules/main/pokemon_events.dart';
import 'package:pokemon_yest/src/modules/main/pokemon_states.dart';
import 'package:pokemon_yest/src/ui/loading_indicator.dart';

class PokemonListScreen extends StatefulWidget {
  @override
  _PokemonListScreenState createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  PokemonsBloc _pokemonsBloc;

  @override
  void initState() {
    _pokemonsBloc = kiwi.Container().resolve<PokemonsBloc>()
      ..dispatch(FetchPokemonsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: _pokemonsBloc,
        builder: _buildState,
      ),
    );
  }

  Widget _buildState(BuildContext context, PokemonState state) {
    if (state is PokemonLoadingState)
      return LoadingIndicator();
    else if (state is PokemonErrorState)
      return _buildErrorScreen(context, state.error);
    else if (state is PokemonsLoadedState)
      return _buildContent(context, state.pokemons);
    else
      return Container();
  }

  Widget _buildContent(BuildContext context, List<Pokemon> pokemons) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: pokemons.length,
      padding: EdgeInsets.symmetric(vertical: 8),
      separatorBuilder: (BuildContext context, int index) => Divider(
        height: 2,
      ),
      itemBuilder: (BuildContext context, int index) => Container(
        child: PokemonListItem(
          pokemon: pokemons[index],
        ),
      ),
    );
  }

  Widget _buildErrorScreen(BuildContext context, Exception exception) {
    return Container(
      child: Center(
        child: Material(
          child: Text(exception.toString()),
        ),
      ),
    );
  }
}
