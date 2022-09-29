import 'dart:math';

import 'package:flutter_app_architecture/structure/presentation/state_manager/base_cubit.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state_status.dart';

import 'package:example/sample_component/domain/user_entity.dart';
import 'package:example/sample_component/domain/user_service.dart';

class UserCubit extends BaseCubit<UserEntity> {
  UserCubit({required UserService service})
      : super(
          service: service,
          initialState: BaseState<UserEntity>(status: BaseStateStatus.initial),
        );

  Future<void> fetchUser() async {
    emit(BaseState<UserEntity>(status: BaseStateStatus.loading));

    final bool randomError = Random().nextBool();

    if (randomError) {
      emit(
        BaseState<UserEntity>(
          data: state.data,
          status: BaseStateStatus.failure,
        ),
      );
    }

    emit(
      BaseState<UserEntity>(
        data: await (service as UserService).fetchUser(),
        status: BaseStateStatus.success,
      ),
    );
  }
}
