import 'package:beautyshining/data/model/elektronik_model.dart';
import 'package:beautyshining/data/services/remote_services.dart';
import 'package:flutter/material.dart';

class ElektronikViewModel extends ChangeNotifier{
  List<ElectronicsModel> _elektroniklist = [];
  List<ElectronicsModel> get elektroniklist => _elektroniklist;

  Future<void> getAllProduct() async{
    final remoteServices = RemoteServices();
    try{
      final newElektronikProduct = await RemoteServices.fetchElektronikProduct();
      _elektroniklist = newElektronikProduct ?? [];
  
      print("Hasil View Model Success : $_elektroniklist");
    } catch (e){
      print("Hasil View Model Success : $e");
    }
    notifyListeners();
  }
}