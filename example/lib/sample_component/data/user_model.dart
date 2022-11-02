import 'package:flutter_app_architecture/structure/data/base_model.dart';

class UserModel implements BaseModel {
  UserModel(this.surname, this.lasName, this.birthDate);

  final String surname;
  final String lasName;
  final String birthDate;
}
