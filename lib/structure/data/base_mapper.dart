import 'package:flutter_app_architecture/components.dart';

abstract class BaseMapper<E extends BaseEntity, Model extends BaseModel> {
  Model fromEntity(E entity);

  E toEntity(Model model);
}
