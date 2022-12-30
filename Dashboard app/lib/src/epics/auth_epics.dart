import 'package:auth_app/src/actions/index.dart';
import 'package:auth_app/src/data/auth_api.dart';
import 'package:auth_app/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AuthEpics {
  const AuthEpics({required this.api});

  final AuthApi api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateUserStart>(_createUserStart),
      TypedEpic<AppState, PostUserStart>(_postUserStart),
      TypedEpic<AppState, PostDangerStart>(_postDangerStart),
      //TypedEpic<AppState, UpdateDangerStart>(_updateDangerStart),
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, LogoutStart>(_logoutStart),
      TypedEpic<AppState, InitializeUserStart>(_initializeUserStart),
    ]);
  }

  Stream<dynamic> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => api.createUser(email: action.email, password: action.password, name: action.name))
          .map((AppUser user) => CreateUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace))
          .doOnData(action.response);
    });
  }

  Stream<dynamic> _postUserStart(Stream<PostUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((PostUserStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => api.postUser(object: action.object))
          .map((_) => const PostUser.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => PostUser.error(error, stackTrace));
    });
  }

  Stream<dynamic> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => api.login(email: action.email, password: action.password))
          .map((AppUser user) => Login.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Login.error(error, stackTrace))
          .doOnData(action.response);
    });
  }

  Stream<void> _initializeUserStart(Stream<InitializeUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((InitializeUserStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => api.getUser())
          .map((AppUser? user) => InitializeUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeUser.error(error, stackTrace));
    });
  }

  Stream<dynamic> _postDangerStart(Stream<PostDangerStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((PostDangerStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => api.postDanger(danger: action.danger))
          .map((_) => const PostDanger.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => PostDanger.error(error, stackTrace));
    });
  }

  // Stream<dynamic> _updateDangerStart(Stream<UpdateDangerStart> actions, EpicStore<AppState> store) {
  //   return actions.flatMap((UpdateDangerStart action) {
  //     return Stream<void>.value(null) //
  //         .asyncMap((_) => api.updateDanger(details: action.details))
  //         .map((_) => const UpdateDanger.successful())
  //         .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateDanger.error(error, stackTrace));
  //   });
  // }

  Stream<dynamic> _logoutStart(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => api.logout())
          .map((_) => const Logout.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Logout.error(error, stackTrace));
    });
  }
}
