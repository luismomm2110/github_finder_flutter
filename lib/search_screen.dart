import 'package:flutter/material.dart';
import 'package:github_finder/usuario.dart';
import 'package:github_finder/github_service.dart';
import 'package:github_finder/result_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String? username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                'Usuário de GitHub',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                  onChanged: (value) {
                    username = value;
                  },
                ),
              ),
              TextButton(
                onPressed: () async {
                  Usuario usuario =
                      await GithubService.getUsuario(username!.toLowerCase());
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ResultScreen(usuario: usuario);
                    }),
                  );
                },
                child: Text(
                  'Buscar usuário',
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
