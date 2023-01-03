import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage extends StatelessWidget {
  const AwaitParamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop('Retornando parametro por flutter nativo');
                },
                child: const Text('return to home com flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.back(result: 'Retornando parametro por GetX');
                },
                child: const Text('return to home com get X')),
          ],
        ),
      ),
    );
  }
}
