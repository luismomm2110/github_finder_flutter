class Usuario {
  // Construtor
  Usuario(
      {required this.id,
      required this.login,
      required this.name,
      required this.picture,
      required this.followers});

  final int id;
  final int followers;
  final String login;
  final String name;
  final String picture;

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
      id: json["id"],
      followers: json["followers"],
      login: json["login"],
      name: json["name"],
      picture: json["avatar_url"]);
}
