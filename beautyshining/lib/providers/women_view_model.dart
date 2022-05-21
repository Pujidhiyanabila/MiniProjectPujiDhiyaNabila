import 'package:beautyshining/data/model/women_model.dart';
import 'package:beautyshining/data/services/remote_services.dart';
import 'package:flutter/material.dart';

class WomenViewModel extends ChangeNotifier{
  List<WomenModel> _womenlist = [];
  List<WomenModel> get womenlist => _womenlist;

  Future<void> getAllProduct() async{
    final remoteServices = RemoteServices();
    try{
      final newWomenProduct = await RemoteServices.fetchWomenProduct();
      _womenlist = newWomenProduct ?? [];
  
      print("Hasil View Model Success : $_womenlist");
    } catch (e){
      print("Hasil View Model Success : $e");
    }
    notifyListeners();
  }
}