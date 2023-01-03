import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routes/Home.dart';
import 'package:getx_routes/navegacao_nomeadas/envio_parametros/arguments_page.dart';
import 'package:getx_routes/navegacao_nomeadas/envio_parametros/envio_parametros_home_page.dart';
import 'package:getx_routes/navegacao_nomeadas/envio_parametros/path_param_page.dart';
import 'package:getx_routes/navegacao_nomeadas/envio_parametros/query_param_page.dart';
import 'package:getx_routes/navegacao_nomeadas/home_page.dart';
import 'package:getx_routes/navegacao_nomeadas/inicial/page1.dart';
import 'package:getx_routes/navegacao_nomeadas/rota_nao_encontrada/rota_nao_encontrada_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      unknownRoute:
          GetPage(name: '/404', page: () => const RotaNaoEncontradaPage()),
      initialRoute: '/home',
      routingCallback: (Routing? routing) {
        debugPrint(routing?.previous);
        debugPrint(routing?.current);
      },
      getPages: [
        GetPage(name: '/home', page: () => const Home()),
        GetPage(name: '/home/nomeadas', page: () => const HomePage()),
        GetPage(name: '/inicial/page1', page: () => const Page1()),
        GetPage(
            name: '/envio_parametro',
            page: () => const EnvioParametrosHomePage(),
            children: [
              GetPage(name: '/arguments', page: () => const ArgumentsPage()),
              GetPage(
                  name: '/pathParams/:name/jornadaGetX',
                  page: () => const PathParamPage()),
              GetPage(name: '/queryParams', page: () => const QueryParamPage())
            ]),
      ],
    );
  }
}
