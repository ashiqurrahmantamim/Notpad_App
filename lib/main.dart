import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqf_lite/pages/sqflite_curd.dart';
import 'package:sqflite/sqflite.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      home: SqfliteTodo(),

    );
  }
}