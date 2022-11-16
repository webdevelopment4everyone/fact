// import 'package:bemlchsfinal/model/service_report_list/ServiceReportListView.dart';
// import 'package:bemlchsfinal/pages/Breakdown.dart';
// import 'package:bemlchsfinal/pages/enquiry.dart';
// import 'package:bemlchsfinal/pages/enquirydetails.dart';
// import 'package:bemlchsfinal/pages/invoice.dart';
// import 'package:bemlchsfinal/pages/otpverifiedscreen.dart';
// import 'package:bemlchsfinal/pages/Registration.dart';
// import 'package:bemlchsfinal/pages/SplashScreen.dart';
// import 'package:bemlchsfinal/pages/TicketDetails.dart';
// import 'package:bemlchsfinal/pages/TicketListNew.dart';
// import 'package:bemlchsfinal/pages/bottomNavigation.dart';
// import 'package:bemlchsfinal/pages/otpgen.dart';
// import 'package:bemlchsfinal/pages/predelivery.dart';
// import 'package:bemlchsfinal/pages/profilePage.dart';
// import 'package:bemlchsfinal/pages/recommission/RecommisionListViewPage.dart';
// import 'package:bemlchsfinal/pages/report_ui/insofrejectedspares.dart';
// import 'package:bemlchsfinal/pages/report_ui/predeliveryServiceReport.dart';
// import 'package:bemlchsfinal/pages/service_report/BreakdownServiceReportNew.dart';
// import 'package:bemlchsfinal/pages/service_report/Shortages.dart';
// import 'package:bemlchsfinal/pages/testingTicketDetail.dart';
// import 'package:bemlchsfinal/widgets/models/AggregateModel.dart';
// import 'package:bemlchsfinal/widgets/models/BreakdownPartsModel.dart';
// import 'package:bemlchsfinal/widgets/models/DesignModificationPartsModel.dart';
// import 'package:bemlchsfinal/widgets/models/EnquiryFormModel.dart';
// import 'package:bemlchsfinal/widgets/models/ErectionPartsRecommendationModel.dart';
// import 'package:bemlchsfinal/widgets/models/ErectionShortagesModel.dart';
// import 'package:bemlchsfinal/widgets/models/InspOfRejectedSparesPartsModel.dart';
// import 'package:bemlchsfinal/widgets/models/InstOfSubAssemblyModel.dart';
// import 'package:bemlchsfinal/widgets/models/PartsRecommendationModel.dart';
// import 'package:bemlchsfinal/widgets/models/PeriodicPartsRecommendationModel.dart';
// import 'package:bemlchsfinal/widgets/models/PreErePartsRequirementsModel.dart';
// import 'package:bemlchsfinal/widgets/models/PreventiveMaintenancePartsModel.dart';
// import 'package:bemlchsfinal/widgets/models/ServiceForSparesPurchasedPartsModel.dart';
// import 'package:bemlchsfinal/widgets/models/ShortagesModel.dart';
import 'package:fact/SplashScreen.dart';
import 'package:fact/pages/enquiry.dart';
import 'package:fact/pages/invoice.dart';
import 'package:fact/pages/invoicedetails.dart';
import 'package:fact/widgets/model/EnquiryFormModel.dart';
import 'package:fact/widgets/model/InvoiceFormModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:bemlchsfinal/pages/SplashScreen.dart';
// import 'package:bemlchsfinal/pages/ticketList.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
// import 'package:bemlchsfinal/pages/report_ui/generalinspection.dart'
//     as servicereportgenerallui;
// import 'package:bemlchsfinal/pages/report_ui/predeliveryServiceReport.dart'
//     as predeliveryservicereport;

// import 'package:bemlchsfinal/pages/report_ui/periodicmaintainance.dart'
//     as periodicmaintainerReportfinal;

// import 'package:bemlchsfinal/pages/service_report/breakdown_ui.dart'
//     as testingui;
// import 'package:bemlchsfinal/pages/service_r_list/ServiceReportListView.dart'
//     as servicereportlist;

// import 'pages/report_ui/periodicmaintainance.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) =>
              EnquiryFormModelProvider(), //Erection parts requirements
        ),
        ChangeNotifierProvider(
          create: (_) =>
              InvoiceFormModelProvider(), //Erection parts requirements
        ),
      ],
      child: GestureDetector(
        onTap: () {
          WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
        },
        child: GetMaterialApp(
          builder: EasyLoading.init(),
          debugShowCheckedModeBanner: false,
          title: 'Beml App',
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            platform: TargetPlatform.iOS,
          ),
          home: Scaffold(
            body: InvoiceDetails(),
          ),
        ),
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
