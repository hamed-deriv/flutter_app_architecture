import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_app_architecture/structure/data/base_model.dart';
import 'package:flutter_app_architecture/structure/domain/base_entity.dart';
import 'package:flutter_app_architecture/structure/domain/base_service.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state.dart';

abstract class BaseCubit<Entity extends BaseEntity, Model extends BaseModel>
    extends Cubit<BaseState<Entity>> {
  BaseCubit({
    required BaseState<Entity> initialState,
    this.service,
  }) : super(initialState);

  final BaseService<Entity, Model>? service;
}
