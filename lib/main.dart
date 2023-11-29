import 'package:flutter/material.dart';
import 'package:pengaduan_flutter/createMasyarakat.dart';
import 'package:pengaduan_flutter/readMasyarakat.dart';
import 'package:pengaduan_flutter/updateMasyarakat.dart';

import 'package:pengaduan_flutter/createPengaduan.dart';
import 'package:pengaduan_flutter/readPengaduan.dart';
import 'package:pengaduan_flutter/updatePengaduan.dart';

import 'package:pengaduan_flutter/createPetugas.dart';
import 'package:pengaduan_flutter/readPetugas.dart';
import 'package:pengaduan_flutter/updatePetugas.dart';
import 'package:get/get.dart';
import 'package:pengaduan_flutter/home.dart';

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
