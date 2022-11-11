import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ItemEnquiryForm extends StatelessWidget {
  String serialNo;
  String itemName;
  String quantity;
  String purchaseCost;
  String sellingPrice;
  String total;
  String netPrice;

  ItemEnquiryForm(
    this.serialNo,
    this.itemName,
    this.quantity,
    this.purchaseCost,
    this.sellingPrice,
    this.total,
    this.netPrice
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        aggregatedetails("Sl No", serialNo),
        aggregatedetails("Item Name", itemName),
        aggregatedetails("Quantity", quantity),
        aggregatedetails("Purchase Cost", purchaseCost),
        aggregatedetails("Selling Price", sellingPrice),
        aggregatedetails("Total", total),
        aggregatedetails("Net Price", netPrice),
      ],
    );
  }

  Widget aggregatedetails(String lable, String value) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: AutoSizeText(
            lable,
            maxLines: 1,
            minFontSize: 14.0,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.left,
          ),
        ),
        Expanded(
          flex: 3,
          child: AutoSizeText(
            ": $value",
            maxLines: 1,
            minFontSize: 14.0,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 20.0)
      ],
    );
  }
}