import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_tracker/presentation/home_page/view/widgets/project_card.dart';

import '../../../core/app_export.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //todo customize floating action button later - if needed
        floatingActionButton: FloatingActionButton(onPressed: (){
          //todo add new project
        },
        backgroundColor: ColorConstant.white,
        elevation: 1.5,
        hoverElevation: .8,
        enableFeedback: true,
        child: SvgPicture.asset(ImageConstant.imgAdd,  colorFilter: ColorFilter.mode(
                          ColorConstant.mainBlack.withOpacity(.8), BlendMode.srcIn)),
        ),
        
          body: Column(
        children: [
          //todo add project button
          //todo projects list
          ...List.generate(
            3,
            (index) => ProjectCard(
              projectId: '2475${index + 1}',
              title: 'Project ${index + 1}',
              topPadding: index == 0 ? 24 : null,
            ),
          )
        ],
      )),
    );
  }
}
