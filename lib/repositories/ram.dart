// ignore_for_file: prefer_final_fields

import 'package:life_controll_app/constants/exeptions.dart';
import 'package:life_controll_app/core/models/models.dart';
import 'package:life_controll_app/core/models/task.dart';
import 'package:life_controll_app/core/ports/ports.dart';

class TaskTestRep implements TaskRepository {
  static List<Task> _tasks = [
    Task(id: "test1", title: "Test1", description: "Test", phases: []),
    Task(
      id: "test2",
      title: "Test2",
      description: "Test",
      phases: [
        Phase(
            id: "test2phase1",
            start: DateTime.now().subtract(Duration(hours: 1)),
            finish: DateTime.now()),
      ],
    ),
  ];

  @override
  void create(Task task) {
    if (_tasks.contains(task)) {
      throw AlreadyExistExeption("task ${task.id} already exist");
    }
    _tasks.add(task);
  }

  @override
  void delete(String id) {
    final index = _tasks.indexWhere((element) => element.id == id);
    if (index == -1) {
      throw NotFoundExeption("task with $id not found or cant deleted");
    }
    _tasks.removeAt(index);
  }

  @override
  Task read(String id) {
    return _tasks.firstWhere(
      (element) => element.id == id,
      orElse: () => throw NotFoundExeption("task with $id not found"),
    );
  }

  @override
  void update(Task task) {
    if (_tasks.indexWhere((element) => element.id == task.id) == -1) {
      throw NotFoundExeption("task ${task.id} not found");
    }
    final index = _tasks.indexWhere((element) => element.id == task.id);
    _tasks[index] = task;
  }

  @override
  List<Task> readAll() {
    return _tasks;
  }
}
