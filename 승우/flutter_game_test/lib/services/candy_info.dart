import 'package:flutter_game_test/services/character.dart';
import 'package:flutter_game_test/services/skill_info.dart';

class CandyInfo {
  final double walkingDistanceModifier;
  final String ImageAsset;
  final double hardnessModifier;
  final SkillInfo skillInfo;

  CandyInfo({
    required this.walkingDistanceModifier,
    required this.ImageAsset,
    required this.hardnessModifier,
    required this.skillInfo,
  });
}
