import 'package:flutter/material.dart';

class NafisProfile extends StatefulWidget {
  const NafisProfile({super.key});

  @override
  State<NafisProfile> createState() => _NafisProfileState();
}

class _NafisProfileState extends State<NafisProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/image/img_1.png"),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wilis Sindhu",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Guru Matematika",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),

        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
