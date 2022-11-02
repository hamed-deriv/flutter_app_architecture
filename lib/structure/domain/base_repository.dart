import 'package:flutter_app_architecture/structure/data/base_mapper.dart';
import 'package:flutter_app_architecture/structure/data/base_model.dart';
import 'package:flutter_app_architecture/structure/domain/base_entity.dart';

abstract class BaseRepository<E extends BaseEntity, Model extends BaseModel> {
  BaseRepository(this.mapper);

  final BaseMapper<E, Model> mapper;
}
