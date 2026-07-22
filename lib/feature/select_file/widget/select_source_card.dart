import 'package:flutter/material.dart';

class SelectSourceCard extends StatelessWidget {
  const SelectSourceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final Icon icon;
  final String title;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        width: MediaQuery.of(context).size.width * 0.18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.blueGrey.shade700.withAlpha(150),
        ),
        child: Column(
          spacing: 4.0,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon
            icon,
            // Title
            Text(title),
          ],
        ),
      ),
    );
  }
}
