part of actions;

@freezed
class InitializeMarkers with _$InitializeMarkers {
  const factory InitializeMarkers({required ActionResponse response}) = InitializeMarkersStart;

  const factory InitializeMarkers.successful(List<Danger> dangers) = InitializeMarkersSuccessful;

  const factory InitializeMarkers.error(Object error, StackTrace stackTrace) = InitializeMarkersError;
}
