// import 'package:bemlchsfinal/networks/DioServiceClient.dart';
import 'package:fact/networks/DioServiceClient.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';
// import 'package:bemlchsfinal/model/service_report_list/EnquiryDetailsModel.dart' as mdetail;
import 'package:fact/keyvaluesmodel/InvoiceDetailsModel.dart' as mdetails;


class InvoiceDetails extends StatefulWidget {
  const InvoiceDetails({super.key});

  @override
  State<InvoiceDetails> createState() => _InvoiceDetailsState();
}

class _InvoiceDetailsState extends State<InvoiceDetails> {
  static const values3 = <String>['Add', 'Deduct'];

  String selectedValue3 = '';

  DioServiceClient dio = DioServiceClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Detail View"),
        ),
        body: SafeArea(
          left: true,
          top: true,
          right: true,
          bottom: true,
          //NETWORK CALLL AS FUTURE
          child: Center(
              child: SingleChildScrollView(
            child: Center(
              child: _DetailView(),
            ),
          )),
        ));
  }

  Widget EnquiryFormDetailViewPage(mdetails.Record record) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        lineview("Invoice Details"),
        FormUI("Subject", record?.subject ?? ""),
        FormUI("Customer No", record?.customerno?? ""),
        FormUI("Contact Name", record?.contact_id ?? ""),
        FormUI("Due Date", record?.duedate ?? ""),
        FormUI("Excise Duty", record.exciseduty ?? ""),
        FormUI("Organization Name", record?.account_id ?? ""),
        FormUI("Assigned To", record?.assigned_user_id ?? ""),
        FormUI("Modified Time", record?.modifiedtime ?? ""),
        FormUI("Source", record?.source ?? ""),
        FormUI("Sales Order", record?.salesorder_id ?? ""),
        FormUI("Invoice No", record?.invoice_no ?? ""),
        FormUI("Invoice Date", record?.invoicedate ?? ""),
        FormUI("Purchase Order", record?.vtiger_purchaseorder ?? ""),
        FormUI("Sales Commission", record?.salescommission ?? ""),
        FormUI("Status", record?.invoicestatus ?? ""),
        FormUI("Created Time", record?.createdtime ?? ""),
        FormUI("Opportunity Name", record?.potential_id ?? ""),
        FormUI("Bank Guarantee", record?.cf_949 ?? ""),

        // Address Details
        lineview("Address Details"),
        FormUI("Address", record?.bill_street ?? ""),
        FormUI("Shipping Address", record?.ship_street ?? ""),
        FormUI("PO Box", record?.bill_pobox ?? ""),
        FormUI("Shipping PO Box", record ?. ship_pobox ?? ""),
        FormUI("City", record?.bill_city ?? ""),
        FormUI("Shipping Suburb", record?.ship_city ?? ""),
        FormUI("State", record?.bill_state ?? ""),
        FormUI("Shipping State", record?.ship_state ?? ""),
        FormUI("Postcode", record?.bill_code ?? ""),
        FormUI("Shipping Postcode", record?.ship_code ?? ""),
        FormUI("Country", record?.bill_country ?? ""),
        FormUI("Shipping Country", record?.ship_country ?? ""),

        // Terms & Conditions
        lineview("Terms & Conditions"),
        FormUI("Terms & Conditions", record?.terms_conditions ?? ""),

        // Description Details
        lineview("Description Details"),
        FormUI("Description", record?.description ?? ""),

        // Item Details
        // lineview("Item Details"),
        // FormUI("Item Name", ""),
        // FormUI("Quantity", ""),
        // FormUI("Purchase Cost", ""),
        // FormUI("Selling Price", ""),
        // FormUI("total", ""),
        // FormUI("Net Price", ""),
      ],
    );
  }

  //dynamic ui code

  Widget FormUI(String lable, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 10.0),
          child: Text(
            lable,
            style: TextStyle(color: Colors.black54),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 14.0, left: 30.0, right: 40.0, bottom: 8.0),
          child: Container(
            child: AutoSizeText(
              value,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
          child: const Divider(
            height: 1,
            color: Colors.black26,
          ),
        ),
      ],
    );
  }

  // Widget _DetailView() {
  //   return FutureBuilder<mdetail.Record?>(
  //     future: dio.getSalesDetails(navi.Get.arguments.toString()),
  //     builder: (context, snapshot) {
  //       if (snapshot.hasData) {
  //         mdetail.Record? data = snapshot.data;
  //         // BUILDING THE UI HERE  ///
  //         EnquiryFormDetailViewPage(data!);
  //       } else if (snapshot.hasError) {
  //         print("Error while fetching detailsview !");
  //         return Text("${snapshot.error}");
  //       }
  //       return const CircularProgressIndicator();
  //     },
  //   );
  // }

  Widget _DetailView() {
    return FutureBuilder<mdetails.Record?>(
      future: dio.getInvoiceDetails(Get.arguments.toString()),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          mdetails.Record? data = snapshot.data;
          // BUILDING THE UI HERE  ///
          EnquiryFormDetailViewPage(data!);
        } else if (snapshot.hasError) {
          print("Error while fetching detailsview !");
          return Text("${snapshot.error}");
        }
        return const CircularProgressIndicator();
      },
    );
  }

  Widget lineview(String val) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              height: 40,
              color: Color(0xFFEDEDED),
              alignment: Alignment.centerLeft,
              child: Text(
                val,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
