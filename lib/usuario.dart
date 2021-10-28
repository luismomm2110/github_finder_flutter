class Usuario {
  // Construtor
  Usuario({required this.id, required this.name, required this.picture});

  final String id;
  final String name;
  final String picture;

  factory Usuario.fromJson(Map<String, dynamic> json) =>
      Usuario(id: json["id"], name: json["name"], picture: json["avatar_url"]);
}
