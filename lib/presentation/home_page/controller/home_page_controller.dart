import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_tracker/repository/projects_model/project_model.dart';

import '../state/home_page_state.dart';

class HomePageStateNotifier extends StateNotifier<HomePageState> {
  HomePageStateNotifier()
      : super(HomePageState(
          isError: false,
          isLoading: false,
          isSuccess: false,
          projects: <Project>[],
        ));
  //todo add new project

}
