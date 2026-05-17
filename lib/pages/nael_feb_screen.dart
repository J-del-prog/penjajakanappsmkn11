import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/services/nael_bulan_service.dart';

import 'nafis_profile.dart';

class Naelfebs extends StatefulWidget {
  const Naelfebs({super.key});

  @override
  State<Naelfebs> createState() => _NaelJanState();
}

class _NaelJanState extends State<Naelfebs> {
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
        itemCount: feb.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlueAccent,
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: ListTile(
              leading: Image.asset(murid2[index].image2, width: 40, height: 40,),
              title: Text(murid2[index].nama2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
              subtitle: Text(murid2[index].kelengkapan2, style: TextStyle(fontSize: 10),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Lengkap:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),),
                  Icon(murid2[index].mark2 ? Icons.check : Icons.cancel,
                      color: murid2[index].mark2 ? Colors.green : Colors.red),
                ],
              ),
              onTap: () {
                setState(() {
                  murid2[index].mark2 = !murid2[index].mark2;
                });
              },
            ),

          );
        },),
    );
  }
}
