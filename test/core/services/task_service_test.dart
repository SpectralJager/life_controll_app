import 'package:flutter_test/flutter_test.dart';
import 'package:life_controll_app/core/models/phase.dart';
import 'package:life_controll_app/core/models/task.dart';
import 'package:life_controll_app/core/services/task_service.dart';
import 'package:life_controll_app/repositories/ram.dart';

void main() {
  group('task_service', () {
    var rep = TaskTestRep();
    var service = TaskService(rep);

    test('.save', () {
      var task = Task(id: "test3", title: "Test3", description: "", phases: []);
      var res = service.save(task);
      expect(task, equals(res));
      task = task.copyWith(description: "update");
      res = service.save(task);
      expect(task, equals(res));
    });
    test('.getById', () {
      var task =
          Task(id: "test3", title: "Test3", description: "update", phases: []);
      var res = service.getById(task.id);
      expect(task, equals(res));
    });
    test('.getByTitle', () {
      var res = service.getByTitle("Test");
      expect(res.length, equals(3));
    });
    test('.delete', () {
      service.delete("test3");
      var res = service.getByTitle("");
      expect(res.length, equals(2));
    });
    test('.countDuration', () {
      var task = service.getById("test2");
      var res = service.countDuration(task, Duration(hours: 3));
      expect(Duration(hours: 1).inHours, equals(res.inHours));
    });
  });
}
