import 'package:boiler2021/controller/Main_controller.dart';
import 'package:boiler2021/controller/Profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class manejoUsuario extends StatelessWidget {
  final obj = Get.find<MainController>();
  final usuario = Get.find<ProfileController>();
  final TextEditingController mail = TextEditingController();
  final TextEditingController pass = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: mail,
                decoration: const InputDecoration(
                  hintText: 'Ingrese su mail',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty || !value.isEmail) {
                    return 'es necesario que ingrese un mail';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: pass,
                decoration: const InputDecoration(
                  hintText: 'ingrese su Contraseña',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState!.validate()) {
                      usuario.CrearUsuario(mail.text, pass.text);
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
