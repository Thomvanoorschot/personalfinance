import 'package:flutter/material.dart';
import 'package:frontend/src/widgets/pages/custom_rect_tween.dart';

class PopupCardPage<T> extends Page<T> {
  const PopupCardPage({
    required this.child,
    required this.tag,
    super.key,
    super.name,
    super.arguments,
  });

  final Widget child;
  final String tag;

  @override
  Route<T> createRoute(BuildContext context) => HeroDialogRoute<T>(
    settings: this,
    builder: (context) => Center(
      child: Hero(
          tag: tag,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: child
          ),
        createRectTween: (begin, end) {
          return CustomRectTween(begin: begin!, end: end!);
        },
      ),
    ),
  );
}

class HeroDialogRoute<T> extends PageRoute<T> {
  HeroDialogRoute({
    required WidgetBuilder builder,
    super.settings,
    super.fullscreenDialog,
  })  : _builder = builder;

  final WidgetBuilder _builder;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  bool get maintainState => true;

  @override
  Color get barrierColor => Colors.black54;

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return _builder(context);
  }

  @override
  String get barrierLabel => 'Popup dialog open';
}