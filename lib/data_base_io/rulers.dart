import 'package:ddm_server/preset_class/base_info.dart';
import 'package:ddm_server/preset_class/data_path.dart';
import 'package:hive/hive.dart';

class Rulers {
  static List<dynamic> rulers = [
    DataPath(
      ruler: [
        '/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQ_Favorite'
      ],
      source: 'office',
      instruction: '安装插件后，打开即是qq的各种表情包文件',
      ruleName: '安卓qq表情包',
      stars: 89,
      suffix: '.jpg',
    ),
  ];

  // write rulers to rulers.hive
  static Future<void> write() async {
    Hive.registerAdapter(BaseInfoAdapter());
    Hive.registerAdapter(DataPathAdapter());
    Hive.init('./data_base');
    final box = await Hive.openBox('rulers');
    await box.clear();
    await box.addAll(rulers);
    await box.put('version', 1);
    return;
  }
}
