import 'package:ddm_server/preset_class/base_info.dart';
import 'package:ddm_server/preset_class/data_path.dart';
import 'package:hive/hive.dart';

class SingleBox {
  // init data base
  SingleBox._privateConstructor(){
    if (Hive.isBoxOpen('rulers')) {
      return ;
    }
    Hive.init('./data_base');
    // register classes
    Hive.registerAdapter(BaseInfoAdapter());
    Hive.registerAdapter(DataPathAdapter());
    // open box
    box = Hive.openBox('rulers');
  }

  // Singleton
  static final SingleBox _instance = SingleBox._privateConstructor();

  static SingleBox get instance => _instance;

  // must use await
  Future<Box> box;
}
