import 'package:flutter/material.dart';

class IconMovementProvider with ChangeNotifier {
  List<double> _offsets;
  final int _logoCount = 4; // Number of logos
  final double _logoWidth = 56.0; // Width of each logo
  final double _screenWidth = 300; // Width of the screen for resetting

  IconMovementProvider()
      : _offsets = List.generate(
            4, (index) => 300 + (index * 70.0)); // Start from the right side

  List<double> get offsets => _offsets;

  void startAnimation() {
    _animateIcons();
  }

  void stopAnimation() {
    // Logic to stop animation if needed
  }

  void _animateIcons() {
    Future.delayed(const Duration(milliseconds: 50), () {
      for (int i = 0; i < _logoCount; i++) {
        _offsets[i] -= 1; // Move left
        // Reset position when logo moves out of view
        if (_offsets[i] <= -_logoWidth) {
          _offsets[i] = _screenWidth + _logoWidth; // Reset to the right side
        }
      }
      notifyListeners();
      _animateIcons();
    });
  }
}
