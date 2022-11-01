import 'package:flutter_app_architecture/structure/data/base_mapper.dart';

abstract class BaseRepository<E, M> {
  BaseRepository(this.mapper);

  final BaseMapper<E, M> mapper;
}
