import 'dart:math';
import 'package:get/get.dart';

class DiceController extends GetxController {
  RxInt left = 1.obs;
  RxInt right = 1.obs;
  final random1 = Random().nextInt(6) + 1;
  final random2 = Random().nextInt(6) + 1;

}
