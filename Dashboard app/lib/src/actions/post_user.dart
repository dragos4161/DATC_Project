part of actions;

@freezed
class PostUser with _$PostUser {
  const factory PostUser({required dynamic object}) = PostUserStart;

  const factory PostUser.successful() = PostUserSuccessful;

  const factory PostUser.error(Object error, StackTrace stackTrace) = PostUserError;
}
