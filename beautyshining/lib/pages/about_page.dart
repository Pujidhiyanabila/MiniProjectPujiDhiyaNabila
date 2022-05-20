import 'package:beautyshining/components/style.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: Column(
        children: [
          SizedBox(height: 20,),
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
            child: Image.asset(
              'assets/images/logopink.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          tittleSection(),
          textSection(),
        ],
      ),
    );
  }

  Widget tittleSection(){
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: const Text(
                'Belanja Sini', 
                style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget textSection(){
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Center(
        child: Text(
          'Aplikasi ini merupakan aplikasi store berbasis android', 
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
