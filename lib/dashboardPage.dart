import 'dart:ui';

import 'package:fact/Utils/constants.dart';
import 'package:fact/networks/DioServiceClient.dart';
//import 'package:bemlchsfinal/pages/Dashboard/service_request_listing.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fact/model/Dashboard/sr_percentage_details_model.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final DioServiceClient _dioClient = DioServiceClient();

  @override
  void initState() {
    getDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      left: true,
      top: true,
      right: true,
      bottom: true,
      child: Obx(() => _showProgress.value && data == null
          ? _circularProgressBar()
          : dashboardView()),
    ));
  }

  List<SrPercentage>? data;
  final RxBool _showProgress = false.obs;

  void getDetails() async {
    _showProgress.value = true;
    var response = await _dioClient.getDashboardData();
    print('response -> $response');

    if (response?.statuscode == 1) {
      data = response?.data?.srPercentage;
    } else {
      data = null;
      print('Error while save record -> ${response?.statusMessage}');
    }
    _showProgress.value = false;
  }

  _circularProgressBar() {
    return Obx(() => _showProgress.value
        ? const AbsorbPointer(child: Center(child: CircularProgressIndicator()))
        : Container());
  }

  Widget dashboardView() {
    return data == null || data!.isEmpty
        ? const Center(child: Text('No data found!'))
        : _failedPartListView(data!);
  }

  //int touchedIndexReport = -1;
  int touchedIndexRequest = -1;

  List<PieChartSectionData> showingSections(
      int touchedIndex, List<SrPercentage> data) {
    // data[0].percent = 40;
    // data[1].percent = 40;
    // data[2].percent = 20;
    // data[data.indexWhere((element) => element.label == 'Open')].percent = 40;
    // data[data.indexWhere((element) => element.label == 'Engineer Assigned')].percent = 10;
    // data[data.indexWhere((element) => element.label == 'In Progress')].percent = 30;
    // data[data.indexWhere((element) => element.label == 'Closed')].percent = 20;

    bool isServiceEngineer = Constants.loginUserRole == 'Service Engineer';
    return List.generate(isServiceEngineer ? 3 : 4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 14.0 : 12.0;
      final radius = isTouched
          ? Get.width / 9
          : Get.width / 10 /*isTouched ? 60.0 : 50.0*/;
      int index = -1;
      if (Constants.loginUserRole != 'Service Engineer') {
        index = data.indexWhere((element) =>
            element.label ==
            (i == 0
                ? 'Open'
                : i == 1
                    ? 'Engineer Assigned'
                    : i == 2
                        ? 'In Progress'
                        : 'Closed'));
      } else {
        index = data.indexWhere((element) =>
            element.label ==
            (i == 0
                ? 'Open'
                : i == 1
                    ? 'In Progress'
                    : 'Closed'));
      }

      double valueOfPercentage = (data[index].percent ?? 0).toDouble();
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: valueOfPercentage,
            title: '${valueOfPercentage.toStringAsFixed(2)}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: isServiceEngineer
                ? const Color(0xff845bef)
                : const Color(0xff13d38e),
            value: valueOfPercentage,
            title: '${valueOfPercentage.toStringAsFixed(2)}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: isServiceEngineer
                ? const Color(0xfff8b250)
                : const Color(0xff845bef),
            value: valueOfPercentage,
            title: '${valueOfPercentage.toStringAsFixed(2)}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: valueOfPercentage,
            title: '${valueOfPercentage.toStringAsFixed(2)}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }

  List<String> statues = [
    'Open',
    'In-Progress',
    'Closed',
  ];
  List<String> statusForApi = [
    'Open',
    'Engineer Assigned',
    'In Progress',
    'Closed',
  ];

  _failedPartListView(List<SrPercentage> data) {
    if (Constants.loginUserRole == 'Service Manager' &&
        !statues.contains('EngineerAssigned'))
      statues.insert(1, 'EngineerAssigned');
    bool isAllZero = isAllPercentageIsZero(data);
    print('isAllZero -> $isAllZero');
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        Flexible(
          fit: FlexFit.loose,
          child: SizedBox(
            width: Get.width,
            height: Get.width / 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Service Request',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
                Expanded(
                  child: isAllZero
                      ? const Center(
                          child: Text('No records found.'),
                        )
                      : PieChart(
                          PieChartData(
                              pieTouchData: PieTouchData(touchCallback:
                                  (FlTouchEvent event, pieTouchResponse) {
                                setState(() {
                                  if (!event.isInterestedForInteractions ||
                                      pieTouchResponse == null ||
                                      pieTouchResponse.touchedSection == null) {
                                    touchedIndexRequest = -1;
                                    return;
                                  }
                                  touchedIndexRequest = pieTouchResponse
                                      .touchedSection!.touchedSectionIndex;
                                });
                                if (event is FlTapUpEvent) {
                                  if (pieTouchResponse!.touchedSection!
                                          .touchedSectionIndex !=
                                      -1) {
                                    //WidgetUtils().snackBarMessenger('Clicked on ${pieTouchResponse.touchedSection!.touchedSectionIndex} ${statues[(pieTouchResponse.touchedSection!.touchedSectionIndex == -1 ? 0 : pieTouchResponse.touchedSection!.touchedSectionIndex)]}');

                                    //TODO moving to service request

                                    // Get.to(
                                    //     () =>
                                    //         const ServiceRequestReportListing(),
                                    //     arguments: [
                                    //       'Service Request',
                                    //       statusForApi[(pieTouchResponse
                                    //                   .touchedSection!
                                    //                   .touchedSectionIndex ==
                                    //               -1
                                    //           ? 0
                                    //           : pieTouchResponse.touchedSection!
                                    //               .touchedSectionIndex)]
                                    //     ]);
                                  } else {
                                    print(
                                        'Selected index $touchedIndexRequest');
                                  }
                                }
                              }),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              sectionsSpace: 0,
                              centerSpaceRadius: 40,
                              sections:
                                  showingSections(touchedIndexRequest, data)),
                        ),
                ),
              ],
            ),
          ),
        ),
        if (Constants.loginUserRole != 'Service Engineer') ...[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Indicator(
                      color: Color(0xff0293ee),
                      text: 'Open',
                      size: 10.0,
                      isSquare: true,
                    ),
                    Indicator(
                      color: Color(0xff13d38e),
                      text: 'Engineer Assigned',
                      size: 10.0,
                      isSquare: true,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Indicator(
                      color: Color(0xff845bef),
                      text: 'In Progress',
                      size: 10.0,
                      isSquare: true,
                    ),
                    Indicator(
                      color: Color(0xfff8b250),
                      text: 'Closed',
                      size: 10.0,
                      isSquare: true,
                    ),
                  ],
                )
              ],
            ),
          )
        ] else ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Indicator(
                color: Color(0xff0293ee),
                text: 'Open',
                size: 12.0,
                isSquare: true,
              ),
              SizedBox(
                width: 10,
              ),
              Indicator(
                color: Color(0xff845bef),
                text: 'In Progress',
                size: 12.0,
                isSquare: true,
              ),
              SizedBox(
                width: 10,
              ),
              Indicator(
                color: Color(0xfff8b250),
                text: 'Closed',
                size: 12.0,
                isSquare: true,
              ),
              SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ],
    );
  }

  bool isAllPercentageIsZero(List<SrPercentage> data) {
    for (var i = 0; i < data.length; ++i) {
      return !(data[i].percent! > 0);
    }
    return true;
  }
}

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        )
      ],
    );
  }
}
