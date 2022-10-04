import 'package:life_controll_app/constants/exeptions.dart';
import 'package:life_controll_app/core/models/task.dart';
import 'package:life_controll_app/core/ports/ports.dart';

class TaskService implements TaskPort {
  final TaskRepository _taskRepository;

  TaskService(this._taskRepository);

  @override
  Duration countDuration(Task task, Duration boundary) {
    var phases = task.phases;
    var currentTime = DateTime.now();
    var boundaryTime = currentTime.subtract(boundary);
    var duration = Duration();
    for (var phase in phases) {
      if (boundaryTime.isBefore(phase.start)) {
        duration += phase.finish!.difference(phase.start);
      } else if (boundaryTime.isAfter(phase.start)) {
        duration += phase.finish!.difference(boundaryTime);
      }
    }
    return duration;
  }

  @override
  void delete(String id) {
    _taskRepository.delete(id);
  }

  @override
  Task getById(String id) {
    return _taskRepository.read(id);
  }

  @override
  List<Task> getByTitle(String query) {
    var allTasks = _taskRepository.readAll();
    var reqTasks =
        allTasks.where((element) => element.title.contains(query)).toList();
    return reqTasks;
  }

  @override
  Task save(Task task) {
    try {
      var res = _taskRepository.read(task.id);
      if (task == res) {
        return task;
      }
      _taskRepository.update(task);
      return task;
    } on NotFoundExeption {
      _taskRepository.create(task);
      return task;
    }
  }
}
