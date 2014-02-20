library basic_test;

import 'package:unittest/unittest.dart';
import 'package:di/di.dart';
import 'package:angular/angular.dart';
import 'package:angular/mock/module.dart';

import '../main.dart';
import '../my_controller.dart';

main() {
  setUp(setUpInjector);
  tearDown(tearDownInjector);

  group('test controller', () {
    setUp(module((Module m) => m.install(new MyModule())));

    test('text', inject((MyController ctrl) {
      expect(ctrl.text, 'Angular Dart');
    }));
  });
}