import 'dart:html';
import 'dart:async';

import "package:angular2/core.dart";
import 'package:angular2/common.dart' show NgClass, NgStyle;
import 'package:angular2/router.dart';



@Component(
  selector: "root",
  templateUrl:'application.html',
  styleUrls: const ['application.css'],
  directives: const [ROUTER_DIRECTIVES, NgStyle, NgClass])
@RouteConfig(const [
    const Route(path: "/", name: "Dashboard", component: RootComponent, useAsDefault: true),
])
class RootComponent {
  String title = '';
}
