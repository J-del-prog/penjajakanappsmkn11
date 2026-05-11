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
          SizedBox(height: 50);
          return Card(
            color: Colors.lightBlueAccent,
            elevation: 10,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Title(
                    color: Colors.black,
                    child: Text(pilihish[index].bulan, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.indigo)),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pilihish[index].screen,
                      ),
                    ),
                    child: Text("Cek", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
