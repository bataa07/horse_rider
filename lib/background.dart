import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:horse_rider/horse_rider_game.dart';

class GameBackground extends ParallaxComponent<HorseRiderGame> {
  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    var gameSize = gameRef.size;
    gameSize.y;

    parallax = await gameRef.loadParallax(
      [
        ParallaxImageData('background/sky.png'),
        ParallaxImageData('background/jungle_bg.png'),
        ParallaxImageData('background/trees_bushes.png'),
        ParallaxImageData('background/grasses.png'),
        ParallaxImageData('background/grass_road.png'),
        ParallaxImageData('background/tree_face.png'),
        ParallaxImageData('background/lianas.png'),
        ParallaxImageData('background/fireflys.png'),
      ],
    );
  }
}
