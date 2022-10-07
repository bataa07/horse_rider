import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:horse_rider/background/glacial_mountains.dart';
import 'package:horse_rider/character/horse.dart';
import 'package:horse_rider/character/leash.dart';
import 'package:horse_rider/character/rider.dart';

class HorseRiderGame extends FlameGame with KeyboardEvents {
  // late final background1 = Background1();
  // late final background2 = Background2();
  late final glacialMountains = GlacialMountains();
  late final horse = Horse();
  late final rider = Rider();
  late final leash = Leash();
  late TiledComponent map1;

  LogicalKeyboardKey? direction;

  late double mapWidth;
  late double mapHeight;

  Vector2 cameraPosition = Vector2(0.0, 0.0);

  bool isPress = false;
  bool hasVelocity = false;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    var tileSize = size.y / 20;

    map1 = await TiledComponent.load('map1.tmx', Vector2.all(tileSize));
    mapWidth = map1.tileMap.map.width * tileSize;
    mapHeight = map1.tileMap.map.height * tileSize;

    // add(background1);
    // add(background2);
    add(glacialMountains);
    add(map1);

    add(horse);
    add(rider);
    add(leash);

    camera.followComponent(
      horse,
      worldBounds: Rect.fromLTRB(
        0.0,
        0.0,
        mapWidth,
        mapHeight,
      ),
    );
  }

  @override
  Future<void> onGameResize(Vector2 canvasSize) async {
    super.onGameResize(canvasSize);

    var tileSize = canvasSize.y / 20;

    map1 = await TiledComponent.load('map1.tmx', Vector2.all(tileSize));
    mapWidth = map1.tileMap.map.width * tileSize;
    mapHeight = map1.tileMap.map.height * tileSize;

    camera.followComponent(
      horse,
      worldBounds: Rect.fromLTRB(
        0.0,
        0.0,
        mapWidth,
        mapHeight,
      ),
    );
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
      direction = LogicalKeyboardKey.arrowLeft;

      horse.reverse(direction);
      rider.reverse(direction);
      leash.reverse(direction);
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowRight)) {
      direction = LogicalKeyboardKey.arrowRight;

      horse.reverse(direction);
      rider.reverse(direction);
      leash.reverse(direction);
    } else {
      direction = null;
    }

    onAction(direction);

    if (event is RawKeyDownEvent) {
      isPress = true;
    }

    return KeyEventResult.handled;
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (cameraPosition != camera.position) {
      hasVelocity = true;

      cameraPosition = camera.position;
    } else {
      hasVelocity = false;
    }

    if (hasVelocity) {
      if (direction == LogicalKeyboardKey.arrowRight) {
        glacialMountains.velocity = 4.0;
        // background1.velocity = 2.0;
        // background2.velocity = 6.0;
      }

      if (direction == LogicalKeyboardKey.arrowLeft) {
        glacialMountains.velocity = -4.0;
        // background1.velocity = -2.0;
        // background2.velocity = -6.0;
      }
    } else {
      glacialMountains.velocity = 0.0;
      // background1.velocity = 0.0;
      // background2.velocity = 0.0;
    }
  }

  void onAction(LogicalKeyboardKey? arrow) {
    horse.running(arrow);
    rider.running(arrow);
    leash.running(arrow);
  }
}
