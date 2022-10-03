import 'package:flutter_app_architecture/structure/domain/base_entity.dart';

import 'package:example/sample_component/data/user_model.dart';

class UserEntity extends BaseEntity {
  UserEntity(this.surname, this.lastName, this.birthDate);

  factory UserEntity.fromModel(UserModel model) =>
      UserEntity(model.surname, model.lasName, DateTime.parse(model.birthDate));

  final String surname;
  final String lastName;
  final DateTime birthDate;

  // @override
  // UserEntity convert(UserModel model) =>
  //     UserEntity(model.surname, model.lasName, DateTime.parse(model.birthDate));

  @override
  String toString() =>
      'Surname: $surname, Last Name: $lastName, birth Date:  $birthDate';
}
