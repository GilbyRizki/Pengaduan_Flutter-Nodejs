import 'package:flutter/material.dart';
import 'package:flutter_nodejs/createPengaduan.dart';
import 'package:flutter_nodejs/readPengaduan.dart';
import 'package:flutter_nodejs/updatePengaduan.dart';
import 'package:get/get.dart';
import 'package:flutter_nodejs/home.dart';
import 'package:flutter_nodejs/createMasyarakat.dart';
import 'package:flutter_nodejs/readMasyarakat.dart';
import 'package:flutter_nodejs/updateMasyarakat.dart';
import 'package:flutter_nodejs/createPetugas.dart';
import 'package:flutter_nodejs/readPetugas.dart';
import 'package:flutter_nodejs/updatePetugas.dart';

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
        GetPage(name: "/", page: () => MyApp()),
        GetPage(name: "/create", page: () => CreateMasyarakat()),
        GetPage(name: "/read", page: () => ReadMasyarakat()),
        GetPage(name: "/update", page: () => UpdateMasyarakat()),

        GetPage(name: "/readPetugas", page: () => ReadPetugas()),
        GetPage(name: "/createPetugas", page: () => CreatePetugas()),
        GetPage(name: "/updatePetugas", page: () => UpdatePetugas()),

        GetPage(name: "/readPengaduan", page: () => ReadPengaduan()),
        GetPage(name: "/createPengaduan", page: () => CreatePengaduan()),
        GetPage(name: "/updatePengaduan", page: () => UpdatePengaduan()),
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
