import 'package:flutter/material.dart';

enum Breakpoint { mobile, tablet, desktop }

Breakpoint breakpointFromWidth(double width) {
  if (width <= 600) return Breakpoint.mobile;
  if (width <= 900) return Breakpoint.tablet;
  return Breakpoint.desktop;
}

class ResponsiveGrid extends StatelessWidget {
  final Widget child;
  final EdgeInsets mobilePadding;
  final EdgeInsets tabletPadding;
  final EdgeInsets desktopPadding;
  final double maxContentWidth;

  const ResponsiveGrid({
    super.key,
    required this.child,
    this.mobilePadding = const EdgeInsets.symmetric(horizontal: 16),
    this.tabletPadding = const EdgeInsets.symmetric(horizontal: 32),
    this.desktopPadding = const EdgeInsets.symmetric(horizontal: 48),
    this.maxContentWidth = 1200,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bp = breakpointFromWidth(constraints.maxWidth);
        final hPad = bp == Breakpoint.mobile
            ? mobilePadding
            : bp == Breakpoint.tablet
                ? tabletPadding
                : desktopPadding;
        return Center(
          child: Container(
            padding: hPad,
            constraints: BoxConstraints(maxWidth: maxContentWidth),
            child: child,
          ),
        );
      },
    );
  }
}