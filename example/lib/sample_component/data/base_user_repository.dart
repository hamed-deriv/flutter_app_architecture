import 'package:flutter_app_architecture/structure/data/base_repository.dart';

import 'package:example/sample_component/data/models/user_model.dart';

abstract class BaseUserRepository extends BaseRepository {
  Future<UserModel> fetchUser();
}
