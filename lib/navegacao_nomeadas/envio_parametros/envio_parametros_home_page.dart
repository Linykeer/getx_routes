import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametrosHomePage extends StatelessWidget {
  const EnvioParametrosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio de Parametros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/envio_parametro/arguments', arguments: {
                    'curso': 'Jornada GetX',
                    'name': 'Linykeer Almeida'
                  });
                },
                child: const Text('Arguments')),
            ElevatedButton(
                onPressed: () {
                  final param = Uri.encodeFull('Linykkeer Almeida');
                  Get.toNamed('/envio_parametro/pathParams/$param/jornadaGetX');
                },
                child: const Text('Path Param')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      '/envio_parametro/queryParams?nome=Linykeer Almeida&id=1&curso=jornadaGetX');
                },
                child: const Text('Query Param')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/envio_parametro/queryParams',
                      parameters: {'nome': 'Linykeer Almeida'});
                },
                child: const Text('Query Param')),
          ],
        ),
      ),
    );
  }
}
