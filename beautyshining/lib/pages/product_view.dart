import 'package:beautyshining/components/style.dart';
import 'package:beautyshining/pages/elektronik_view.dart';
import 'package:beautyshining/pages/men_view.dart';
import 'package:beautyshining/pages/perhiasan_view.dart';
import 'package:beautyshining/pages/women_view.dart';
import 'package:beautyshining/providers/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductView extends StatelessWidget {
  // final ProductViewModel productViewModel = ProductViewModel();
  
  const ProductView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget> [
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => MenView()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/bajupria.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Men's Clothing", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => WomenView()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/bajuwanita.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Women's Clothing", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ElektronikView()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/electronic.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Electronics", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => PerhiasanView()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/perhiasan.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Jewelery", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}