import 'package:flutter/material.dart';
import 'package:frontend/src/utils/size_config.dart';

class ModalBottomSheetPage<T> extends Page<T> {
  const ModalBottomSheetPage({
    required this.child,
    this.isScrollControlled = true,
    this.title = "",
    this.titleWidget,
    super.key,
    super.name,
    super.arguments,
  });

  final Widget child;
  final String title;
  final Widget? titleWidget;
  final bool isScrollControlled;

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
        settings: this,
        isScrollControlled: isScrollControlled,
        showDragHandle: false,
        useSafeArea: true,
        builder: (context) => Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 8, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleWidget != null
                      ? titleWidget!
                      : Text(
                          title,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                  const CloseButton(),
                ],
              ),
            ),
            Expanded(child: child),
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
      );
}
