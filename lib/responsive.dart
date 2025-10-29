import 'package:flutter/material.dart';

class Breakpoints {
  static const double mobileSMin = 360.0;
  static const double mobileSMax = 390.0;
  static const double mobileMMin = 393.0;
  static const double mobileMMax = 412.0;
  static const double mobileLMin = 414.0;
  static const double mobileLMax = 500.0;

  static const double tabletSMin = 768.0;
  static const double tabletSMax = 809.0;
  static const double tabletMMin = 810.0;
  static const double tabletMMax = 819.0;
  static const double tabletLMin = 820.0;
}

class Responsive {
  final BuildContext context;
  late final double width;
  late final double height;

  Responsive(this.context) {
    final size = MediaQuery.sizeOf(context);
    width = size.width;
    height = size.height;
  }

  bool get isMobileS =>
      width >= Breakpoints.mobileSMin && width <= Breakpoints.mobileSMax;
  bool get isMobileM =>
      width >= Breakpoints.mobileMMin && width <= Breakpoints.mobileMMax;
  bool get isMobileL =>
      width >= Breakpoints.mobileLMin && width <= Breakpoints.mobileLMax;

  bool get isTabletS =>
      width >= Breakpoints.tabletSMin && width <= Breakpoints.tabletSMax;
  bool get isTabletM =>
      width >= Breakpoints.tabletMMin && width <= Breakpoints.tabletMMax;
  bool get isTabletL => width >= Breakpoints.tabletLMin;

  bool get isMobile => isMobileS || isMobileM || isMobileL;
  bool get isTablet => isTabletS || isTabletM || isTabletL;
}

class FontSizeMo {
  static const double h1 = 20.0;
  static const double h2 = 20.0;
  static const double h3 = 20.0;

  static const double p1 = 12.0;
  static const double p2 = 12.0;
  static const double p3 = 12.0;

  static const double c1 = 18.0;
  static const double c2 = 15.0;
  static const double c3 = 12.0;

  static const double b1 = 12.0;
  static const double b2 = 14.0;
  static const double b3 = 14.0;
}

class FontSizeTab {
  static const double h1 = 32.0;
  static const double h2 = 29.0;
  static const double h3 = 26.0;

  static const double p1 = 29.0;
  static const double p2 = 26.0;
  static const double p3 = 23.0;

  static const double c1 = 26.0;
  static const double c2 = 23.0;
  static const double c3 = 20.0;

  static const double b1 = 14.0;
  static const double b2 = 16.0;
  static const double b3 = 16.0;
}

class ResponsiveFont {
  final Responsive dim;
  late final ResponsiveFont rf;

  ResponsiveFont(BuildContext context) : dim = Responsive(context);

  double get heading {
    if (dim.isMobileS) return FontSizeMo.h3;
    if (dim.isMobileM) return FontSizeMo.h2;
    if (dim.isMobileL) return FontSizeMo.h1;
    if (dim.isTabletS) return FontSizeTab.h3;
    if (dim.isTabletM) return FontSizeTab.h2;
    return FontSizeTab.h1;
  }

  double get paragraph {
    if (dim.isMobileS) return FontSizeMo.p3;
    if (dim.isMobileL) return FontSizeMo.p1;
    if (dim.isTabletS) return FontSizeTab.p3;
    if (dim.isTabletM) return FontSizeTab.p2;
    return FontSizeTab.p1;
  }

  double get caption {
    if (dim.isMobileS) return FontSizeMo.c3;
    if (dim.isMobileM) return FontSizeMo.c2;
    if (dim.isMobileL) return FontSizeMo.c1;
    if (dim.isTabletS) return FontSizeTab.c3;
    if (dim.isTabletM) return FontSizeTab.c2;
    return FontSizeTab.c1;
  }

  double get button {
    if (dim.isMobileS) return FontSizeMo.b3;
    if (dim.isMobileM) return FontSizeMo.b2;
    if (dim.isMobileL) return FontSizeMo.b1;
    if (dim.isTabletS) return FontSizeTab.b3;
    if (dim.isTabletM) return FontSizeTab.b2;
    return FontSizeTab.b1;
  }
}
