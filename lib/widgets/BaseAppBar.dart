import 'package:boiler2021/screens/perfil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor = Colors.lightGreen;
  final AppBar? appBar;

  const BaseAppBar({Key? key, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('Titulo del programa'),
        backgroundColor: backgroundColor,
        actions: <Widget>[
          IconButton(
            onPressed: () => Get.to(() => Perfil()),
            icon: const Icon(Icons.people_alt_rounded),
          )
        ]);
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar!.preferredSize.height);
}
