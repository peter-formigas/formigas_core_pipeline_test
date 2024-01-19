part of 'mvc.dart';

/// Widget that rebuilds when the model from [controller] changes.
class MVCBuilder<C extends MVController<M>, M> extends StatelessWidget {
  /// Creates a widget that rebuilds when the [controller] changes.
  const MVCBuilder({
    required this.controller,
    required this.builder,
    super.key,
  });

  /// The [MVController] which manages the model and provides business logic.
  final C controller;

  /// Function will be called when he model from [controller] changes.
  final Widget Function(BuildContext context, C controller, M model) builder;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder<M>(
        key: ValueKey<C>(controller),
        valueListenable: controller._modelNotifier,
        builder: (context, M model, _) => builder(context, controller, model),
      );
}
