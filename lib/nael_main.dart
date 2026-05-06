import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/pages/nael_pilihanbulan.dart';

void main(){
  runApp(PenjajakanApps());
}

class PenjajakanApps extends StatefulWidget {
  const PenjajakanApps({super.key});

  @override
  State<PenjajakanApps> createState() => _PenjajakanAppsState();
}

class _PenjajakanAppsState extends State<PenjajakanApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: NaelPilihanbulan(),);
  }
}
