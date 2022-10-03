import 'package:example/sample_component/data/user_model.dart';
import 'package:example/sample_component/domain/base_user_repository.dart';

class MockUserRepository extends BaseUserRepository {
  @override
  Future<UserModel> fetchUser() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    return UserModel('John', 'Doe', '1985-11-11');
  }
}
