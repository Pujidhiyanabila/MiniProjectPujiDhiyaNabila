import 'package:beautyshining/components/style.dart';
import 'package:beautyshining/data/model/product_model.dart';
import 'package:beautyshining/providers/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailProductPage extends StatelessWidget {

  final ProductModel _productModel;

  const DetailProductPage(this._productModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Product"),
        backgroundColor: ColorStyles.secondaryColor,
        centerTitle: true,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: _productModel.image, 
              child: Image.network(_productModel.image),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                  Text(
                    _productModel.title,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class DetailPage extends StatefulWidget {

//   const DetailPage({ Key? key }) : super(key: key);

//   @override
//   _DetailPageState createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Detail Product"),
//         backgroundColor: ColorStyles.secondaryColor,
//         centerTitle: true,
//       ),
//       backgroundColor: ColorStyles.primaryColor,
//       body: FutureBuilder<void>(
//         future: Provider.of<ProductViewModel>(context, listen: false).getAllProduct(),
//         builder: (context, AsyncSnapshot<void> snapshot){
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             final list = Provider.of<ProductViewModel>(context).list;

//             return SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Hero(
//                     tag: list.length, 
//                     child: child
//                   ),
//                 ],
//               ),
//             );
//           }
//         },
//       )
//     );
//   }
// }