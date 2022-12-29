import 'package:auth_app/src/actions/index.dart';
import 'package:auth_app/src/data/auth_api.dart';
import 'package:auth_app/src/epics/auth_epics.dart';
import 'package:auth_app/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AppEpics {
  const AppEpics({required this.authApi});

  final AuthApi authApi;

  Epic<AppState> get epic {
    return combineEpics(
      <Epic<AppState>>[
        AuthEpics(api: authApi).epic,
        TypedEpic<AppState, GetUserDangersStart>(_getUserDangersStart),
        TypedEpic<AppState, InitializeMarkersStart>(_initializeMarkersStart),
      ],
    );
  }

  Stream<dynamic> _getUserDangersStart(Stream<GetUserDangersStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetUserDangersStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => authApi.getUserDangers(uid: action.uid))
          .map((List<Danger> dangers) => GetUserDangers.successful(dangers))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetUserDangers.error(error, stackTrace))
          .doOnData(action.response);
    });
  }

  Stream<dynamic> _initializeMarkersStart(Stream<InitializeMarkersStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((InitializeMarkersStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => authApi.getDangers())
          .map((List<Danger> dangers) => InitializeMarkers.successful(dangers))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeMarkers.error(error, stackTrace))
          .doOnData(action.response);
    });
  }
}
