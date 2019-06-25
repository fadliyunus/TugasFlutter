import 'package:flutter/material.dart';
import 'package:ppm_karyawan/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final String background = 'gambar/0.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(background), fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.black.withOpacity(0.7),
            ),
            Container(
              child: FormLatihan(),
            )
          ],
        ),
      ),
    );
  }
}

class FormLatihan extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormLatihan> {
  final _formkey = GlobalKey<FormState>();
  bool _validasi = false;
  String nama;
  String nohp;
  String email;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          autovalidate: _validasi,
          child: FormUI(),
        ),
      ),
    );
  }

  Widget FormUI() {
    return Container(
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                  ),
                  Text(
                    "PPM Manajemen",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Insan Global di Era Digital",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.lightBlue),
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: validateEmail,
                    onSaved: (String val) {
                      email = val;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.lightBlue),
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: validateNoHp,
                    onSaved: (String val) {
                      nohp = val;
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        "Sign In".toUpperCase(),
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      color: Colors.lightBlue,
                      onPressed: validateInputan,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('gambar/ppm.png')
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void validateInputan() {
    if (_formkey.currentState.validate()) {
      _formkey.currentState.save();
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp(),
          ));
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Login Success'),
      ));
    } else {
      setState(() {
        _validasi = true;
      });
    }
  }

  String validateNoHp(String value) {
    if (value.length < 6) {
      return 'Password min 6 karakter angka';
    } else {
      return null;
    }
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }
}
