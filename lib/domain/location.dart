import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    @JsonKey(name: "tz_id", defaultValue: "error")
        String? tzid,
    @JsonKey(
      name: "localtime_epoch",
    )
        double? localtimeepoch,
    required String localtime,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  factory Location.empty() => const _Location(
      name: "",
      country: "",
      region: "",
      lat: 0,
      lon: 0,
      localtime: "",
      localtimeepoch: 0,
      tzid: "");
}
