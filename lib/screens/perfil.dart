import 'package:boiler2021/controller/Profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Perfil extends StatelessWidget {
  final perfil = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [Text('datos del perfil')],
        ),
      ),
    );
  }
}
