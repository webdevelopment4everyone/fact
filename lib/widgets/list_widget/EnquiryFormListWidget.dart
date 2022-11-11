// import 'package:bemlchsfinal/widgets/Line_Items/LineItemEnquiryForm.dart';
// import 'package:bemlchsfinal/widgets/Line_Items/LineItemEnquiryForm.dart';
// import 'package:bemlchsfinal/widgets/models/EnquiryFormModel.dart';
import 'package:fact/widgets/line_items/LineItemEnquiryForm.dart';
import 'package:fact/widgets/model/EnquiryFormModel.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';



// import '../line_items/LineItemEnquiryForm.dart';
// import '../model/EnquiryFormModel.dart';

class EnquiryFormListWidget extends StatelessWidget {
  const EnquiryFormListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final taskList = Provider.of<EnquiryFormModelProvider>(context).itemsList;
    return taskList.length > 0
        ? ListView.builder(
            itemCount: taskList.length,
            //TODO: passthe line items
            itemBuilder: (context, index) {
              return LineItemEnquiryForm(taskList[index]);
            },
          )
        : LayoutBuilder(
            builder: (ctx, constraints) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: constraints.maxHeight * 0.5,
                      child: Text("just checking "),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Nothing added yet...',
                    ),
                  ],
                ),
              );
            },
          );
  }
}