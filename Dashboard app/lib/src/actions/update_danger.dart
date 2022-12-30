part of actions;

@freezed
class UpdateDanger with _$UpdateDanger {
  const factory UpdateDanger(dynamic details) = UpdateDangerStart;

  const factory UpdateDanger.successful() = UpdateDangerSuccessful;

  const factory UpdateDanger.error(Object error, StackTrace stackTrace) = UpdateDangerError;
}
