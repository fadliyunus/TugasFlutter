import 'package:flutter/material.dart';
import 'package:ppm_karyawan/halamanslide.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';

void main() => runApp(HalamanSplash());

class HalamanSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Page',
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool loading = true;
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 1)).then((_) => setState(() {
          loading = false;
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
      next: HalamanSlide(),
      name: 'assets/intro.flr',
      startAnimation: '1',
      loopAnimation: '1',
      endAnimation: '1',
      isLoading: loading,
    );
  }
}

//tambahan implement untuk membuat app bar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  //deklarasi variabel yang di jadikan varameter
  final double height;
  final Color warna;
  final String judul;
  //constructor untuk mengirim nilai dari hamepage ke custo
  const CustomAppBar(
    {Key key, 
    @required this.height,
    @required this.warna,
    @required this.judul
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(judul),
      elevation: 20.0,
      centerTitle: true,
      leading: Icon(Icons.access_alarm),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            print('sedang mencari');
          },
        )
      ],
      backgroundColor: warna,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}