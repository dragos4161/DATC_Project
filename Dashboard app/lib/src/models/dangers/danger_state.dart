part of models;

@freezed
class DangerState with _$DangerState {
  const factory DangerState({
    @Default(<Danger>[]) List<Danger> dangers,
    @Default(<Danger>[]) List<Danger> allDangers,
  }) = DangerState$;

  factory DangerState.fromJson(Map<dynamic, dynamic> json) => _$DangerStateFromJson(Map<String, dynamic>.from(json));
}
