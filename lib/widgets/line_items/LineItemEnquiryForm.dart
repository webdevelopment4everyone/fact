// import 'package:bemlchsfinal/widgets/models/EnquiryFormModel.dart';
import 'package:fact/widgets/model/EnquiryFormModel.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

// import '../model/EnquiryFormModel.dart';
import 'ItemEnquiryForm.dart';

class LineItemEnquiryForm extends StatefulWidget {
  final EnquiryFormModel aggregateModel;

  LineItemEnquiryForm(this.aggregateModel);


  @override
  State<LineItemEnquiryForm> createState() => _LineItemEnquiryFormState();
}

class _LineItemEnquiryFormState extends State<LineItemEnquiryForm> {
  
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      elevation: 5.0,
      child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemEnquiryForm(
                  widget.aggregateModel.serialNo,
                  widget.aggregateModel.itemName,
                  widget.aggregateModel.quantity,
                  widget.aggregateModel.purchaseCost,
                  widget.aggregateModel.sellingPrice,
                  widget.aggregateModel.total,
                  widget.aggregateModel.netPrice,
              )
            ],
          )),
    );
  }
}