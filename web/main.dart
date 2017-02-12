import 'package:http/browser_client.dart';
import 'package:angular2/platform/browser.dart';
import "package:angular2/core.dart";
// import 'package:angular2/platform/common.dart' show HashLocationStrategy, LocationStrategy;
import 'package:angular2/router.dart' show ROUTER_PROVIDERS;

import 'package:my_project/client/application.dart';


void main() {
    bootstrap(RootComponent, [
      ROUTER_PROVIDERS,
      // provide(LocationStrategy, useClass: HashLocationStrategy, deps:[]),
      provide(BrowserClient, useFactory: () => (new BrowserClient()), deps: []),
    ]);
}
