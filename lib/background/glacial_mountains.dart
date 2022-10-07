import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/cupertino.dart';
import 'package:horse_rider/horse_rider_game.dart';

class GlacialMountains extends ParallaxComponent<HorseRiderGame> {
  double velocity = 0.0;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    parallax = await gameRef.loadParallax(
      [
        ParallaxImageData('glacial_mountains/sky.png'),
        ParallaxImageData('glacial_mountains/clouds_bg.png'),
        ParallaxImageData('glacial_mountains/glacial_mountains.png'),
        ParallaxImageData('glacial_mountains/cloud_lonely.png'),
        ParallaxImageData('glacial_mountains/clouds_mg_3.png'),
        ParallaxImageData('glacial_mountains/clouds_mg_2.png'),
        ParallaxImageData('glacial_mountains/clouds_mg_1.png'),
      ],
      repeat: ImageRepeat.repeatX,
      baseVelocity: Vector2(velocity, 0.0),
      velocityMultiplierDelta: Vector2(1.0, 0.0),
    );
  }

  @override
  Future<void> update(double dt) async {
    super.update(dt);

    parallax?.baseVelocity = Vector2(velocity, 0.0);
  }
}
