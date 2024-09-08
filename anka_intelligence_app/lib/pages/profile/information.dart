import 'package:anka_intelligence_app/constant/theme/text.dart';
import 'package:flutter/material.dart';


class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppText.notificatiOn)),
      body: const Center(child: Text(AppText.notification)),
    );
  }
}
