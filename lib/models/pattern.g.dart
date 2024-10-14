// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pattern.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatternImpl _$$PatternImplFromJson(Map<String, dynamic> json) =>
    _$PatternImpl(
      id: json['id'] as String,
      source: json['source'] as String,
      queryKeywords: (json['queryKeywords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      searchKeywords: (json['searchKeywords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      downloadPath: json['downloadPath'] as String,
      period: json['period'] as String,
      dayIndicator: json['dayIndicator'] as String,
      fireTime: DateTime.parse(json['fireTime'] as String),
    );

Map<String, dynamic> _$$PatternImplToJson(_$PatternImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'queryKeywords': instance.queryKeywords,
      'searchKeywords': instance.searchKeywords,
      'downloadPath': instance.downloadPath,
      'period': instance.period,
      'dayIndicator': instance.dayIndicator,
      'fireTime': instance.fireTime.toIso8601String(),
    };
