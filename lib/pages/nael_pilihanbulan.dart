import 'package:flutter/material.dart';

class NaelPilihanbulan extends StatefulWidget {
  const NaelPilihanbulan({super.key});

  @override
  State<NaelPilihanbulan> createState() => _NaelPilihanbulanState();
}

class _NaelPilihanbulanState extends State<NaelPilihanbulan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guru Matematika", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
      )
    );
  }
}
