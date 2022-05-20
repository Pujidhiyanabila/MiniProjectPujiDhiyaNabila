import 'package:beautyshining/data/model/product_model.dart';
import 'package:beautyshining/data/services/remote_services.dart';
import 'package:flutter/material.dart';

class ProductViewModel extends ChangeNotifier{
  List<ProductModel> _list = [];
  List<ProductModel> get list => _list;

  Future<void> getAllProduct() async{
    final remoteServices = RemoteServices();
    try{
      final newProduct = await RemoteServices.fetchProduct();
      _list = newProduct ?? [];
  
      print("Hasil View Model Success : $_list");
    } catch (e){
      print("Hasil View Model Success : $e");
    }
    notifyListeners();
  }
}