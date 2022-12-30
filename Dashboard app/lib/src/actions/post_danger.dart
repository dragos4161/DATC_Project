part of actions;

@freezed
class PostDanger with _$PostDanger {
  const factory PostDanger(dynamic danger) = PostDangerStart;

  const factory PostDanger.successful() = PostDangerSuccessful;

  const factory PostDanger.error(Object error, StackTrace stackTrace) = PostDangerError;
}
