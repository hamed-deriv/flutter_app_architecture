import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_deriv_bloc_manager/manager.dart';

import 'package:flutter_app_architecture/structure/domain/base_entity.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_cubit.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state_status.dart';

typedef GeneralWidgetBuilder<Entity extends BaseEntity> = Widget Function(
  BuildContext context,
  BaseState<Entity> state,
);

class BaseWidget<Entity extends BaseEntity, Cubit extends BaseCubit<Entity>>
    extends StatelessWidget {
  const BaseWidget({
    required this.loadingWidgetBuilder,
    required this.successWidgetBuilder,
    required this.errorWidgetBuilder,
    this.cubitKey = BaseBlocManager.defaultKey,
    Key? key,
  }) : super(key: key);

  final String cubitKey;

  final GeneralWidgetBuilder loadingWidgetBuilder;
  final GeneralWidgetBuilder successWidgetBuilder;
  final GeneralWidgetBuilder errorWidgetBuilder;

  @override
  Widget build(BuildContext context) => BlocBuilder<Cubit, BaseState<Entity>>(
        bloc: BlocManager.instance.fetch<Cubit>(cubitKey),
        builder: (BuildContext context, BaseState<Entity> state) {
          if (state.status == BaseStateStatus.initial ||
              state.status == BaseStateStatus.loading) {
            return loadingWidgetBuilder(context, state);
          }

          if (state.status == BaseStateStatus.success) {
            return successWidgetBuilder(context, state);
          }

          return errorWidgetBuilder(context, state);
        },
      );
}
