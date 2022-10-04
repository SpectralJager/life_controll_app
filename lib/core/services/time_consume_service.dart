import 'package:life_controll_app/core/models/task.dart';
import 'package:life_controll_app/core/models/phase.dart';
import 'package:life_controll_app/core/ports/services.dart';

class TimeConsumeService implements TimeConsumePort {
  @override
  Task saveResult(Task task, Phase phase) {
    return task.copyWith(phases: [...task.phases, phase]);
  }

  @override
  Phase tick(Phase phase) {
    return phase.copyWith(finish: DateTime.now());
  }

  Duration getDuration(Phase phase) {
    return phase.finish.difference(phase.start);
  }
}
