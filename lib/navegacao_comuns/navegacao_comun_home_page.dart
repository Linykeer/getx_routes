import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routes/navegacao_comuns/awaitParams/await_params_home.dart';
import 'package:getx_routes/navegacao_comuns/back/back_home_page.dart';
import 'package:getx_routes/navegacao_comuns/off/of_home_page.dart';
import 'package:getx_routes/navegacao_comuns/offall/off_all_home_page.dart';
import 'package:getx_routes/navegacao_comuns/send_params/send_params_page.dart';
import 'package:getx_routes/navegacao_comuns/to/to_home_page.dart';

class NavegacaoComunHomePage extends StatelessWidget {
  const NavegacaoComunHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Navegação Comum'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(const ToHomePage());
            },
            child: const Text('TO (Push)'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const BackHomePage());
            },
            child: const Text('Back (Pop)'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const OfHomePage());
            },
            child: const Text('Off (Replacement)'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const OffAllHomePage());
            },
            child: const Text('OffAll (PopAndRemoveUntil)'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const SendParamsPage());
            },
            child: const Text('Send Params'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const AwaitParamsHome());
            },
            child: const Text('Await Params'),
          ),
        ],
      )),
    );
  }
}
