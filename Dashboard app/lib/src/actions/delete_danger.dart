part of actions;

@freezed
class DeleteDanger with _$DeleteDanger {
  const factory DeleteDanger(dynamic details) = DeleteDangerStart;

  const factory DeleteDanger.successful() = DeleteDangerSuccessful;

  const factory DeleteDanger.error(Object error, StackTrace stackTrace) = DeleteDangerError;
}
