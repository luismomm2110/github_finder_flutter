import 'package:flutter/material.dart';
import 'package:pokedex_fluter/pokemon.dart';

const kPlaceholderImg = 'images/placeholder-image.png';
const kPokemonNameStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);
const kPokemonAttrStyle = TextStyle(
  fontSize: 25.0,
);

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: FadeInImage.assetNetwork(
                  placeholder: kPlaceholderImg,
                  image: pokemon.sprites.frontDefault!,
                  imageScale: 0.3,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(pokemon.name, style: kPokemonNameStyle),
                    Text('Peso: ${pokemon.weight.toString()}',
                        style: kPokemonAttrStyle),
                    Text('Altura: ${pokemon.height.toString()}',
                        style: kPokemonAttrStyle),
                    Text('Tipo(s): ${pokemon.getTypes()}',
                        style: kPokemonAttrStyle),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
