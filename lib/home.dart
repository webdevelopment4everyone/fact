import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(children: [
          Container(
            height: 200,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    //  Get.to(() => RecommissionListViewPage());
                  },
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2 -
                        32, // minus 32 due to the margin
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white, // background color of the cards
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        // this is the shadow of the card
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0.5,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // posion the everything to the bottom
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // place here your image
                        Text("Enquiry Reports",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ///   Get.to(() => ServiceReportListView());
                  },
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2 -
                        32, // minus 32 due to the margin
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white, // background color of the cards
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        // this is the shadow of the card
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0.5,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // posion the everything to the bottom
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // place here your image
                        Text("Sales Report",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
