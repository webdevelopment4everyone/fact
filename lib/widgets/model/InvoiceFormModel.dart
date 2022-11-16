import 'package:flutter/material.dart';

class InvoiceFormModel {
  String serialNo;
  String itemName;
  String quantity;
  String sellingPrice;
  String total;
  String netPrice;

  InvoiceFormModel (
    this.serialNo,
    this.itemName,
    this.quantity,
    this.sellingPrice,
    this.total,
    this.netPrice
  );
}

class InvoiceFormModelProvider with ChangeNotifier {
  List<InvoiceFormModel> get itemsList {
    return _enquiryformDoList;
  }

  final List<InvoiceFormModel> _enquiryformDoList = [];

  void createPeriodicPartsTask(InvoiceFormModel lineitems) {
    final newTask = InvoiceFormModel(
      lineitems.serialNo,
      lineitems.itemName, 
      lineitems.quantity, 
      lineitems.sellingPrice, 
      lineitems.total,
      lineitems.netPrice,
    );
    _enquiryformDoList.add(newTask);
    notifyListeners();
  }

}