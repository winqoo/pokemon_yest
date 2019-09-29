import 'package:flutter/material.dart';
import 'package:pokemon_yest/src/modules/main/pokemon_list_screen.dart';
import 'package:pokemon_yest/src/resources/strings.dart';
import 'package:pokemon_yest/src/resources/themes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Strings.init(context);
    return MaterialApp(
      theme: lightModeTheme,
      home: PokemonListScreen(),
    );
  }
}
