import 'package:flutter_app_architecture/structure/data/base_mapper.dart';

import 'package:example/sample_component/data/user_model.dart';
import 'package:example/sample_component/domain/base_user_repository.dart';
import 'package:example/sample_component/domain/user_entity.dart';

class MockUserRepository extends BaseUserRepository<UserEntity, UserModel> {
  MockUserRepository(BaseMapper<UserEntity, UserModel> mapper) : super(mapper);

  @override
  Future<UserEntity> fetchUser() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    return mapper.toEntity(UserModel('John', 'Doe', '1985-11-11'));
  }
}
