import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routes/navegacao_comuns/offall/off_all_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const OffAllPage3();
                      }),
                    ),
                    (route) => false,
                  );
                },
                child: const Text(
                    'Go to page 3 excluindo toda arvore de navegação com flutter nativo')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const OffAllPage3();
                      }),
                      settings: const RouteSettings(
                          arguments: 'Parametro pelo Flutter Nativo'),
                    ),
                  );
                },
                child: const Text(
                    'Go to page 3 excluindo quaze toda arvore de navegação com flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.to(
                    const OffAllPage3(),
                  );
                },
                child: const Text(
                    'Go to page 3 excluindo toda arvore de navegação com get X')),
          ],
        ),
      ),
    );
  }
}
