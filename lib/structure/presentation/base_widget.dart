import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_deriv_bloc_manager/manager.dart';

import 'package:flutter_app_architecture/structure/domain/base_entity.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_cubit.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state_status.dart';

abstract class BaseWidget<E extends BaseEntity, B extends BaseCubit<E>>
    extends StatelessWidget {
  const BaseWidget({
    required this.loadingWidgetBuilder,
    required this.successWidgetBuilder,
    required this.errorWidgetBuilder,
    this.cubitKey,
    Key? key,
  }) : super(key: key);

  final String? cubitKey;

  final Widget Function(BuildContext, BaseState<E>) loadingWidgetBuilder;
  final Widget Function(BuildContext, BaseState<E>) successWidgetBuilder;
  final Widget Function(BuildContext, BaseState<E>) errorWidgetBuilder;

  @override
  Widget build(BuildContext context) => BlocBuilder<B, BaseState<E>>(
        bloc: BlocManager.instance
            .fetch<B>(cubitKey ?? BaseBlocManager.defaultKey),
        builder: (BuildContext context, BaseState<E> state) {
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
