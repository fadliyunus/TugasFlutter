// import 'package:Fluttery/screens/ImageScreen.dart';
// import 'package:Fluttery/screens/SpacexScreen.dart';
// import 'package:Fluttery/screens/TopicsScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ppm_karyawan/firstscreen.dart';
import 'package:ppm_karyawan/secoundscreen.dart';
import 'package:ppm_karyawan/threedscreen.dart';

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Offstage(
              offstage: index != 0,
              child: TickerMode(
                enabled: index == 0,
                child: HalamanAndroid(),
              ),
            ),
            Offstage(
              offstage: index != 1,
              child: TickerMode(
                enabled: index == 1,
                child: HalamanApple(),
              ),
            ),
            Offstage(
              offstage: index != 2,
              child: TickerMode(
                enabled: index == 2,
                child: HalamanLn(),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (int index) {
              setState(() {
                this.index = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  // icon: ImageIcon( AssetImage('assets/reddit.png')),
                  icon: Icon(FontAwesomeIcons.user),
                  title: Text("Profil")),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.moneyBill), title: Text("Remunerasi")),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.calendar), title: Text('Absensi'))
            ]));
  }
}
