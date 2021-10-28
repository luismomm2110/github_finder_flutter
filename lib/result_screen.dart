import 'package:flutter/material.dart';
import 'package:github_finder/usuario.dart';

const kName = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
    height: 2,
    color: Colors.blueAccent);
const kInfo = TextStyle(fontSize: 25.0, color: Colors.cyan);
const kPlaceholderImg = 'images/placeholder-image.png';
const kId = TextStyle(fontSize: 25.0, color: Colors.yellow);

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.usuario});

  final Usuario usuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[850],
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: FadeInImage.assetNetwork(
                  placeholder: kPlaceholderImg,
                  image: usuario.picture,
                  fit: BoxFit.cover,
                  imageScale: 0.025,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(usuario.login, style: kName),
                    Text('Id: ${usuario.id.toString()}', style: kId),
                    Text('Nome: ${usuario.name.toString()}', style: kInfo),
                    Text('Repositórios: ${usuario.repos.toString()}',
                        style: kInfo),
                    Text('Seguidores: ${usuario.followers.toString()}',
                        style: kInfo),
                    Text('Localização: ${usuario.location.toString()}',
                        style: kInfo),
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
