part of actions;

@freezed
class GetUserDangers with _$GetUserDangers {
  const factory GetUserDangers({required String uid, required ActionResponse response}) = GetUserDangersStart;

  const factory GetUserDangers.successful(List<Danger> dangers) = GetUserDangersSuccessful;

  const factory GetUserDangers.error(Object error, StackTrace stackTrace) = GetUserDangersError;
}
