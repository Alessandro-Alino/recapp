import 'package:flutter/material.dart';

class AppHero extends StatelessWidget {
  const AppHero({super.key, required this.tag, required this.child});

  final String tag;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Material(type: MaterialType.transparency, child: child),
    );
  }
}

class AppHeroTag {
  static String scaffold(String id) => id;

  static String image(String url) => url;
}
