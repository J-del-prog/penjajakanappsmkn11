import 'package:flutter/material.dart';
import 'package:penjajakanappsmkn11/model/napis_model.dart';
import 'package:penjajakanappsmkn11/model/napiz_model_dash.dart';
import 'package:penjajakanappsmkn11/pages/nael_pilihanbulan.dart';
import 'package:penjajakanappsmkn11/pages/nafis_profile.dart';
import 'package:penjajakanappsmkn11/pages/napis_notif.dart';

class NapisDashboard extends StatefulWidget {
  const NapisDashboard({super.key});

  @override
  State<NapisDashboard> createState() => _NapisDashboardState();
}

class _NapisDashboardState extends State<NapisDashboard> {
  int selectIndex = 0;
  Map<int, NapizModelDash> mod = {
    0: NapizModelDash(
      page: NaelPilihanbulan(),
      label: "Home",
      icon: Icons.home,
      color: Colors.black,
    ),
    1: NapizModelDash(
      page: NapisNotif(),
      label: "Notification",
      icon: Icons.notifications,
      color: Colors.black,
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: selectIndex,
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        items: mod.entries
            .map(
              (n) => BottomNavigationBarItem(
                icon: Icon(n.value.icon, color: Colors.black),
                backgroundColor: Colors.blueAccent,
                label: n.value.label,
                activeIcon: Icon(n.value.icon, color: n.value.color),
              ),
            )
            .toList(),
      ),
      body: mod[selectIndex]!.page,
    );
  }
}