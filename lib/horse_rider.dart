import 'package:flame/components.dart';
import 'package:flutter/src/services/keyboard_key.g.dart';
import 'package:horse_rider/horse_rider_game.dart';

enum PlayerState { running, standing }

var horseRun = 'black_horse/horse_run.png';
var horseIdle = 'black_horse/horse_idle.png';
var horseRunReverse = 'black_horse/horse_run_reverse.png';
var horseIdleReverse = 'black_horse/horse_idle_reverse.png';

class HorseRider extends SpriteAnimationGroupComponent<PlayerState>
    with HasGameRef<HorseRiderGame> {
  HorseRider()
      : super(
          position: Vector2.array([0.0, 0.0]),
          size: Vector2.all(0),
        );

  LogicalKeyboardKey? direction;

  SpriteAnimationData runningSpriteData = SpriteAnimationData.sequenced(
    amount: 6,
    stepTime: 0.14,
    amountPerRow: 3,
    textureSize: Vector2.all(64.0),
  );

  SpriteAnimationData idleSpriteData = SpriteAnimationData.sequenced(
    amount: 5,
    stepTime: 0.6,
    amountPerRow: 3,
    textureSize: Vector2.all(64.0),
  );

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    var gameSize = gameRef.size;

    position = Vector2.array([120.0, gameSize.y / 2.8]);
    size = Vector2.all(gameSize.y / 2.5);

    animations = {
      PlayerState.running: await gameRef.loadSpriteAnimation(
        horseRun,
        runningSpriteData,
      ),
      PlayerState.standing: await gameRef.loadSpriteAnimation(
        horseIdle,
        idleSpriteData,
      ),
    };

    current = PlayerState.standing;
  }

  @override
  Future<void> update(double dt) async {
    super.update(dt);

    if (current == PlayerState.running) {
      if (direction == LogicalKeyboardKey.arrowLeft) {
        x -= 6.0;
      } else if (direction == LogicalKeyboardKey.arrowRight) {
        x += 6.0;
      } else {
        current = PlayerState.standing;
      }
    }
  }

  @override
  // ignore: avoid_renaming_method_parameters
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);

    position = Vector2.array([120.0, gameSize.y / 2.8]);
    size = Vector2.all(gameSize.y / 2.5);
  }

  void running(LogicalKeyboardKey? arrow) {
    if (arrow == null) {
      current = PlayerState.standing;
    }

    direction = arrow;
    current = PlayerState.running;
  }

  Future<void> reverse(LogicalKeyboardKey? arrow) async {
    var run = horseRun;
    var idle = horseIdle;

    if (arrow == LogicalKeyboardKey.arrowLeft) {
      run = horseRunReverse;
      idle = horseIdleReverse;
    }

    animations = {
      PlayerState.running: await gameRef.loadSpriteAnimation(
        run,
        runningSpriteData,
      ),
      PlayerState.standing: await gameRef.loadSpriteAnimation(
        idle,
        idleSpriteData,
      ),
    };
  }
}
