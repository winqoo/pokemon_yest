import 'dart:convert';
import 'dart:io';

import 'package:pokemon_yest/src/services/api/api_constants.dart';
import 'package:pokemon_yest/src/services/api/api_timeout.dart';
import 'package:pokemon_yest/src/services/api/pokemon_service.dart';
import 'package:pokemon_yest/src/services/models/pokemon_response.dart';
import 'package:pokemon_yest/src/services/models/pokemon_details.dart';
import 'package:http/http.dart' as http;

import 'dart:async';

class PokemonApiService implements PokemonService {
  final http.Client client;

  PokemonApiService(this.client);

  @override
  Future<PokemonDetails> fetchPokemonDetails(String url) async {
    final response = await client.get(url).timeout(longDuration);
    if (response.statusCode == HttpStatus.ok) {
      return PokemonDetails.fromJson(json.decode(response.body));
    } else {
      throw Exception('Problem loading data');
    }
  }

  @override
  Future<PokemonResponse> fetchPokemons() async {
    final response = await client.get(BASE_POKEMON_URL).timeout(longDuration);
    if (response.statusCode == HttpStatus.ok) {
      return PokemonResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Problem loading data');
    }
  }
}
