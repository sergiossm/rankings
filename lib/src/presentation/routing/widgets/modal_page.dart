import 'package:flutter/material.dart';

class ModalPage<T> extends Page<T> {
  const ModalPage({
    required this.child,
    this.scrollControlDisabledMaxHeightRatio = 0.9,
    this.showDragHandle = true,
    super.key,
  });

  final double scrollControlDisabledMaxHeightRatio;
  final bool showDragHandle;
  final Widget child;

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
        scrollControlDisabledMaxHeightRatio:
            scrollControlDisabledMaxHeightRatio,
        showDragHandle: showDragHandle,
        settings: this,
        builder: (context) => Dialog(
          insetPadding: EdgeInsets.zero,
          child: child,
        ),
        isScrollControlled: false,
      );
}
