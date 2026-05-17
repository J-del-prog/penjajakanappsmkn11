import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/services/nael_bulan_service.dart';

import '../services/nael_mar_service.dart';
import 'nafis_profile.dart';

class NaelMaretScreen extends StatefulWidget {
  const NaelMaretScreen({super.key});

  @override
  State<NaelMaretScreen> createState() => _NaelMaretScreenState();
}

class _NaelMaretScreenState extends State<NaelMaretScreen> {
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
        itemCount: mar.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlueAccent,
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: ListTile(
              leading: Image.asset(murid3[index].image3, width: 40, height: 40,),
              title: Text(murid3[index].nama3, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
              subtitle: Text(murid3[index].kelengkapan3, style: TextStyle(fontSize: 10),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Lengkap:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),),
                  Icon(murid3[index].mark3 ? Icons.check : Icons.cancel,
                      color: murid3[index].mark3 ? Colors.green : Colors.red),
                ],
              ),
              onTap: () {
                setState(() {
                  murid3[index].mark3 = !murid3[index].mark3;
                });
              },
            ),
          );
        },),
    );
  }
}
