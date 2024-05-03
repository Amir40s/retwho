import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValueProvider extends ChangeNotifier{
  bool _isChecked = false;
  bool _isloading = false;
  bool _isDepartment = false;
  bool _isProduct = false;

  String _accountType = "Consumer";

  bool get isChecked => _isChecked;
  bool get isLoading => _isloading;
  String get accountType => _accountType;
  bool get isDepartment => _isDepartment;
  bool get isProduct => _isProduct;


  void setChecked(bool value){
    _isChecked = value;
    notifyListeners();
  }

  void setLoading(bool value){
    _isloading = value;
    notifyListeners();
  }

  void setAccountType(String value){
    _accountType = value;
    notifyListeners();
  }

  void setDepartment(bool value){
    _isDepartment = value;
    notifyListeners();
  }

  void setProduct(bool value){
    _isProduct = value;
    notifyListeners();
  }
}