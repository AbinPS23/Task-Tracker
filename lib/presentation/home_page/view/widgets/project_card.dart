import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.projectId,
    required this.title,
    this.topPadding,
  });
  final String projectId;
  final String title;
  final double? topPadding;

  @override
  Widget build(BuildContext context) {
    final TextStyle projectIdTextStyle = AppStyle.anonymousPro.copyWith(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: ColorConstant.mainBlack,
    );
    final TextStyle projectTitleTextStyle = AppStyle.anonymousPro.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ColorConstant.mainBlack,
    );
    const width8 = SizedBox(width: 8);
    final borderRadius12 = BorderRadius.circular(12);
    return InkWell(
      onTap: (){
        //todo push to show tasks screen with the project id
      },
      borderRadius: borderRadius12,
      child: Container(
        margin: EdgeInsets.only(left: 12, right: 12, top: topPadding ?? 10),
        // margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        padding: const EdgeInsets.all(12),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstant.white,
          borderRadius: borderRadius12,
          boxShadow: [
            BoxShadow(
              color: ColorConstant.whitef1f3f4.withOpacity(.7),
              blurRadius: 6,
              offset: const Offset(0, 1),
              blurStyle: BlurStyle.inner,
            ),
          ],
        ),
        child: Row(
          children: [
            Text(
              projectId,
              style: projectIdTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
            width8,
            Text(
              title,
              style: projectTitleTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            SvgPicture.asset(ImageConstant.imgForward,
                colorFilter:
                    ColorFilter.mode(ColorConstant.mainBlack.withOpacity(.8), BlendMode.srcIn))
          ],
        ),
      ),
    );
  }
}
