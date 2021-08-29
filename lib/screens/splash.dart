import 'package:boiler2021/controller/Main_controller.dart';
import 'package:boiler2021/controller/Profile_controller.dart';
import 'package:boiler2021/screens/manejo_usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  final usuario = Get.put(ProfileController());
  final Main = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: manejoUsuario(),
    );
  }
}
