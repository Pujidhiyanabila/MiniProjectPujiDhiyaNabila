import 'package:beautyshining/data/model/elektronik_model.dart';
import 'package:beautyshining/data/model/perhiasan_model.dart';
import 'package:beautyshining/data/services/remote_services.dart';
import 'package:flutter/material.dart';

class PerhiasanViewModel extends ChangeNotifier{
  List<PerhiasanModel> _perhiasanlist = [];
  List<PerhiasanModel> get perhiasanlist => _perhiasanlist;

  Future<void> getAllProduct() async{
    final remoteServices = RemoteServices();
    try{
      final newPerhiasanProduct = await RemoteServices.fetchPerhiasanProduct();
      _perhiasanlist = newPerhiasanProduct ?? [];
  
      print("Hasil View Model Success : $_perhiasanlist");
    } catch (e){
      print("Hasil View Model Success : $e");
    }
    notifyListeners();
  }
}