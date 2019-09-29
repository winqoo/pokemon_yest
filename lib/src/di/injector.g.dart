// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// InjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  void configure() {
    final Container container = Container();
    container.registerFactory((c) => Client(), name: 'client');
    container.registerFactory<PokemonService, PokemonApiService>(
        (c) => PokemonApiService(c<Client>('client')));
    container.registerSingleton<PokemonRepository, PokemonCacheRepository>(
        (c) => PokemonCacheRepository(c<PokemonService>()));
    container.registerFactory((c) => PokemonsBloc(c<PokemonRepository>()));
  }
}
