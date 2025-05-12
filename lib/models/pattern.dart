import 'package:freezed_annotation/freezed_annotation.dart';
part 'pattern.freezed.dart';
part 'pattern.g.dart'; // for JSON serialization

@freezed
class Pattern with _$Pattern {
  const factory Pattern({
    required String id,
    required String source,
    required List<String> queryKeywords,
    required List<String> searchKeywords,
    required String downloadPath,
    required String period,
    required String dayIndicator,
    required int fireHour,
    required int fireMinute,
  }) = _Pattern;

  factory Pattern.fromJson(Map<String, dynamic> json) =>
      _$PatternFromJson(json);
}
