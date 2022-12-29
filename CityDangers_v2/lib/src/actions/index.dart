library actions;

import 'package:auth_app/src/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.dart';

part 'index.freezed.dart';

part 'logout.dart';

part 'create_user.dart';

part 'post_user.dart';

part 'post_danger.dart';

part 'get_user_dangers.dart';

part 'initialize_user.dart';

part 'initialize_markers.dart';

typedef ActionResponse = void Function(dynamic action);
