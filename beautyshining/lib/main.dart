import 'package:beautyshining/components/style.dart';
import 'package:beautyshining/pages/splash_screen.dart';
import 'package:beautyshining/providers/elektronik_view_model.dart';
import 'package:beautyshining/providers/men_view_model.dart';
import 'package:beautyshining/providers/perhiasan_view_model.dart';
import 'package:beautyshining/providers/product_view_model.dart';
import 'package:beautyshining/providers/women_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:provider/provider.dart';
import './providers/auth.dart';
import './pages/auth_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auths(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => MenViewModel()
        ),
        ChangeNotifierProvider(
          create: (_) => WomenViewModel()
        ),
        ChangeNotifierProvider(
          create: (_) => ElektronikViewModel()
        ),
        ChangeNotifierProvider(
          create: (_) => PerhiasanViewModel()
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}