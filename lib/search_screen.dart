import 'package:flutter/material.dart';
import 'package:pokedex_fluter/pokemon.dart';
import 'package:pokedex_fluter/pokemon_service.dart';
import 'package:pokedex_fluter/result_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String? pokemonName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                'Busca de Pokemon',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                  onChanged: (value) {
                    pokemonName = value;
                  },
                ),
              ),
              TextButton(
                onPressed: () async {
                  Pokemon pokemon = await PokemonService.fetchPokemon(
                      pokemonName!.toLowerCase());
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ResultScreen(pokemon: pokemon);
                    }),
                  );
                },
                child: Text(
                  'Buscar Pokemon',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
