import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:horse_rider/horse_rider_game.dart';

class FlameLayer extends StatelessWidget {
  const FlameLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: HorseRiderGame());
  }
}
