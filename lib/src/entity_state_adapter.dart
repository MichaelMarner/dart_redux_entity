import './entity_state.dart';

abstract class EntityStateAdapter<T> {
  /// Adds a single entity to the store. NOP if item is already in the store
  S addOne<S extends EntityState<T>>(T entity, S state);

  /// Adds many entities to the store and does not replace existing entities
  S addMany<S extends EntityState<T>>(List<T> entities, S state);

  /// Adds many entities to the store, removing existing entities
  S addAll<S extends EntityState<T>>(List<T> entities, S state);

  /// Removes an entity with the specified ID from the store
  S removeOne<S extends EntityState<T>>(String id, S state);

  /// Removes entities with the specified IDs from the store
  S removeMany<S extends EntityState<T>>(List<String> keys, S state);

  /// Empties the store
  S removeAll<S extends EntityState<T>>(S state);

  /// Updates the data for a single element. NOP if the item does not exist
  S updateOne<S extends EntityState<T>>(T item, S state);

  /// Updates the data for many elements. NOP for items that are not already in the store
  S updateMany<S extends EntityState<T>>(List<T> items, S state);

  /// Creates or updates a single element
  S upsertOne<S extends EntityState<T>>(T item, S state);

  /// Creates or updates many elements
  S upsertMany<S extends EntityState<T>>(List<T> items, S state);
}
