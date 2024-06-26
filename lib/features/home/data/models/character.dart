import 'character_thumbnail.dart';

class Character {
  final int id;
  final String name;
  final String description;
  final String modified;
  final CharacterThumbnail thumbnail;

  Character({
    required this.id,
    required this.name,
    required this.description,
    required this.modified,
    required this.thumbnail,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      description: json['description'] ?? '',
      modified: json['modified'],
      thumbnail: CharacterThumbnail.fromJson(json['thumbnail']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'modified': modified,
      'thumbnail': thumbnail.toJson(),
    };
  }
}
