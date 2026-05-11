import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/pages/napis_detail_not.dart';
import 'package:penjajakanappsmkn11/services/napis_notif_service.dart';

class NapisNotif extends StatefulWidget {
  const NapisNotif({super.key});

  @override
  State<NapisNotif> createState() => _NapisNotifState();
}

class _NapisNotifState extends State<NapisNotif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: ListView.builder(
        itemCount: notif.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlueAccent,
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Title(
                    color: Colors.white,
                    child: Text(
                      notif[index].sender,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.indigo),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NapisDetailNot(id: notif[index].id),
                      ),
                    ),
                    child: Text("Cek", style: TextStyle(color: Colors.white)),
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
