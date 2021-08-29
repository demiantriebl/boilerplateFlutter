import 'package:get/get.dart';

class MainController extends GetxController {
  final data = 'cosas'.obs;
  setData() => data.value = data.value + " a";
}
