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
      body: ListView(
        children: [
          Card(
            color: Colors.lightBlueAccent,
            child: ListTile(
              leading: Image.asset("assets/image/img_1.png", height: 100, width: 100,),
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wilis Sindhu",
                    style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "GURU MATEMATIKA",
                    style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          
          SizedBox(height: 10),
          Card(
            color: Colors.lightBlueAccent,
            child: ListTile(
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PENDIDIKAN:",
                    style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "SD:SDN BAKALAN KRAJAN 1",
                    style: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "SMP:SMP NEGERI 17 MALANG",
                    style: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "SMA:SMAN 5 MALANG",
                    style: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "KULIAH: Institut Teknologi Bandung",
                    style: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            color: Colors.lightBlueAccent,
            child: ListTile(
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pengalaman Mengajar:",
                    style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "SMKN 11 MALANG = 2022 - NOW",
                    style: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "SMAN 1 MALANG = 2018 - 2022",
                    style: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            color: Colors.lightBlueAccent,
            child: ListTile(
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CONTACT:",
                    style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "EMAIL: nendima7@gmail.com",
                    style: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "NOMOR: 0895412033393",
                    style: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
