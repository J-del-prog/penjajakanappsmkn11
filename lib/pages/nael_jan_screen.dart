import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/services/nael_feb_service.dart';

import '../services/nael_jan_service.dart';
import 'nafis_profile.dart';

class NaelJanScreen extends StatefulWidget {
  const NaelJanScreen({super.key});

  @override
  State<NaelJanScreen> createState() => _NaelJanState();
}

class _NaelJanState extends State<NaelJanScreen> {
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
        itemCount: pilih.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: ListTile(
              title: Text(pilih[index].nama),
              subtitle: Text(
                pilih[index].kelengkapan,
                style: TextStyle(fontSize: 10),
              ),
              trailing: Icon(
                pil[index].mark ? Icons.check : Icons.cancel,
                color: pil[index].mark ? Colors.green : Colors.red,
              ),
              onTap: () {
                setState(() {
                  pil[index].mark = !pil[index].mark;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
