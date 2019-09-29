import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_yest/src/data/models/pokemon_model.dart';
import 'package:pokemon_yest/src/modules/pokemon_details/pokemon_details_screen.dart';

class PokemonListItem extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonListItem({Key key, @required this.pokemon})
      : assert(pokemon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Row(
          children: <Widget>[
            CachedNetworkImage(imageUrl: pokemon.frontImageUrl),
            Text(pokemon.name),
          ],
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PokemonDetailsScreen(pokemon: pokemon),
            ),
          );
        });
  }
}
