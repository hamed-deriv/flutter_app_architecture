import 'package:flutter_app_architecture/structure/domain/base_entity.dart';
import 'package:flutter_app_architecture/structure/domain/base_repository.dart';

abstract class BaseService<Entity extends BaseEntity> {
  BaseService(this.repository);

  final BaseRepository repository;
}
