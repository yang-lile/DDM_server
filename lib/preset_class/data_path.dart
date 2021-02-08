import 'package:hive/hive.dart';
import 'base_info.dart';

part 'data_path.g.dart';

@HiveType(typeId: 1)
class DataPath extends HiveObject {
  DataPath({
    String source,
    String instruction,
    String ruleName,
    int stars,
    this.ruler,
    this.suffix,
  }) {
    baseInfo = BaseInfo(
      instruction: instruction,
      source: source,
      ruleName: ruleName,
      stars: stars,
    );
  }

  @HiveField(0)
  BaseInfo baseInfo;

  // ruler is very simple to collection data by address
  @HiveField(1)
  List<String> ruler;

  // like '.exe' '.txt', it often is null, unless files need special format.
  @HiveField(2)
  String suffix;
}
