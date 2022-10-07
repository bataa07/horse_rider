import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/cupertino.dart';
import 'package:horse_rider/horse_rider_game.dart';

class Background2 extends ParallaxComponent<HorseRiderGame> {
  double velocity = 0.0;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    parallax = await gameRef.loadParallax(
      [
        // ParallaxImageData('background/sky_fc.png'),
        // ParallaxImageData('background/far_mountains_fc.png'),
        ParallaxImageData('background/grassy_mountains_fc.png'),
        ParallaxImageData('background/clouds_mid_fc.png'),
        ParallaxImageData('background/hill.png'),
        // ParallaxImageData('background/clouds_front_fc.png'),
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
