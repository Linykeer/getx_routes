import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackPage1 extends StatelessWidget {
  const BackPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('voltar com flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('voltar com get X')),
          ],
        ),
      ),
    );
  }
}
