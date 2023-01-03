import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routes/navegacao_comuns/off/off_page2.dart';

class OffPage1 extends StatefulWidget {
  const OffPage1({Key? key}) : super(key: key);

  @override
  State<OffPage1> createState() => _OffPage1State();
}

class _OffPage1State extends State<OffPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off page 1'),
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
                        return const OffPage2();
                      }),
                    ),
                  );
                },
                child: const Text('Go to page 2 com flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.to(const OffPage2());
                },
                child: const Text('Go to page 2 com get X')),
          ],
        ),
      ),
    );
  }
}
