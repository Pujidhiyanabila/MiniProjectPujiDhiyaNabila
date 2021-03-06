import 'package:beautyshining/components/drawer_page.dart';
import 'package:beautyshining/components/style.dart';
import 'package:beautyshining/pages/detail_page.dart';
import 'package:beautyshining/providers/product_view_model.dart';
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
      body: FutureBuilder<void>(
        future: Provider.of<ProductViewModel>(context, listen: false).getAllProduct(),
        builder: (context, AsyncSnapshot<void> snapshot){
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final list = Provider.of<ProductViewModel>(context).list;

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 330
              ),
              itemBuilder: (ctx, index){
                return InkWell(
                  onTap: () {
                    // Navigator.of(context).push(
                    // MaterialPageRoute(builder: (_) => DetailProductPage()));
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "${list[index].image}",
                            height: 200,
                            width: 200,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${list[index].title}",
                            maxLines: 2,
                            style:
                            TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 8),
                          Text('\$${"${list[index].price}"}',
                              style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: list.length,
              padding: const EdgeInsets.all(10),
            );
          }
        },
      )
    );
  }
}