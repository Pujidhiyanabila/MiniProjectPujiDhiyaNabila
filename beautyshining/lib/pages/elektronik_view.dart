import 'package:beautyshining/components/style.dart';
import 'package:beautyshining/providers/elektronik_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ElektronikView extends StatelessWidget {
  const ElektronikView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Electronics"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: FutureBuilder<void>(
        future: Provider.of<ElektronikViewModel>(context, listen: false).getAllProduct(),
        builder: (context, AsyncSnapshot<void> snapshot){
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final list = Provider.of<ElektronikViewModel>(context).elektroniklist;

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 330
              ),
              itemBuilder: (ctx, index){
                return InkWell(
                  onTap: () {},
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