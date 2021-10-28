class Usuario {
  // Construtor
  Usuario(
      {required this.id,
      required this.login,
      required this.name,
      required this.picture,
      required this.followers,
      required this.location,
      required this.repos});

  final int id;
  final int followers;
  final int repos;
  final String login;
  final String name;
  final String picture;
  final String location;

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
      id: json["id"],
      followers: json["followers"],
      login: json["login"],
      name: json["name"],
      picture: json["avatar_url"],
      location: json["location"],
      repos: json["public_repos"]);
}
