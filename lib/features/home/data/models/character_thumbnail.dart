class CharacterThumbnail {
  final String path;
  final String extension;

  CharacterThumbnail({required this.path, required this.extension});

  factory CharacterThumbnail.fromJson(Map<String, dynamic> json) {
    return CharacterThumbnail(
      path: json['path'],
      extension: json['extension'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'extension': extension,
    };
  }
}
