import 'package:first_web_app/controllers/counter_controller.dart';
import 'package:first_web_app/screens/other.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

//put use kora hoi controller register korar jonno
  final CounterController counterController =
      Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                  "Clicks : ${counterController.counter.value}"),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(OtherScreen());
                },
                child: const Text(
                    "Open other screen"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counterController.increment();
        },
      ),
    );
  }
}
