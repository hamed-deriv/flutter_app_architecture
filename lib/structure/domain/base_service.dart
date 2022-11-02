import 'package:flutter_app_architecture/structure/data/base_model.dart';
import 'package:flutter_app_architecture/structure/domain/base_entity.dart';
import 'package:flutter_app_architecture/structure/domain/base_repository.dart';

abstract class BaseService<Entity extends BaseEntity, Model extends BaseModel> {
  BaseService(this.repository);

  final BaseRepository<Entity, Model> repository;
}
