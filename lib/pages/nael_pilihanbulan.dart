import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/pages/nafis_profile.dart';

class NaelPilihanbulan extends StatefulWidget {
  const NaelPilihanbulan({super.key});

  @override
  State<NaelPilihanbulan> createState() => _NaelPilihanbulanState();
}

class _NaelPilihanbulanState extends State<NaelPilihanbulan> {
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
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text("Pilihan Bulan Penjejakan:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),)
        ],

      ),
    );
  }
}
