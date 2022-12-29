part of models;

@freezed
class Danger with _$Danger {
  const factory Danger({
    required String type,
    required String latitude,
    required String longitude,
    required String status,
  }) = Danger$;

  factory Danger.fromJson(Map<dynamic, dynamic> json) => _$DangerFromJson(Map<String, dynamic>.from(json));
}
