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
    );
  }
}