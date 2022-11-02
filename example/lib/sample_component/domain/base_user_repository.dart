import 'package:flutter_app_architecture/structure/data/base_mapper.dart';
import 'package:flutter_app_architecture/structure/domain/base_repository.dart';

import 'package:example/sample_component/data/user_model.dart';
import 'package:example/sample_component/domain/user_entity.dart';

abstract class BaseUserRepository<Entity extends UserEntity,
    Model extends UserModel> extends BaseRepository<Entity, Model> {
  BaseUserRepository(BaseMapper<Entity, Model> mapper) : super(mapper);

  Future<UserEntity> fetchUser();
}
