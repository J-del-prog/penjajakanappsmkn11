import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/services/nael_bulan_service.dart';

import '../services/nael_april_service.dart';
import 'nafis_profile.dart';

class NaelAprilScreen extends StatefulWidget {
  const NaelAprilScreen({super.key});

  @override
  State<NaelAprilScreen> createState() => _NaelAprilScreenState();
}

class _NaelAprilScreenState extends State<NaelAprilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar dibuat oleh nael
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Guru Matematika",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Pak wilis",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NafisProfile()),
            ),
            icon: Image.asset("assets/image/img_1.png"),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: april.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlueAccent,
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: ListTile(
              leading: Image.asset(murid4[index].image4, width: 40, height: 40,),
              title: Text(murid4[index].nama4, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
              subtitle: Text(murid4[index].kelengkapan4, style: TextStyle(fontSize: 10),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Lengkap:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),),
                  Icon(murid4[index].mark4 ? Icons.check : Icons.cancel,
                      color: murid4[index].mark4 ? Colors.green : Colors.red),
                ],
              ),
              onTap: () {
                setState(() {
                  murid4[index].mark4 = !murid4[index].mark4;
                });
              },
            ),

          );
        },),
    );
  }
}
