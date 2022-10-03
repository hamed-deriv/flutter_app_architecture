import 'package:flutter/material.dart';

import 'package:flutter_app_architecture/structure/domain/base_entity.dart';
import 'package:flutter_app_architecture/structure/presentation/base_widget.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state.dart';

import 'package:example/sample_component/domain/user_entity.dart';
import 'package:example/sample_component/presentation/user_cubit.dart';

class UserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BaseWidget<UserEntity, UserCubit>(
        loadingWidgetBuilder:
            (BuildContext context, BaseState<BaseEntity> state) =>
                const CircularProgressIndicator(),
        successWidgetBuilder:
            (BuildContext context, BaseState<BaseEntity> state) =>
                Text('${state.data}'),
        errorWidgetBuilder:
            (BuildContext context, BaseState<BaseEntity> state) =>
                const Text('RANDOM ERROR!'),
      );
}
