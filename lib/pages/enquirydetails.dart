// import 'package:bemlchsfinal/networks/DioServiceClient.dart';
import 'package:fact/networks/DioServiceClient.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';
// import 'package:bemlchsfinal/model/service_report_list/EnquiryDetailsModel.dart' as mdetail;
import 'package:fact/keyvaluesmodel/EnquiryDetailsModel.dart' as mdetail;


class EnquiryDetails extends StatefulWidget {
  const EnquiryDetails({super.key});

  @override
  State<EnquiryDetails> createState() => _EnquiryDetailsState();
}

class _EnquiryDetailsState extends State<EnquiryDetails> {
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

  Widget EnquiryFormDetailViewPage(mdetail.Record record) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        lineview("Enquiry Details"),
        FormUI("Enquiry Number", record?.quote_no ?? ""),
        FormUI("Assigned To", record?.assigned_user_idLabel ?? ""),
        FormUI("Created Time", record?.createdtime ?? ""),
        FormUI("Opportunity Name", record?.potential_id ?? ""),
        FormUI("Valid Until", record.validtill ?? ""),
        FormUI("Carrier", record?.carrier ?? ""),
        FormUI("Inventory Manager", record?.assigned_user_id1 ?? ""),
        FormUI("Acceptance Status", record?.cf_2383 ?? ""),
        FormUI("Subject", record?.subject ?? ""),
        FormUI("Source", record?.source ?? ""),
        FormUI("Modified Time", record?.modifiedtime ?? ""),
        FormUI("Enquiry Stage", record?.quotestage ?? ""),
        FormUI("Contact Name", record?.contact_id ?? ""),
        FormUI("Shipping", record?.shipping ?? ""),
        FormUI("Organization Name", record?.account_id ?? ""),

        // Address Details
        lineview("Address Details"),
        FormUI("Address", record?.bill_street ?? ""),
        FormUI("Shipping Address", record?.ship_street ?? ""),
        FormUI("City", record?.bill_city ?? ""),
        FormUI("Shipping Suburb", record?.ship_city ?? ""),
        FormUI("State", record?.bill_state ?? ""),
        FormUI("Shipping State", record?.ship_state ?? ""),
        FormUI("Postcode", record?.bill_code ?? ""),
        FormUI("Shipping Postcode", record?.ship_code ?? ""),
        FormUI("Country", record?.bill_country ?? ""),
        FormUI("Shipping Country", record?.ship_country ?? ""),
        FormUI("PO Box", record?.bill_pobox ?? ""),
        FormUI("Shipping PO Box", record ?. ship_pobox ?? ""),

        // Terms & Conditions
        lineview("Terms & Conditions"),
        FormUI("Terms and Conditions", record?.terms_conditions ?? ""),

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
    return FutureBuilder<mdetail.Record?>(
      future: dio.getSalesDetails(Get.arguments.toString()),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          mdetail.Record? data = snapshot.data;
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
