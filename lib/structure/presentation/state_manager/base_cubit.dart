import 'package:flutter_app_architecture/structure/domain/base_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_app_architecture/structure/domain/base_service.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state.dart';

abstract class BaseCubit<E extends BaseEntity> extends Cubit<BaseState<E>> {
  BaseCubit({
    required BaseState<E> initialState,
    this.service,
  }) : super(initialState);

  final BaseService<E>? service;
}
