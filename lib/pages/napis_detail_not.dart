import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/services/napis_notif_service.dart';

class NapisDetailNot extends StatefulWidget {
  final int id;
  const NapisDetailNot({super.key, required this.id});

  @override
  State<NapisDetailNot> createState() => _NapisDetailNotState();
}

class _NapisDetailNotState extends State<NapisDetailNot> {
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "From:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(notif[widget.id].sender),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Pesan",style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(notif[widget.id].pesan),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}