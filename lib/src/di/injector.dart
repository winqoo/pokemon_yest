import 'package:http/http.dart';
import 'package:kiwi/kiwi.dart';
import 'package:pokemon_yest/src/modules/main/pokemon_bloc.dart';
import 'package:pokemon_yest/src/services/api/pokemon_api_service.dart';
import 'package:pokemon_yest/src/services/api/pokemon_service.dart';
import 'package:pokemon_yest/src/services/repositories/pokemon/pokemon_cache_repository.dart';
import 'package:pokemon_yest/src/services/repositories/pokemon/pokemon_repository.dart';

part 'injector.g.dart';

abstract class Injector {
  @Register.factory(
    Client,
    name: 'client',
  )
  @Register.factory(
    PokemonService,
    from: PokemonApiService,
    resolvers: {
      Client: 'client',
    },
  )
  @Register.singleton(PokemonRepository, from: PokemonCacheRepository)
  @Register.factory(PokemonsBloc)
  void configure();

  static void inject() {
    _$Injector()..configure();
  }
}
