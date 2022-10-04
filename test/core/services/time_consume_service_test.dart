import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:life_controll_app/core/models/phase.dart';
import 'package:life_controll_app/core/services/time_consume_service.dart';

void main() {
  group('time consume', () {
    var consumer = TimeConsumeService();
    test('.tick', () async {
      var phase = Phase(
        id: "test",
        start: DateTime.now(),
        finish: DateTime.now(),
      );
      Timer.periodic(const Duration(seconds: 10), (t) {
        phase = consumer.tick(phase);
      });
      await Future.delayed(const Duration(seconds: 10));
      expect(phase.finish.difference(phase.start),
          equals(consumer.getDuration(phase)));
    });
  });
}
