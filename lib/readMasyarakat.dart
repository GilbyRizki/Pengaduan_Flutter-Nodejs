import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pengaduan_masyarakat_flutter/controllers/MasyarakatController.dart';

class ReadMasyarakat extends StatelessWidget {
  const ReadMasyarakat({super.key});

  @override
  Widget build(BuildContext context) {
    MasyarakatController masyarakatController = Get.put(MasyarakatController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Read Masyarakat')
      ),
      body: Center(
        child: Obx(
          () => masyarakatController.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: masyarakatController.listmasyarakat.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('NIK : '
                          '${masyarakatController.listmasyarakat[index].nik}\nNama : ${masyarakatController.listmasyarakat[index].nama}\nUsername : ${masyarakatController.listmasyarakat[index].username}\nPassword : ${masyarakatController.listmasyarakat[index].password}\nNo Telp : ${masyarakatController.listmasyarakat[index].telp}'),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
