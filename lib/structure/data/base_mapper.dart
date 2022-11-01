abstract class BaseMapper<E, M> {
  M fromEntity(E entity);

  E toEntity(M model);
}
