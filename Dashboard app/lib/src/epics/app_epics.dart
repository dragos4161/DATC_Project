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
        <Epic<AppState>>[AuthEpics(api: authApi).epic,
          TypedEpic<AppState, GetUserDangersStart>(_getUserDangersStart),
          TypedEpic<AppState, GetAllDangersStart>(_getAllDangersStart),
          TypedEpic<AppState, UpdateDangerStart>(_updateDangerStart),
          TypedEpic<AppState, DeleteDangerStart>(_deleteDangerStart),
        ],);
  }


  Stream<dynamic> _getUserDangersStart(Stream<GetUserDangersStart> actions, EpicStore<AppState> store)  {
    return actions.flatMap((GetUserDangersStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => authApi.getUserDangers(uid: action.uid))
          .map((List<Danger> dangers) => GetUserDangers.successful(dangers))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetUserDangers.error(error, stackTrace))
          .doOnData(action.response);
    });
  }

  Stream<dynamic> _getAllDangersStart(Stream<GetAllDangersStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetAllDangersStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => authApi.getDangers())
          .map((List<Danger> dangers) => GetAllDangers.successful(dangers))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetAllDangers.error(error, stackTrace));
    });
  }

  Stream<dynamic> _updateDangerStart(Stream<UpdateDangerStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateDangerStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => authApi.updateDanger(details: action.details))
          .map((_) => const UpdateDanger.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateDanger.error(error, stackTrace));
    });
  }

  Stream<dynamic> _deleteDangerStart(Stream<DeleteDangerStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((DeleteDangerStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => authApi.deleteDanger(details: action.details))
          .map((_) => const DeleteDanger.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => DeleteDanger.error(error, stackTrace));
    });
  }
}
