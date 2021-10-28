// Pega a classe de API e faz a requisição para o serviço do Pokemon

import 'package:github_finder/networking.dart';
import 'package:github_finder/usuario.dart';

const kBaseUrl = 'https://api.github.com/users';

class GithubService {
  static Future<Usuario> getUsuario(String username) async {
    final String url = '$kBaseUrl/$username';
    final response = await NetworkHelper.getData(url);

    return Usuario.fromJson(response);
  }
}
