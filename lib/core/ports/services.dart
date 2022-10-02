import 'package:life_controll_app/core/models/models.dart';

abstract class TaskPort {
  Task save(Task task);
  Task getById(String id);
  List<Task> getByTitle(String query);
  void delete(String id);
  Duration countDuration(Task task, Duration boundary);
}

abstract class TimeConsumePort {
  Task saveResult(Task task, Phase phase);
  Phase tick(Phase phase);
}
