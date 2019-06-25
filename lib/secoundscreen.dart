// import 'package:basic_flutter_kedua/main.dart';
import 'package:flutter/material.dart';
import 'package:ppm_karyawan/main.dart';

class HalamanApple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Text('Halam Apple', style: TextStyle(fontSize: 50.0,),),
      // appBar: AppBar(
      //   title: Text("Firs Route"),
      // ),
      appBar: CustomAppBar(
          height: 60,
          judul: 'Remunerasi ',
          warna: Colors.blueAccent,
        ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}