part of actions;

@freezed
class GetAllDangers with _$GetAllDangers {
  const factory GetAllDangers() = GetAllDangersStart;

  const factory GetAllDangers.successful(List<Danger> dangers) = GetAllDangersSuccessful;

  const factory GetAllDangers.error(Object error, StackTrace stackTrace) = GetAllDangersError;
}
