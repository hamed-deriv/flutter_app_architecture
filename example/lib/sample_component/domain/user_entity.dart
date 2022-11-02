import 'package:flutter_app_architecture/structure/domain/base_entity.dart';

class UserEntity extends BaseEntity {
  UserEntity(this.surname, this.lastName, this.birthDate);

  final String surname;
  final String lastName;
  final DateTime birthDate;

  @override
  String toString() =>
      'Surname: $surname, Last Name: $lastName, Birth Date:  $birthDate';
}
