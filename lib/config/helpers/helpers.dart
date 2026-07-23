import 'package:flutter/material.dart';

class Helpers {
  // Show Generic Modal
  static void showGenericModal({
    required BuildContext context,
    required Widget Function(BuildContext, ScrollController) builder,
    double? minWidth,
    double? maxWidth,
    double? maxChildSize,
    double? initialChildSize,
    VoidCallback? onClosed,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      constraints: minWidth != null && maxWidth != null
          ? BoxConstraints(minWidth: minWidth, maxWidth: maxWidth)
          : null,
      builder: (modalContext) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.viewInsetsOf(modalContext).bottom,
          ),
          child: DraggableScrollableSheet(
            expand: false,
            maxChildSize: maxChildSize ?? 1.0,
            initialChildSize: initialChildSize ?? 1.0,
            builder: (context, scrollCntrl) {
              return builder(context, scrollCntrl);
            },
          ),
        );
      },
    ).then((_) {
      if (context.mounted) {
        if (onClosed != null) {
          onClosed();
        }
      }
    });
  }
}
