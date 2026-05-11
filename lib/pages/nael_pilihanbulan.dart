import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/pages/nafis_profile.dart';
import 'package:penjajakanappsmkn11/services/nael_pilhbulan_service.dart';

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
      body: ListView.builder(
        itemCount: pilihish.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Title(color: Colors.black, child: Text(pilihish[index].bulan)),
                  ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => pilihish[index].screen)), child: Text("Cek"))
                ],

              ),
            )
          );
        },
      ),
    );
  }
}
