import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routes/navegacao_comuns/send_params/send_params_page1.dart';

class SendParamsPage extends StatelessWidget {
  const SendParamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviando Params'),
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
                          return const SendParamsPage1();
                        }),
                        settings: const RouteSettings(
                            arguments: 'Parametro pelo flutter nativo')),
                  );
                },
                child: const Text('Go to page 1 com flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.to(const SendParamsPage1(),
                      arguments: 'Parametro pelo getX');
                },
                child: const Text('Go to page 1 com get X')),
          ],
        ),
      ),
    );
  }
}
