import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentsPage extends StatelessWidget {
  const ArgumentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> arguments = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments'),
      ),
      body: Center(child: Text(arguments['name'] ?? 'Nome não encontrado')),
    );
  }
}
