part of 'mvc.dart';

/// MVController is a abstract class that is used to manage the state of the
/// model and update the screen when the model changes.
/// M is the type of the model.
abstract class MVController<M> {
  /// Creates a [MVController] with the given [initialModel].
  MVController(M initialModel)
      : _modelNotifier = ValueNotifier<M>(initialModel);

  final ValueNotifier<M> _modelNotifier;

  /// current model state.
  M get model => _modelNotifier.value;

  /// updates the model and will update the screen.
  set model(M model) => _modelNotifier.value = model;
}
