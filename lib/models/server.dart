import 'package:freezed_annotation/freezed_annotation.dart';
part 'server.freezed.dart';
part 'server.g.dart'; // for JSON serialization

@freezed
class Server with _$Server {
  const factory Server({required String url, required String token}) = _Server;

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
}
