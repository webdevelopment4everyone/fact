// import 'package:bemlchsfinal/widgets/models/EnquiryFormModel.dart';
// import 'package:bemlchsfinal/widgets/models/EnquiryFormModel.dart';
import 'package:fact/widgets/model/EnquiryFormModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import '../model/EnquiryFormModel.dart';



class BshhetEnquiry extends StatefulWidget {
  const BshhetEnquiry({super.key});

  @override
  State<BshhetEnquiry> createState() => _BshhetEnquiryState();
}

class _BshhetEnquiryState extends State<BshhetEnquiry> {
  @override void initState() {}

  @override
  Widget build(BuildContext context) {
    return bottomUi();
  }

  TextEditingController countcontroller = TextEditingController();
  TextEditingController countcontroller1 = TextEditingController();
  TextEditingController countcontroller2 = TextEditingController();
  TextEditingController countcontroller3 = TextEditingController();
  TextEditingController countcontroller4 = TextEditingController();
  TextEditingController countcontroller5 = TextEditingController();
  TextEditingController countcontroller6 = TextEditingController();

  Widget bottomUi() {
    return SafeArea(
        child: Material(
            child: Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FormUI(countcontroller, 'Sl No.', 'Sl No.', null, false),
                  FormUI(countcontroller1, 'Item Name', 'Item Name', null,
                      false),
                  FormUI(countcontroller2, 'Quantity', 'Quantity', null,
                      false),
                  FormUI(countcontroller3, 'Purchase Cost', 'Purchase Cost', () => null, false),
                  FormUI(countcontroller4, 'Selling Price', 'Selling Price', null, false),
                  FormUI(countcontroller5, 'Total',
                      'Total', null, false),
                  FormUI(countcontroller6, 'Net Price', 'Net Price', null, false),
                  SizedBox(
                    height: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        makeadd();
                      },
                      child: const Text('Add'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }

  void makeadd() {
    String serialNo = countcontroller.text;
    String itemName = countcontroller1.text;
    String quantity = countcontroller2.text;
    String purchaseCost = countcontroller3.text;
    String sellingPrice = countcontroller4.text;
    String total = countcontroller5.text;
    String netPrice = countcontroller6.text;

    print(countcontroller.text);

    Provider.of<EnquiryFormModelProvider>(context,
            listen: false)
        .createPeriodicPartsTask(EnquiryFormModel(
            serialNo,
            itemName,
            quantity,
            purchaseCost,
            sellingPrice,
            total,
            netPrice,
        )
    );
    Navigator.of(context).pop();
  }

  Widget FormUI(
    TextEditingController? formcontroler,
    String? formlabel,
    String? hinttext,
    Function()? tap,
    bool boolvalue,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: Text("$formlabel"),
        ),
        Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            child: SingleChildScrollView(
              child: TextFormField(
                autofocus: true,
                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  hintText: hinttext,
                  fillColor: Color(0xFFEDEDED),
                  filled: true,
                ),
                onTap: tap,
              ),
            ))
      ],
    );
  }
}