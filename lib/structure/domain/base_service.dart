import 'package:flutter_app_architecture/structure/data/base_repository.dart';
import 'package:flutter_app_architecture/structure/domain/base_entity.dart';

abstract class BaseService<Entity extends BaseEntity> {
  BaseService(this.repository);

  final BaseRepository repository;
}
