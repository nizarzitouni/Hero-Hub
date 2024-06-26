import 'character.dart';

class MarvelData {
  final int offset;
  final int limit;
  final int total;
  final int count;
  final List<Character> results;

  MarvelData({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
  });

  factory MarvelData.fromJson(Map<String, dynamic> json) {
    return MarvelData(
      offset: json['offset'],
      limit: json['limit'],
      total: json['total'],
      count: json['count'],
      results: List<Character>.from(json['results'].map((x) => Character.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
      'limit': limit,
      'total': total,
      'count': count,
      'results': List<dynamic>.from(results.map((x) => x.toJson())),
    };
  }
}
