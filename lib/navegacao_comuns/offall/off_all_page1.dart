import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routes/navegacao_comuns/offall/off_all_page2.dart';

class OffAllPage1 extends StatelessWidget {
  const OffAllPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
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
                          return const OffAllPage2();
                        }),
                        settings: const RouteSettings(name: 'Page1')),
                  );
                },
                child: const Text('Go to page 2 com flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.to(const OffAllPage2());
                },
                child: const Text('Go to page 2 com get X')),
          ],
        ),
      ),
    );
  }
}
