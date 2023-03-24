import 'package:flutter/material.dart';
import 'package:flutter_game_test/services/candy_info.dart';
import 'candy_type.dart';

abstract class Character {
  final String name;
  late int _attackPower;
  late int _defence;
  late int _health;

  get attackPower => _attackPower;
  get defence => _defence;
  get health => _health;
  // 터치횟수 * 스킬 * 어택파워

  Character({
    required this.name,
    required int attackPower,
    required int health,
  }) {
    _attackPower = attackPower;
    _health = health;
  }

  attacked({
    required int touchCount,
    required int skillOfEnemy,
    required int attackPowerOfEnemy,
  }) {}
}

class Candy extends Character {
  CandyType type;
  CandyInfo info;
  int walkingDistance;

  Candy({
    required String name,
    required int health,
    required int attackPower,
    required this.type,
  })  : info = CandyInfo.getInfo(type),
        walkingDistance = 0,
        super(name: name, health: health, attackPower: attackPower);

  void evolution() {
    // ... (이전에 작성한 evolution 메소드 생략)
  }

  @override
  void attacked({
    required int touchCount,
    required int skillOfEnemy,
    required int attackPowerOfEnemy,
  }) {
    // 데미지 계산: 터치 횟수 * 적의 스킬 * 적의 공격력
    int damage = touchCount * skillOfEnemy * attackPowerOfEnemy;
    // Candy의 health를 줄임 (음수가 되지 않도록)
    _health = (_health - damage).clamp(0, _health);
  }
}

class Tooth extends Character {}
