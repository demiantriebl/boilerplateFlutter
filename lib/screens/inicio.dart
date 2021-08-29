import 'package:boiler2021/controller/Main_controller.dart';
import 'package:boiler2021/screens/perfil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class inicio extends StatelessWidget {
  final obj = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('nombre del programa'), actions: <Widget>[
        IconButton(
          onPressed: () => Get.to(() => Perfil()),
          icon: const Icon(Icons.people_alt_rounded),
        )
      ]),
      body: Center(
        child: Obx(
          () => Text('centrado ${obj.data.value}'),
        ),
      ),
      floatingActionButton: ElevatedButton(
        child: Text('+'),
        onPressed: () => obj.setData(),
      ),
    );
  }
}
