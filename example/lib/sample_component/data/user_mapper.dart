import 'package:flutter_app_architecture/structure/data/base_mapper.dart';

import 'package:example/sample_component/data/user_model.dart';
import 'package:example/sample_component/domain/user_entity.dart';

class UserMapper extends BaseMapper<UserEntity, UserModel> {
  @override
  UserModel fromEntity(UserEntity entity) =>
      UserModel(entity.surname, entity.lastName, entity.birthDate.toString());

  @override
  UserEntity toEntity(UserModel model) =>
      UserEntity(model.surname, model.lasName, DateTime.parse(model.birthDate));
}
