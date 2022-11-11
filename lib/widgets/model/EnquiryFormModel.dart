import 'package:flutter/material.dart';

class EnquiryFormModel {
  String serialNo;
  String itemName;
  String quantity;
  String purchaseCost;
  String sellingPrice;
  String total;
  String netPrice;

  EnquiryFormModel (
    this.serialNo,
    this.itemName,
    this.quantity,
    this.purchaseCost,
    this.sellingPrice,
    this.total,
    this.netPrice
  );
}

class EnquiryFormModelProvider with ChangeNotifier {
  List<EnquiryFormModel> get itemsList {
    return _enquiryformDoList;
  }

  final List<EnquiryFormModel> _enquiryformDoList = [];

  void createPeriodicPartsTask(EnquiryFormModel lineitems) {
    final newTask = EnquiryFormModel(
      lineitems.serialNo,
      lineitems.itemName, 
      lineitems.quantity, 
      lineitems.purchaseCost, 
      lineitems.sellingPrice, 
      lineitems.total,
      lineitems.netPrice,
    );
    _enquiryformDoList.add(newTask);
    notifyListeners();
  }

}