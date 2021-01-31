import 'package:ddm_server/ddm_server.dart';
import 'package:aqueduct/aqueduct.dart';

class DataBaseController extends ResourceController {
  @Operation.get()
  FutureOr<Response> getDataBaseVersion() {
    // TOOD: get version from database
    int _version = 23;
    return Response.ok(
      {
        "result": _version,
      },
    );
  }

  @Operation.get('version')
  FutureOr<Response> checkDataBaseVersion(
      @Bind.path('version') int version) async {
    // TOOD: get version from database
    int _version = 23;

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

  // @Operation.post('id')
  // FutureOr postDataBase(@Bind.path('id') int version) {
  //   // final File file= File('./data_base_controller.dart');
  //   return Response.ok({9: 9});
  // }
}
