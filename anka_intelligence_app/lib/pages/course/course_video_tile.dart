import 'package:anka_intelligence_app/models/course_model.dart';
import 'package:flutter/material.dart';



class CourseListTile extends StatelessWidget {
  const CourseListTile({
    Key? key,
    required this.video,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  final Video video;
  final Icon icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(video.videoTitle),
      subtitle: Text("${video.duration.inMinutes} dk"),
      trailing: icon,
      iconColor: iconColor,
    );
  }
}
