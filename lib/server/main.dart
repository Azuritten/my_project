library server;

import 'package:redstone/server.dart' as Server;
import 'dart:io' show Platform;
import 'package:path/path.dart' as Path;
// import 'package:mongo_dart/mongo_dart.dart';
import 'package:shelf_static/shelf_static.dart';

part './routes.dart';

final DB_URI = "mongodb://localhost/dbname";

///Returns all users recorded in the database
// @Server.Route('/services/users/list')
// listUsers() {
//   var conn = new Db(DB_URI);
//
//   return conn.open().then((_) {
//
//     return conn.collection("users").find().toList();
//
//   }).whenComplete(() {
//     conn.close();
//   });
//
// }

void start() {
  // String scriptPath = Path.dirname(Path.fromUri(Platform.script));
  // String pathToWeb = Path.normalize('$scriptPath/../web');
  // Server.setShelfHandler(createStaticHandler(pathToWeb, defaultDocument: 'index.html'));

  Server.setupConsoleLog();
  Server.start();
}
