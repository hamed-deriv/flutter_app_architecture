import 'package:equatable/equatable.dart';

import 'package:flutter_app_architecture/structure/domain/base_entity.dart';
import 'package:flutter_app_architecture/structure/presentation/state_manager/base_state_status.dart';

class BaseState<E extends BaseEntity> with EquatableMixin {
  BaseState({required this.status, this.data, this.error});

  BaseStateStatus status;
  E? data;
  String? error;

  @override
  String toString() => '''
    status: $status,
    state: $data,
    error: $error
    ''';

  @override
  List<Object?> get props => <Object?>[data, status, error];
}
