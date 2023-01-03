import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routes/navegacao_comuns/awaitParams/await_params_page.dart';

class AwaitParamsHome extends StatelessWidget {
  const AwaitParamsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await parames home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () async {
                  final result = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const AwaitParamsPage();
                      }),
                    ),
                  );
                  debugPrint(result);
                },
                child: const Text('Go to page com flutter nativo')),
            TextButton(
                onPressed: () async {
                  final result = await Get.to(const AwaitParamsPage());
                  debugPrint(result);
                },
                child: const Text('Go to page com get X')),
          ],
        ),
      ),
    );
  }
}
