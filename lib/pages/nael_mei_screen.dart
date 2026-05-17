import 'package:flutter/material.dart';

import '../services/nael_bulan_service.dart';
import 'nafis_profile.dart';

class NaelMeiScreen extends StatefulWidget {
  const NaelMeiScreen({super.key});

  @override
  State<NaelMeiScreen> createState() => _NaelMeiScreenState();
}

class _NaelMeiScreenState extends State<NaelMeiScreen> {
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
        itemCount: mei.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlueAccent,
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: ListTile(
              leading: Image.asset(murid[index].image, width: 40, height: 40,),
              title: Text(murid5[index].nama5, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
              subtitle: Text(murid5[index].kelengkapan5, style: TextStyle(fontSize: 10),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Lengkap:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),),
                  Icon(murid5[index].mark5 ? Icons.check : Icons.cancel,
                      color: murid5[index].mark5 ? Colors.green : Colors.red),
                ],
              ),
              onTap: () {
                setState(() {
                  murid5[index].mark5 = !murid5[index].mark5;
                });
              },
            ),

          );
        },),
    );
  }
}
