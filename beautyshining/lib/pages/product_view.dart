import 'package:beautyshining/components/style.dart';
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
        title: Text("Beauty Shining"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
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
              ), 
              itemBuilder: (ctx, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 180,
                                  width: double.infinity,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Image.network(
                                    "${list[index].image}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
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