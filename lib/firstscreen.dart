// import 'package:basic_flutter_kedua/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ppm_karyawan/main.dart';

class HalamanAndroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Text('Halam Apple', style: TextStyle(fontSize: 50.0,),),
      appBar: CustomAppBar(
        height: 60,
        judul: 'Profil',
        warna: Colors.blueAccent,
      ),
      body: Center(
        // child: RaisedButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   child: Text('Go back!'),
        // ),
        child: CardPage(),
      ),
    );
  }
}

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                MyCard(ikon: FontAwesomeIcons.laravel,nama: 'Laravel',warna: Colors.cyan,),
                MyCard(ikon: FontAwesomeIcons.docker,nama: 'Docker',warna: Colors.cyanAccent,),
                MyCard(ikon: FontAwesomeIcons.python,nama: 'Python',warna: Colors.green,),
                MyCard(ikon: FontAwesomeIcons.powerOff,nama: 'Power',warna: Colors.greenAccent,),
                MyCard(ikon: FontAwesomeIcons.code,nama: 'Code',warna: Colors.red,),
                MyCard(ikon: FontAwesomeIcons.php,nama: 'Php',warna: Colors.redAccent,),
                MyCard(ikon: FontAwesomeIcons.github,nama: 'Github',warna: Colors.yellow,)
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                MyCard(ikon: FontAwesomeIcons.code,nama: 'Code',warna: Colors.red,),
                MyCard(ikon: FontAwesomeIcons.php,nama: 'Php',warna: Colors.redAccent,),
                MyCard(ikon: FontAwesomeIcons.github,nama: 'Github',warna: Colors.yellow,),
                MyCard(ikon: FontAwesomeIcons.gitlab,nama: 'Gitlab',warna: Colors.yellowAccent,),
                 MyCard(ikon: FontAwesomeIcons.laravel,nama: 'Laravel',warna: Colors.cyan,),
                MyCard(ikon: FontAwesomeIcons.docker,nama: 'Docker',warna: Colors.cyanAccent,),
                MyCard(ikon: FontAwesomeIcons.python,nama: 'Python',warna: Colors.green,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String nama;
  final IconData ikon;
  final Color warna;

   const MyCard(
    {Key key, 
    @required this.nama,
    @required this.ikon,
    @required this.warna
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        elevation: 10,
        color: warna,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              ikon,
              size: 50,
              color: Colors.indigo,
            ),
            Center(
              child: Text(
                nama,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
