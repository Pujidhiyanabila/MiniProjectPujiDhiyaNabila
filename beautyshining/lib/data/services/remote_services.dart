import 'package:beautyshining/data/model/product_model.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<ProductModel>?> fetchProduct() async {
    var response = await client.get(Uri.parse(
        'https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}