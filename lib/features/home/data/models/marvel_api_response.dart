import 'marvel_data.dart';

class MarvelApiResponse {
  final int code;
  final String status;
  final MarvelData data;

  MarvelApiResponse({
    required this.code,
    required this.status,
    required this.data,
  });

  factory MarvelApiResponse.fromJson(Map<String, dynamic> json) {
    return MarvelApiResponse(
      code: json['code'],
      status: json['status'],
      data: MarvelData.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'status': status,
      'data': data.toJson(),
    };
  }
}
