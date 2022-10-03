import 'package:flutter_app_architecture/structure/domain/base_repository.dart';

import 'package:example/sample_component/data/user_model.dart';

abstract class BaseUserRepository extends BaseRepository {
  Future<UserModel> fetchUser();
}
