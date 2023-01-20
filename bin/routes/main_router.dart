import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

// Configure routes.
final router = Router()
  ..get('/', _rootHandler)
  ..get('/lead/<message>', _leadHandler);

Response _rootHandler(Request req) {
  return Response.ok('We are live!\n');
}

Response _leadHandler(Request request) {
  final message = request.params['message'];
  return Response.ok('$message\n');
}
