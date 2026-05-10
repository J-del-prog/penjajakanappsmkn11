
import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/pages/napis_detail_not.dart';
import 'package:penjajakanappsmkn11/services/napis_notif_service.dart';

class NapisNotif extends StatefulWidget {
  const NapisNotif({super.key});

  @override
  State<NapisNotif> createState() => _NapisNotifState();
}

class _NapisNotifState extends State<NapisNotif> {
  bool isDipilih = false;
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
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: SwitchListTile(
              title: Text(notif[index].sender),
              subtitle: Text(
                notif[index].judul,
                style: TextStyle(fontSize: 10),
              ),
              selected: notif[index].isRead,
              value: notif[index].isRead,
              onChanged: (value) {
                setState(() {
                  notif[index].isRead = true;
                });
                notif.sort(
                  (a, b) => a.isRead.toString().compareTo(b.isRead.toString()),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NapisDetailNot(),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}