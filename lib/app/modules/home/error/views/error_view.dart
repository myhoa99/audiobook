import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/error_controller.dart';

class ErrorView extends GetView<ErrorController> {
  const ErrorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ErrorView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ErrorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
