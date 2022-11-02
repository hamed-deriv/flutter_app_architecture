import 'package:flutter_app_architecture/components.dart';
import 'package:flutter_app_architecture/structure/data/base_model.dart';

abstract class BaseMapper<E extends BaseEntity, Model extends BaseModel> {
  Model fromEntity(E entity);

  E toEntity(Model model);
}
