// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pengaduan_masyarakat_flutter/controllers/MasyarakatController.dart';

// class CreateMasyarakat extends StatelessWidget {
//   const CreateMasyarakat({super.key});

//   @override
//   Widget build(BuildContext context) {
//     MasyarakatController masyarakatController = Get.put(MasyarakatController());
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Create Masyarakat'),
//       ),
//       body: Container(
//         margin: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             SizedBox(
//               width: 20,
//               height: 20,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'NIK',
//               ),
//             ),
//             SizedBox(
//               width: 20,
//               height: 20,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Nama',
//               ),
//             ),
//             SizedBox(
//               width: 20,
//               height: 20,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Username',
//               ),
//             ),
//             SizedBox(
//               width: 20,
//               height: 20,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Password',
//               ),
//             ),
//             SizedBox(
//               width: 20,
//               height: 20,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'No Telepon',
//               ),
//             ),
//             SizedBox(
//               width: 20,
//               height: 20,
//             ),
//             TextButton(
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     foregroundColor: Colors.black,
//                     padding: const EdgeInsets.all(16.0),
//                     textStyle: const TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {
//                     Get.toNamed('/read');
//                   },
//                   child: Text('Submit', )),
//                   TextField(
//               controller: masyarakatController.namaMatpel,
//               decoration: InputDecoration(labelText: 'Input Kode Mapel'),
//             ),
//             TextField(
//               controller: masyarakatController.jnsMatpel,
//               decoration: InputDecoration(labelText: 'Input Jenis Mapel'),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   masyarakatController.addMatpel(masyarakatController.namaMatpel.text, masyarakatController.jnsMatpel.text);
//                 },
//                 child: Text('Submit')),
//             SizedBox(
//               height: 10,
//             ),
//             Expanded(
//                 child: Obx(
//               () => ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: masyarakatController.ListMatpel.length,
//                 itemBuilder: (context, index) {
//                   String key = masyarakatController.ListMatpel.keys.elementAt(index);
//                   return Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text('${key}'),
//                         Text('${masyarakatController.ListMatpel[key]}'),
//                       ]);
//                 },
//               ),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:pengaduan_masyarakat_flutter/controllers/MasyarakatController.dart';
import 'package:get/get.dart';

class CreateMasyarakat extends StatelessWidget {
  const CreateMasyarakat({super.key});

  @override
  Widget build(BuildContext context) {
    MasyarakatController masyarakatController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Input mapel'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: masyarakatController.namaMatpel,
              decoration: InputDecoration(labelText: 'Input Kode Mapel'),
            ),
            TextField(
              controller: masyarakatController.jnsMatpel,
              decoration: InputDecoration(labelText: 'Input Jenis Mapel'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  masyarakatController.addMatpel(masyarakatController.namaMatpel.text, masyarakatController.jnsMatpel.text);
                },
                child: Text('Submit')),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: masyarakatController.ListMatpel.length,
                itemBuilder: (context, index) {
                  String key = masyarakatController.ListMatpel.keys.elementAt(index);
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${key}'),
                        Text('${masyarakatController.ListMatpel[key]}'),
                      ]);
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}

