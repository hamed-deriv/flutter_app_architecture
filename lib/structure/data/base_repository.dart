import 'package:flutter_deriv_api/services/connection/api_manager/base_api.dart';

abstract class BaseRepository {
  BaseRepository(this.api);

  final BaseAPI? api;
}
