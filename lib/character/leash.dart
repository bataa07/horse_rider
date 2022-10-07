import 'package:flame/components.dart';
import 'package:flutter/services.dart';
import 'package:horse_rider/core/constants.dart';
import 'package:horse_rider/core/enums.dart';
import 'package:horse_rider/core/sprite_animation_data.dart'
    as sprite_data_animation;
import 'package:horse_rider/horse_rider_game.dart';

class Leash extends SpriteAnimationGroupComponent<RiderState>
    with HasGameRef<HorseRiderGame> {
  Leash()
      : super(
          position: Vector2.array([0.0, 0.0]),
          size: Vector2.all(0),
        );

  LogicalKeyboardKey? direction;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    var gameSize = gameRef.size;

    position = Vector2.array([
      CharacterConstants.firstStandX,
      gameSize.y / CharacterConstants.positionScaleY
    ]);
    size = Vector2.all(gameSize.y / CharacterConstants.sizeScale);

    animations = {
      RiderState.running: await gameRef.loadSpriteAnimation(
        CharacterConstants.horseLeashRun,
        sprite_data_animation.running,
      ),
      RiderState.standing: await gameRef.loadSpriteAnimation(
        CharacterConstants.horseLeashIdle,
        sprite_data_animation.idle,
      ),
    };

    current = RiderState.standing;
  }

  @override
  Future<void> update(double dt) async {
    super.update(dt);

    if (current == RiderState.running) {
      if (direction == LogicalKeyboardKey.arrowLeft) {
        x -= CharacterConstants.horseSpeed;
      } else if (direction == LogicalKeyboardKey.arrowRight) {
        x += CharacterConstants.horseSpeed;
      } else {
        current = RiderState.standing;
      }
    }
  }

  @override
  // ignore: avoid_renaming_method_parameters
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);

    position = Vector2.array([
      CharacterConstants.firstStandX,
      gameSize.y / CharacterConstants.positionScaleY
    ]);
    size = Vector2.all(gameSize.y / CharacterConstants.sizeScale);
  }

  void running(LogicalKeyboardKey? arrow) {
    if (arrow == null) {
      current = RiderState.standing;
    }

    direction = arrow;
    current = RiderState.running;
  }

  Future<void> reverse(LogicalKeyboardKey? arrow) async {
    var run = CharacterConstants.horseLeashRun;
    var idle = CharacterConstants.horseLeashIdle;

    if (arrow == LogicalKeyboardKey.arrowLeft) {
      run = CharacterConstants.horseLeashRunReverse;
      idle = CharacterConstants.horseLeashIdleReverse;
    }

    animations = {
      RiderState.running: await gameRef.loadSpriteAnimation(
        run,
        sprite_data_animation.running,
      ),
      RiderState.standing: await gameRef.loadSpriteAnimation(
        idle,
        sprite_data_animation.idle,
      ),
    };
  }
}
