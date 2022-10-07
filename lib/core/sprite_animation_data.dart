import 'package:flame/input.dart';
import 'package:flame/particles.dart';
import 'package:horse_rider/core/constants.dart';

SpriteAnimationData running = SpriteAnimationData.sequenced(
  amount: 6,
  stepTime: 0.14,
  amountPerRow: 3,
  textureSize: Vector2.all(CharacterConstants.textureSize),
);

SpriteAnimationData idle = SpriteAnimationData.sequenced(
  amount: 5,
  stepTime: 0.6,
  amountPerRow: 3,
  textureSize: Vector2.all(CharacterConstants.textureSize),
);
