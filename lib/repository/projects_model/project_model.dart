import 'dart:async';

enum TaskStatus {
  todo,
  onProgress,
  onHold,
  completed,
}

class Task {
  String taskId; //uuid
  String task;
  Timer timer;
  TaskStatus taskStatus;
  Task({
    required this.taskId,
    required this.task,
    required this.timer,
    required this.taskStatus,
  });
}

class Project {
  int id;
  String title;
  List<Task> taskList;
  Project({
    required this.id,
    required this.title,
    required this.taskList,
  });
}
