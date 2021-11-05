// This is a basic Flutter widget test.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:clean_project/app.dart';

void main() {
  test('simple test', () {
    // arrange and act
    const app = App();

    // assert
    expect(app, isA<Widget>());
  });
}
