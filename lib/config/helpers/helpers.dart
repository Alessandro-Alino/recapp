import 'package:flutter/material.dart';

class Helpers {
  // Image Extensions
  static final imageExtensions = [
    '.png',
    '.jpg',
    '.jpeg',
    '.gif',
    '.webp',
    '.bmp',
    '.svg',
    '.avif',
  ];

  // Document Extensions
  static final docExtensions = [
    '.pdf',
    '.doc',
    '.docx',
    '.xls',
    '.xlsx',
    '.ppt',
    '.pptx',
    '.txt',
    '.rtf',
  ];

  // Audio Extensions
  static final audioExtensions = [
    '.mp3',
    '.wav',
    '.ogg',
    '.flac',
    '.aac',
    '.wma',
    '.m4a',
  ];

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

  static Icon getIconByExtension(String? extension) {
    final ext = '.$extension';

    if (imageExtensions.contains(ext)) {
      return Icon(Icons.image);
    } else if (docExtensions.contains(ext)) {
      return Icon(Icons.file_copy);
    } else if (audioExtensions.contains(ext)) {
      return Icon(Icons.audio_file_rounded);
    } else {
      return Icon(Icons.insert_drive_file);
    }
  }
}
