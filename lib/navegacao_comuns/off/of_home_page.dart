import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routes/navegacao_comuns/off/off_page1.dart';

class OfHomePage extends StatelessWidget {
  const OfHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const OffPage1();
                      }),
                    ),
                  );
                },
                child: const Text('Go to page 1 com flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.to(const OffPage1());
                },
                child: const Text('Go to page 1 com get X')),
          ],
        ),
      ),
    );
  }
}
