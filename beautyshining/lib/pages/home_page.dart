import 'package:beautyshining/components/drawer_page.dart';
import 'package:beautyshining/components/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belanja Sini"),
        backgroundColor: ColorStyles.secondaryColor,
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     onPressed: (){
        //       // showModalBottomSheet(
        //       //   shape: const RoundedRectangleBorder(
        //       //     borderRadius: BorderRadius.vertical(
        //       //       top: Radius.circular(20),
        //       //     ),
        //       //   ),
        //       //   context: context, 
        //       //   builder: (context) => const ProfilePage(),
        //       // );
        //     },
        //     icon: Icon(Icons.search),
        //   ),
        // ],
      ),
      backgroundColor: ColorStyles.primaryColor,
      drawer: DrawerPage(),
    );
  }
}