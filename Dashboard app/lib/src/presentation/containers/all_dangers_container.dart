import 'package:auth_app/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class AllDangersContainer extends StatelessWidget {
  const AllDangersContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Danger>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Danger>>(
      converter: (Store<AppState> store) {
        return store.state.dangers.allDangers;
      },
      builder: builder,
    );
  }
}
