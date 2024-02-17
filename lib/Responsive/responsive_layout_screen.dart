import 'package:flutter/material.dart';
import 'package:instagram/utils/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget WebScreenLayout;
  final Widget MobileScreenLayout;

  const ResponsiveLayout(
      {super.key,
      required this.WebScreenLayout,
      required this.MobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > WebScreenSize) {
          // web view
          return WebScreenLayout;
        }

        // mobile view
        return MobileScreenLayout;
      },
    );
  }
}
