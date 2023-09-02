import 'package:task_tracker/repository/projects_model/project_model.dart';

class HomePageState {
  HomePageState({
    this.isLoading,
    this.isError,
    this.isSuccess,
    this.projects,
  });
  bool? isLoading;
  bool? isError;
  bool? isSuccess;
  List<Project>? projects;

  HomePageState copyWith({
    bool? isLoading,
    bool? isError,
    bool? isSuccess,
    List<Project>? projects,
  }) =>
      HomePageState(
        isLoading: isLoading ?? this.isLoading,
        isError: isError ?? this.isError,
        isSuccess: isSuccess ?? this.isSuccess,
        projects: projects ?? this.projects,
      );
}
