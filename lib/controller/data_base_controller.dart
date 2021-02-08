import 'package:ddm_server/data_base_io/single_box.dart';
import 'package:ddm_server/ddm_server.dart';
import 'package:aqueduct/aqueduct.dart';
import 'package:hive/hive.dart';

class DataBaseController extends ResourceController {
  @Operation.get()
  FutureOr<Response> getDataBaseVersion() async {
    // get box
    final Box box =await SingleBox.instance.box;
    final version = box.toMap()['version'] as int;
    return Response.ok(
      {
        "result": version,
      },
    );
  }

  @Operation.get('version')
  FutureOr<Response> checkDataBaseVersion(
      @Bind.path('version') int version) async {
    final Box box =await SingleBox.instance.box;
    final _version = box.toMap()['version'] as int;
    if (version == _version) {
      return Response.ok(
        {
          "result": _version,
        },
      );
    } else if (version > _version || version < 0) {
      return Response.notFound(
        body: {
          "result": _version,
          "message": "version is too high, or error",
        },
      );
    } else {
      return Response.badRequest(
        body: {
          "result": _version,
          "message": "the version is too low.",
        },
      );
    }
  }
}
