import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routes/navegacao_comuns/navegacao_comun_home_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Navegações'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(const NavegacaoComunHomePage());
                },
                child: Text('Navegação com rotas Comum')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home/nomeadas');
                },
                child: Text('Navegação com rotas Nomeadas')),
          ],
        ),
      ),
    );
  }
}
