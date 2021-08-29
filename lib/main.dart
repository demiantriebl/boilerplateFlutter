import 'package:boiler2021/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/perfil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (ctx, child) {
        return Scaffold(
          appBar: AppBar(
              title: Text('Titulo del programa'),
              backgroundColor: Colors.white54,
              actions: <Widget>[
                IconButton(
                  onPressed: () => Get.to(() => Perfil()),
                  icon: const Icon(Icons.people_alt_rounded),
                )
              ]),
          body: Splash(),
        );
      },
    );
  }
}
