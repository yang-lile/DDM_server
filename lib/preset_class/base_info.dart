import 'package:hive/hive.dart';

part 'base_info.g.dart';

/// 基础信息，包含来源、规则名、介绍、点赞数
@HiveType(typeId: 0)
class BaseInfo extends HiveObject {
  BaseInfo({
    this.source,
    this.instruction,
    this.ruleName,
    this.stars,
  });

  @HiveField(0)
  final String source;

  @HiveField(1)
  final String ruleName;

  @HiveField(2)
  final String instruction;

  @HiveField(3)
  int stars;
}
