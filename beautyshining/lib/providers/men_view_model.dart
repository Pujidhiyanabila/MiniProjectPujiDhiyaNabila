import 'package:beautyshining/data/model/men_model.dart';
import 'package:beautyshining/data/services/remote_services.dart';
import 'package:flutter/material.dart';

class MenViewModel extends ChangeNotifier{
  List<MenModel> _menlist = [];
  List<MenModel> get menlist => _menlist;

  Future<void> getAllProduct() async{
    final remoteServices = RemoteServices();
    try{
      final newMenProduct = await RemoteServices.fetchMenProduct();
      _menlist = newMenProduct ?? [];
  
      print("Hasil View Model Success : $_menlist");
    } catch (e){
      print("Hasil View Model Success : $e");
    }
    notifyListeners();
  }
}