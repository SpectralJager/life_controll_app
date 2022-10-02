import 'package:flutter_test/flutter_test.dart';
import 'package:life_controll_app/core/models/models.dart';
import 'package:life_controll_app/repositories/ram.dart';

void main() {
  group('test task repository', () {
    var ram = TaskTestRep();
    var testTask =
        Task(id: "test3", title: "test3", description: "", phases: []);
    test(
      ".read",
      () {
        var res = ram.read("test1");
        expect(
          Task(id: "test1", title: "Test1", description: "Test", phases: []),
          equals(res),
        );
      },
    );
    test(
      ".create",
      () {
        ram.create(testTask);
        expect(testTask, equals(ram.read(testTask.id)));
      },
    );
    test(
      ".update",
      () {
        testTask = testTask.copyWith(description: "updated");
        ram.update(testTask);
        expect(testTask, equals(ram.read(testTask.id)));
      },
    );
    test(
      ".delete",
      () {
        ram.delete(testTask.id);
      },
    );
  });
}
