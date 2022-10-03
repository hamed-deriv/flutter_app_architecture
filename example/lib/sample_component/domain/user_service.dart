import 'package:flutter_app_architecture/structure/domain/base_service.dart';

import 'package:example/sample_component/domain/base_user_repository.dart';
import 'package:example/sample_component/domain/user_entity.dart';

class UserService extends BaseService<UserEntity> {
  UserService(BaseUserRepository repository) : super(repository);

  Future<UserEntity> fetchUser() async => UserEntity.fromModel(
        await (repository as BaseUserRepository).fetchUser(),
      );
}
