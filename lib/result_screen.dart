import 'package:flutter/material.dart';
import 'package:github_finder/usuario.dart';

const kPlaceholderImg = 'images/placeholder-image.png';
const kUsuarioNameStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);
const kUsuarioAttrStyle = TextStyle(
  fontSize: 25.0,
);

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
                flex: 3,
                child: FadeInImage.assetNetwork(
                  placeholder: kPlaceholderImg,
                  image: usuario.picture,
                  imageScale: 0.3,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(usuario.name, style: kUsuarioNameStyle),
                    Text('Nome: ${usuario.name.toString()}',
                        style: kUsuarioNameStyle),
                    Text('Altura: ${usuario.id.toString()}',
                        style: kUsuarioAttrStyle),
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
