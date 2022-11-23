import 'package:freezed_annotation/freezed_annotation.dart';

part 'current.freezed.dart';
part 'current.g.dart';

@freezed
class Current with _$Current {
  const factory Current({
    @JsonKey(name: "last_updated_epoch", defaultValue: 0) int? lastUpdatedEpoch,
    @JsonKey(name: "last_updated", defaultValue: "") String? lastUpdated,
    @JsonKey(name: "temp_c", defaultValue: 0) double? tempC,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  factory Current.empty() => _Current();
}
