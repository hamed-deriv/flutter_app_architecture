import 'package:flutter/material.dart';

import 'package:flutter_app_architecture/structure/domain/base_entity.dart';
import 'package:flutter_app_architecture/structure/presentation/base_widget.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state.dart';

import 'package:flutter_deriv_bloc_manager/manager.dart';

import 'package:example/sample_component/data/mock_user_repository.dart';
import 'package:example/sample_component/domain/user_entity.dart';
import 'package:example/sample_component/domain/user_service.dart';
import 'package:example/sample_component/presentation/user_cubit.dart';

void main() {
  BlocManager.instance.register(
    UserCubit(service: UserService(MockUserRepository())),
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: Scaffold(
          appBar: AppBar(elevation: 0, title: const Text('Flutter Demo')),
          body: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: BaseWidget<UserEntity, UserCubit>(
                      loadingWidgetBuilder:
                          (BuildContext context, BaseState<BaseEntity> state) =>
                              const CircularProgressIndicator(),
                      successWidgetBuilder:
                          (BuildContext context, BaseState<BaseEntity> state) =>
                              Text('${state.data}'),
                      errorWidgetBuilder:
                          (BuildContext context, BaseState<BaseEntity> state) =>
                              const Text('RANDOM ERROR!'),
                    ),
                  ),
                ),
                TextButton(
                  child: const Text('FETCH USER'),
                  onPressed: () =>
                      BlocManager.instance.fetch<UserCubit>().fetchUser(),
                )
              ],
            ),
          ),
        ),
      );
}
