import 'package:flutter/material.dart';
import 'package:github_finder/usuario.dart';

const kName = TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, height: 2);
const kInfo = TextStyle(fontSize: 25.0, color: Colors.deepPurple);
const kPlaceholderImg = 'images/placeholder-image.png';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.usuario});

  final Usuario usuario;

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
                    Text('Id: ${usuario.id.toString()}', style: kInfo),
                    Text('Nome: ${usuario.name.toString()}', style: kInfo),
                    Text('Seguidores: ${usuario.followers.toString()}',
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
