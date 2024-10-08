import 'package:anka_intelligence_app/constant/theme/text_theme.dart';
import 'package:anka_intelligence_app/core/widget/neu_box.dart';
import 'package:flutter/material.dart';


class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    Key? key,
    this.image,
    required this.titleText,
    this.iconButton,
    this.button,
  }) : super(key: key);

  final Image? image;
  final String titleText;
  final IconButton? iconButton;

  final Widget? button;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 45, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (iconButton != null) NeuBox(child: iconButton),
          AppTextTheme.londrinaShadow(
            titleText,
            context,
          ),
          NeuBox(child: image ?? button)
        ],
      ),
    );
  }
}
