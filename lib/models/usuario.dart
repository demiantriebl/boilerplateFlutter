import 'dart:convert';

Usuario UsuarioFromMap(String str) => Usuario.fromMap(json.decode(str));

String UsuarioToMap(Usuario data) => json.encode(data.toMap());

class Usuario {
  Usuario({
    required this.nombre,
    required this.mail,
    required this.foto,
  });

  final String nombre;
  final String mail;
  final String foto;

  factory Usuario.fromMap(Map<String, dynamic> json) => Usuario(
        nombre: json["nombre"] == null ? null : json["nombre"],
        mail: json["mail"] == null ? null : json["mail"],
        foto: json["foto"] == null ? null : json["foto"],
      );

  Map<String, dynamic> toMap() => {
        "nombre": nombre,
        "mail": mail,
        "foto": foto,
      };
}
