import 'package:flutter/material.dart';

enum CandyType { NORMAL, APPLE, ORANGE, NURUNGJI }

abstract class Character {
  late int _attackPower;
  late int _defence;
  late int _health;

  get attackPower => _attackPower;
  get defence => _defence;
  get health => _health;
  // 터치횟수 * 스킬 * 어택파워

  attacked({
    required int touchCount,
    required int skillOfEnemy,
    required int attackPowerOfEnemy,
  }) {}
}

class Candy extends Character {
  late int _distance_per_step;
  late Map<dynamic, dynamic> _skill;

  Candy({
    required CandyType type,
    required int attackPower,
    required int defence,
    required int health,
  }) : super();

  get distancePerStep => _distance_per_step;
  get skill => _skill;

  init() {}
}

class Tooth extends Character {}
