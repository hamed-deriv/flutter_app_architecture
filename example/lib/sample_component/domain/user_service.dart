import 'package:flutter_app_architecture/structure/domain/base_service.dart';

import 'package:example/sample_component/data/user_model.dart';
import 'package:example/sample_component/domain/base_user_repository.dart';
import 'package:example/sample_component/domain/user_entity.dart';

class UserService extends BaseService<UserEntity, UserModel> {
  UserService(BaseUserRepository<UserEntity, UserModel> repository)
      : super(repository);

  Future<UserEntity> fetchUser() =>
      (repository as BaseUserRepository<UserEntity, UserModel>).fetchUser();
}
