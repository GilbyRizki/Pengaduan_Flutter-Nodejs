import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pengaduan_masyarakat_flutter/createMasyarakat.dart';
import 'package:pengaduan_masyarakat_flutter/home.dart';
import 'package:pengaduan_masyarakat_flutter/readMasyarakat.dart';
import 'package:pengaduan_masyarakat_flutter/updateMasyarakat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: ()=> MyApp()),
        GetPage(name: "/create", page: ()=> CreateMasyarakat()),
        GetPage(name: "/read", page: ()=> ReadMasyarakat()),
        GetPage(name: "/update", page: ()=> UpdateMasyarakat()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: homeScreen(),
    );
  }
}
