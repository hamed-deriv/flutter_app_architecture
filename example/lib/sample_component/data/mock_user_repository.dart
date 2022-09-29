import 'package:example/sample_component/data/base_user_repository.dart';
import 'package:example/sample_component/data/models/user_model.dart';

class MockUserRepository extends BaseUserRepository {
  @override
  Future<UserModel> fetchUser() async {
    await Future<void>.delayed(const Duration(seconds: 5));

    return UserModel('John', 'Doe', '1985-11-11');
  }
}
