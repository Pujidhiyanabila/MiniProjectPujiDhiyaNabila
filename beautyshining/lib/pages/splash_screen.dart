import 'dart:async';

import 'package:beautyshining/components/style.dart';
import 'package:beautyshining/pages/auth_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorStyles.secondaryColor,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              width: 140,
              height: 140,
            ),
            // Text(
            //   'Beauty Shining',
            //   // style: GoogleFonts.smooch(
            //   //   fontSize: 34,
            //   //   color: ColorStyles.primaryColor,
            //   // ),
            // ),
          ],
        ),
      ),
    );
  }
}