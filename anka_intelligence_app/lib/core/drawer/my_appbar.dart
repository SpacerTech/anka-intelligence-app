import 'package:anka_intelligence_app/constant/theme/text_theme.dart';
import 'package:anka_intelligence_app/core/widget/neu_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';


class DrawerTopBar extends StatefulWidget {
  const DrawerTopBar({
    Key? key,
    required this.drawerController,
    required this.image,
    this.title,
  }) : super(key: key);
  final AdvancedDrawerController drawerController;
  final String image;
  final String? title;

  @override
  State<DrawerTopBar> createState() => _DrawerTopBarState();
}

class _DrawerTopBarState extends State<DrawerTopBar> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                widget.drawerController.showDrawer();
              },
              icon: const NeuBox(child: Icon(Icons.menu))),
          AppTextTheme.londrinaShadow(widget.title ?? "", context),
          NeuBox(
            child: Image(
              image: AssetImage(
                widget.image,
              ),
              color: theme.brightness == Brightness.light
                  ? Colors.black
                  : Colors.white,
              height: 25,
            ),
          )
        ],
      ),
    );
  }
}
