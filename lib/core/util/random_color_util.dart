import 'dart:math';
import 'dart:ui';

class RandomColorUtil {
  static Color generateRandomColor() {
    return Color(Random().nextInt(0xffffffff));
  }
}
