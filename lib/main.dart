import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home/home_controller.dart';
import 'home/home_screen.dart';

void main() {
  initialize();
  runApp(const MyApp());
}

void initialize() {
  Get.lazyPut(() => HomeController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Agmo Pre Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
