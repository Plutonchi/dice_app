import 'dart:math';

import 'package:dice_app/scr/app/views/home/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DiceController controller = Get.put(
      DiceController(),
    );
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Obx(
            () => Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      controller.left.value = Random().nextInt(6) + 1;
                      controller.right.value = Random().nextInt(6) + 1;
                    },
                    child: Image.asset(
                      'assets/images/dice${controller.right}.png',
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      controller.left.value = Random().nextInt(6) + 1;
                      controller.right.value = Random().nextInt(6) + 1;
                    },
                    child: Image.asset(
                      'assets/images/dice${controller.left}.png',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
