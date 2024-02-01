class ScreenSizeSingleton {
  static ScreenSizeSingleton? _instance;
  double? _screenHeight;

  ScreenSizeSingleton._();

  static ScreenSizeSingleton get instance {
    _instance ??= ScreenSizeSingleton._();
    return _instance!;
  }

  double? get screenHeight => _screenHeight;

  set screenHeight(double? value) {
    _screenHeight = value;
  }
}
