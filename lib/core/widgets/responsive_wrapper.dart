import 'package:flutter/material.dart';
import '../constants/breakpoints.dart';

class ResponsiveWrapper extends StatelessWidget {
  final Widget Function(
          BuildContext context, bool isDesktop, bool isTablet, bool isMobile)
      builder;

  const ResponsiveWrapper({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = Breakpoints.isDesktop(constraints.maxWidth);
        final isTablet = Breakpoints.isTablet(constraints.maxWidth);
        final isMobile = Breakpoints.isMobile(constraints.maxWidth);

        return builder(context, isDesktop, isTablet, isMobile);
      },
    );
  }
}
