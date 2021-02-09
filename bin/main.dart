import 'package:ddm_server/data_base_io/rulers.dart';
import 'package:ddm_server/ddm_server.dart';

Future main() async {
  await Rulers.write();
  final app = Application<DdmServerChannel>()
    ..options.configurationFilePath = "config.yaml"
    ..options.port = 80;

  final count = Platform.numberOfProcessors ~/ 2;
  await app.start(numberOfInstances: count > 0 ? count : 1);

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}
