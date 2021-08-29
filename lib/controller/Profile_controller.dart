import 'package:boiler2021/screens/inicio.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileController extends GetxController {
  final _obj = 'cosas'.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
  Rxn<User> _firebaseUser = Rxn<User>();

  FirebaseAuth? auth = FirebaseAuth.instance;
  String? get usuario => _firebaseUser.value?.email;
  @override
  // ignore: must_call_super
  void onInit() {
    _firebaseUser.bindStream(auth!.authStateChanges());
  }

  void CrearUsuario(String Mail, String Password) async {
    await auth!
        .createUserWithEmailAndPassword(email: Mail, password: Password)
        .then((value) => Get.offAll(() => inicio()))
        .catchError((onError) =>
            Get.snackbar("Error", "No pudo conectarse ${onError.printInfo()}"));
  }

  void LoginUsuario(String Mail, String Password) async {
    await auth!
        .signInWithEmailAndPassword(email: Mail, password: Password)
        .then((value) => Get.offAll(() => inicio()))
        .catchError((onError) =>
            Get.snackbar("Error", "No pudo conectarse ${onError.printInfo()}"));
  }

  void Desloguear() {
    auth!.signOut();
  }
}
