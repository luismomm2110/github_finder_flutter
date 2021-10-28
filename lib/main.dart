import 'package:flutter/material.dart';
import 'package:github_finder/search_screen.dart';

void main() {
  runApp(GithubFinder());
}

class GithubFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchScreen(),
    );
  }
}
