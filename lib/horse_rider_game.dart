import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:horse_rider/background.dart';
import 'package:horse_rider/horse_rider.dart';

class HorseRiderGame extends FlameGame with KeyboardEvents {
  late final gameBackground = GameBackground();
  late final horseRider = HorseRider();
  bool isPress = false;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    add(gameBackground);
    add(horseRider);
  }

  @override
  KeyEventResult onKeyEvent(
    RawKeyEvent event,
    Set<LogicalKeyboardKey> keysPressed,
  ) {
    if (event is RawKeyUpEvent) {
      isPress = false;
    }

    if (isPress) return KeyEventResult.handled;

    if (keysPressed.contains(LogicalKeyboardKey.arrowLeft)) {
      horseRider.reverse(LogicalKeyboardKey.arrowLeft);
      onAction(LogicalKeyboardKey.arrowLeft);
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowRight)) {
      horseRider.reverse(LogicalKeyboardKey.arrowRight);
      onAction(LogicalKeyboardKey.arrowRight);
    } else {
      onAction(null);
    }

    if (event is RawKeyDownEvent) {
      isPress = true;
    }

    return KeyEventResult.handled;
  }

  void onAction(LogicalKeyboardKey? arrow) {
    horseRider.running(arrow);
  }
}
