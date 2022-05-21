import 'package:beautyshining/data/model/elektronik_model.dart';
import 'package:beautyshining/data/model/men_model.dart';
import 'package:beautyshining/data/model/perhiasan_model.dart';
import 'package:beautyshining/data/model/product_model.dart';
import 'package:beautyshining/data/model/women_model.dart';
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

  static Future<List<MenModel>?> fetchMenProduct() async {
    var response = await client.get(Uri.parse(
        "https://fakestoreapi.com/products/category/men's%20clothing"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return menModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<WomenModel>?> fetchWomenProduct() async {
    var response = await client.get(Uri.parse(
        "https://fakestoreapi.com/products/category/women's%20clothing"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return womenModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<ElectronicsModel>?> fetchElektronikProduct() async {
    var response = await client.get(Uri.parse(
        "https://fakestoreapi.com/products/category/electronics"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return electronicsModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<PerhiasanModel>?> fetchPerhiasanProduct() async {
    var response = await client.get(Uri.parse(
        "https://fakestoreapi.com/products/category/jewelery"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return perhiasanModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}