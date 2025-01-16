class Breakpoints {
  static const double desktop = 1024;
  static const double tablet = 600;

  static bool isDesktop(double width) => width > desktop;
  static bool isTablet(double width) => width <= desktop && width > tablet;
  static bool isMobile(double width) => width <= tablet;
}
