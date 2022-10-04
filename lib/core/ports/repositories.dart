import 'package:life_controll_app/core/models/models.dart';

abstract class TaskRepository {
  void create(Task task);
  void update(Task task);
  Task read(String id);
  List<Task> readAll();
  void delete(String id);
}
