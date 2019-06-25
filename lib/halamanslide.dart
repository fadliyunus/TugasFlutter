import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:ppm_karyawan/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HalamanSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Slide',
      home: Awal(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  Future cekHalaman() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool masukHalaman = (pref.getBool('masuk') ?? false);
    if (masukHalaman) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => UISlide()));
    } else {
      pref.setBool('masuk', true);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(milliseconds: 200), () {
      cekHalaman();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Loding....')),
    );
  }
}

class UISlide extends StatefulWidget {
  @override
  _UISlideState createState() => _UISlideState();
}

class _UISlideState extends State<UISlide> {
  List<Slide> slide = List();

  @override
  void initState() {
    // TODO: implement initState
    slide.add(Slide(
      title: 'Karyawan Online',
      maxLineTitle: 2,
      styleTitle: TextStyle(
          color: Colors.blue,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono'),
      backgroundColor: Colors.white,
      description: 'Data Cuti, Data Slip Gaji, Cek di Karyawan Online',
      styleDescription: TextStyle(
          color: Colors.blue,
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway'),
      marginDescription:
          EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
      centerWidget: Text("Replace this with a custom widget",
          style: TextStyle(color: Colors.white)),
      colorBegin: Color(0xffFFDAB9),
      colorEnd: Color(0xff40E0D0),
      pathImage: 'gambar/olo.jpeg',
      widthImage: 300.0,
      heightImage: 350.0,
      directionColorBegin: Alignment.topLeft,
      directionColorEnd: Alignment.bottomRight,
      onCenterItemPress: () {},
    ));
    slide.add(Slide(
      title: 'Sebelum Memulai...',
      maxLineTitle: 2,
      styleTitle: TextStyle(
          color: Colors.blue,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono'),
      backgroundColor: Colors.white,
      description: 'Pastikan anda telah memiliki Login Odoo',
      styleDescription: TextStyle(
          color: Colors.blue,
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway'),
      marginDescription:
          EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
      centerWidget: Text("Replace this with a custom widget",
          style: TextStyle(color: Colors.white)),
      colorBegin: Color(0xffFFDAB9),
      colorEnd: Color(0xff40E0D0),
      pathImage: 'gambar/olm.jpeg',
      widthImage: 300.0,
      heightImage: 350.0,
      directionColorBegin: Alignment.topLeft,
      directionColorEnd: Alignment.bottomRight,
      onCenterItemPress: () {},
    ));
    slide.add(Slide(
      title: 'Insan Global di Era Digital',
      maxLineTitle: 2,
      styleTitle: TextStyle(
          color: Colors.blue,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono'),
      backgroundColor: Colors.white,
      description: 'Jika anda belum memiliki login Odoo, segera hubungi Admin',
      styleDescription: TextStyle(
          color: Colors.blue,
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway'),
      marginDescription:
          EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
      centerWidget: Text("Replace this with a custom widget",
          style: TextStyle(color: Colors.white)),
      colorBegin: Color(0xffFFDAB9),
      colorEnd: Color(0xff40E0D0),
      pathImage: 'gambar/org.jpeg',
      widthImage: 300.0,
      heightImage: 350.0,
      directionColorBegin: Alignment.topLeft,
      directionColorEnd: Alignment.bottomRight,
      onCenterItemPress: () {},
    ));
    super.initState();
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Colors.blue,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Colors.blue,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Colors.blue,
    );
  }

  void onDonePress() {
    // Do what you want
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => App()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slide,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0x33000000),
      highlightColorSkipBtn: Color(0xff000000),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: Color(0xff000000),

      // Dot indicator
      colorDot: Colors.blue,
      colorActiveDot: Colors.blue,
      sizeDot: 13.0,

      // Show or hide status bar
      shouldHideStatusBar: true,
      backgroundColorAllSlides: Colors.grey,
      // onDonePress: this.pindahHalaman,
    );
  }
}
