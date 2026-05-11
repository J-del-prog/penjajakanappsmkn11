import 'package:penjajakanappsmkn11/model/nael_pilbulan.dart';
import 'package:penjajakanappsmkn11/pages/nael_april_screen.dart';
import 'package:penjajakanappsmkn11/pages/nael_feb_screen.dart';
import 'package:penjajakanappsmkn11/pages/nael_jan_screen.dart';
import 'package:penjajakanappsmkn11/pages/nael_maret_screen.dart';
import 'package:penjajakanappsmkn11/pages/nael_mei_screen.dart';

List<NaelPilbulanilbulan> pilihish = [
  NaelPilbulanilbulan(bulan: "Januari:", id: 1, screen: NaelJanScreen()),
  NaelPilbulanilbulan(bulan: "Febuari:", id: 2, screen: Naelfebs()),
  NaelPilbulanilbulan(bulan: "Maret:", id: 3, screen: NaelMaretScreen()),
  NaelPilbulanilbulan(bulan: "April:", id: 4, screen: NaelAprilScreen()),
  NaelPilbulanilbulan(bulan: "Mei:", id: 5, screen: NaelMeiScreen()),
];