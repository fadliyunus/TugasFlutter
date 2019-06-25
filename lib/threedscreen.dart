// import 'package:basic_flutter_kedua/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ppm_karyawan/main.dart';

class HalamanLn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Text('Halam Apple', style: TextStyle(fontSize: 50.0,),),
      appBar: CustomAppBar(
        height: 60,
        judul: 'Absensi',
        warna: Colors.blueAccent,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
              onTap: () {},
              title: Text('Code'),
              trailing: Icon(FontAwesomeIcons.code)),
          ListTile(
              onTap: () {},
              title: Text('Php'),
              trailing: Icon(FontAwesomeIcons.php)),
          ListTile(
              onTap: () {},
              title: Text('Laravel'),
              trailing: Icon(FontAwesomeIcons.laravel)),
          ListTile(
              onTap: () {},
              title: Text('Vuejs'),
              trailing: Icon(FontAwesomeIcons.vuejs)),
           ListTile(
              onTap: () {},
              title: Text('Code'),
              trailing: Icon(FontAwesomeIcons.code)),
          ListTile(
              onTap: () {},
              title: Text('Php'),
              trailing: Icon(FontAwesomeIcons.php)),
          ListTile(
              onTap: () {},
              title: Text('Laravel'),
              trailing: Icon(FontAwesomeIcons.laravel)),
          ListTile(
              onTap: () {},
              title: Text('Vuejs'),
              trailing: Icon(FontAwesomeIcons.vuejs)),
           ListTile(
              onTap: () {},
              title: Text('Code'),
              trailing: Icon(FontAwesomeIcons.code)),
          ListTile(
              onTap: () {},
              title: Text('Php'),
              trailing: Icon(FontAwesomeIcons.php)),
          ListTile(
              onTap: () {},
              title: Text('Laravel'),
              trailing: Icon(FontAwesomeIcons.laravel)),
          ListTile(
              onTap: () {},
              title: Text('Vuejs'),
              trailing: Icon(FontAwesomeIcons.vuejs)),
           ListTile(
              onTap: () {},
              title: Text('Code'),
              trailing: Icon(FontAwesomeIcons.code)),
          ListTile(
              onTap: () {},
              title: Text('Php'),
              trailing: Icon(FontAwesomeIcons.php)),
          ListTile(
              onTap: () {},
              title: Text('Laravel'),
              trailing: Icon(FontAwesomeIcons.laravel)),
          ListTile(
              onTap: () {},
              title: Text('Vuejs'),
              trailing: Icon(FontAwesomeIcons.vuejs)),
        ],
      ),
    );
  }
}
