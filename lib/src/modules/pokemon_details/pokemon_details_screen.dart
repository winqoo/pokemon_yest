import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_yest/src/data/models/pokemon_model.dart';
import 'package:pokemon_yest/src/resources/strings.dart';

class PokemonDetailsScreen extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailsScreen({Key key, @required this.pokemon})
      : assert(pokemon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(pokemon.name),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            CachedNetworkImage(imageUrl: pokemon.frontImageUrl),
            SizedBox(height: 20),
            Text("${Strings.globalName.getValue()} : ${pokemon.name}"),
            SizedBox(height: 8),
            Text("${Strings.globalHeight.getValue()} : ${pokemon.height}"),
            SizedBox(height: 8),
            Text("${Strings.globalWeight.getValue()} : ${pokemon.weight}"),
          ],
        ),
      ),
    );
  }
}
