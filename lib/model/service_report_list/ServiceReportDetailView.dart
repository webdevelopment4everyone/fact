import 'dart:convert';

/// statuscode : 1
/// data : {"record":{"ticket_id":"TT318","ticket_date":"2022-09-23","reported_by":"Mukesh","account_id":"","area_name":"","project_name":"","opp_name":"sumeeth","phone":"9945495089","hdnGrandTotal":"0.00000000","sr_ticket_type":"PRE-DELIVERY","hdnTaxType":"individual","fail_de_sap_noti_type":"ZB","hdnSubTotal":"0.00000000","currency_id":{"value":"21x2","label":"India, Rupees"},"conversion_rate":"1.00000","pre_tax_total":"0.00000000","tags":"","td_symptoms":"testing V1 pre delivery","sad_line_status":"Malfunctioning","sad_line_event":"","sad_line_dnsoc":"0","eq_sr_equip_model":"","equipment_id":"","func_loc_id":"","sr_equip_status":"","sr_hmr":"2022-09-23","trans_sl_no":"","eng_sl_no":"","motor_sl_no":"","kilometer_reading":"2234","hmr":"1234","kilo_date":"2022-09-23","imagename":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"chassis_sl_no":"","chassis_manufacturer":"","engine_lh_rh_sl_no":"","engine_lh_rh_mfd":"","transmission_sl_no":"","transmission_manufacturer":"","rear_axle_sl_no":"","rear_axle_manufacturer":"","tandem_assembly_sl_no":"","tandem_assembly_manufacturer":"","rh_final_drive_sl_no":"","rh_final_drive_manu":"","front_axle_sl_no":"","front_axle_manufact":"","lh_final_drive_sl_no":"","lh_final_drive_manufacturer":"","induction_motor_sl_no":"","induction_motor_manuf":"","track_drive_sl_no":"","track_drive_manuf":"","vis_chk_external_damages":"1","vis_chk_ext_dam":"","vis_chk_ext_dam_img":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"vis_chk_hydraulic_air_leakages":"1","vis_chk_hyd_air":"","vis_hyd_air_dam_img":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"vis_chk_lubrication":"1","vis_chk_lub_rem":"","vis_lub_los_img":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"vis_chk_oil_levels":"1","vis_chk_oil_rem":"","vis_oil_lev_img":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"vis_chk_work_loseing_hders":"1","vis_chk_wrk_los":"","vis_hyd_wrk_los_img":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"ecd_can_be_com":"","saspd_doc":"","fail_de_failure_investigation":"","fail_de_failure_on_account_of":"","fd_ser_id":"","fd_obvservation":"","fail_de_part_pertains_to":"","fd_sub_div":"","vendor_id":"","fail_de_system_affected":"","fail_de_type_of_damage":"","fail_de_parts_affected":"","source":"CRM","createdtime":"2022-09-28 09:57:50","modifiedby":"Mukesh","creditnote_no":"BEML-SER-REP161","created_user_id":"Mukesh","modifiedtime":"2022-09-28 09:57:50","action_taken_block":"","eq_sta_aft_act_taken":"","genchk_engine":"","genchk_oil_pressure":"","genchk_oil_temperature":"","genchk_coolant_temperature":"","genchk_transmission":"","genchk_brake":"","genchk_air_pressure":"","genchk_electrical":"","genchk_motor":"","genchk_transformer":"","genchk_field_switch":"","genchk_auto_electrical_system":"","genchk_battery_voltage":"","genchk_hi_volt_ele_system":"","genchk_hydraulic":"","genchk_cylinders":"","genchk_oil_cooler":"","genchk_pumps":"","genchk_suspension":"","genchk_structure":"","genchk_air_conditionn":"","genchk_auto_fire_protection":"","genchk_auto_lubrication":"","badge_no":"66666","ser_eng_name":"Mukesh","sr_designaion":"General Manager","productid":"","hdnS_H_Amount":"0.00000000","line_vendor_id":"","LineItems":[]}}
/// statusMessage : "Successfully Fetched Data"

ServiceReportDetailView serviceReportDetailViewFromJson(String str) =>
    ServiceReportDetailView.fromJson(json.decode(str));
String serviceReportDetailViewToJson(ServiceReportDetailView data) =>
    json.encode(data.toJson());

class ServiceReportDetailView {
  ServiceReportDetailView({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  ServiceReportDetailView.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  ServiceReportDetailView copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      ServiceReportDetailView(
        statuscode: statuscode ?? _statuscode,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
      );
  int? get statuscode => _statuscode;
  Data? get data => _data;
  String? get statusMessage => _statusMessage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statuscode'] = _statuscode;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['statusMessage'] = _statusMessage;
    return map;
  }
}

/// record : {"ticket_id":"TT318","ticket_date":"2022-09-23","reported_by":"Mukesh","account_id":"","area_name":"","project_name":"","opp_name":"sumeeth","phone":"9945495089","hdnGrandTotal":"0.00000000","sr_ticket_type":"PRE-DELIVERY","hdnTaxType":"individual","fail_de_sap_noti_type":"ZB","hdnSubTotal":"0.00000000","currency_id":{"value":"21x2","label":"India, Rupees"},"conversion_rate":"1.00000","pre_tax_total":"0.00000000","tags":"","td_symptoms":"testing V1 pre delivery","sad_line_status":"Malfunctioning","sad_line_event":"","sad_line_dnsoc":"0","eq_sr_equip_model":"","equipment_id":"","func_loc_id":"","sr_equip_status":"","sr_hmr":"2022-09-23","trans_sl_no":"","eng_sl_no":"","motor_sl_no":"","kilometer_reading":"2234","hmr":"1234","kilo_date":"2022-09-23","imagename":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"chassis_sl_no":"","chassis_manufacturer":"","engine_lh_rh_sl_no":"","engine_lh_rh_mfd":"","transmission_sl_no":"","transmission_manufacturer":"","rear_axle_sl_no":"","rear_axle_manufacturer":"","tandem_assembly_sl_no":"","tandem_assembly_manufacturer":"","rh_final_drive_sl_no":"","rh_final_drive_manu":"","front_axle_sl_no":"","front_axle_manufact":"","lh_final_drive_sl_no":"","lh_final_drive_manufacturer":"","induction_motor_sl_no":"","induction_motor_manuf":"","track_drive_sl_no":"","track_drive_manuf":"","vis_chk_external_damages":"1","vis_chk_ext_dam":"","vis_chk_ext_dam_img":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"vis_chk_hydraulic_air_leakages":"1","vis_chk_hyd_air":"","vis_hyd_air_dam_img":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"vis_chk_lubrication":"1","vis_chk_lub_rem":"","vis_lub_los_img":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"vis_chk_oil_levels":"1","vis_chk_oil_rem":"","vis_oil_lev_img":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"vis_chk_work_loseing_hders":"1","vis_chk_wrk_los":"","vis_hyd_wrk_los_img":[{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}],"ecd_can_be_com":"","saspd_doc":"","fail_de_failure_investigation":"","fail_de_failure_on_account_of":"","fd_ser_id":"","fd_obvservation":"","fail_de_part_pertains_to":"","fd_sub_div":"","vendor_id":"","fail_de_system_affected":"","fail_de_type_of_damage":"","fail_de_parts_affected":"","source":"CRM","createdtime":"2022-09-28 09:57:50","modifiedby":"Mukesh","creditnote_no":"BEML-SER-REP161","created_user_id":"Mukesh","modifiedtime":"2022-09-28 09:57:50","action_taken_block":"","eq_sta_aft_act_taken":"","genchk_engine":"","genchk_oil_pressure":"","genchk_oil_temperature":"","genchk_coolant_temperature":"","genchk_transmission":"","genchk_brake":"","genchk_air_pressure":"","genchk_electrical":"","genchk_motor":"","genchk_transformer":"","genchk_field_switch":"","genchk_auto_electrical_system":"","genchk_battery_voltage":"","genchk_hi_volt_ele_system":"","genchk_hydraulic":"","genchk_cylinders":"","genchk_oil_cooler":"","genchk_pumps":"","genchk_suspension":"","genchk_structure":"","genchk_air_conditionn":"","genchk_auto_fire_protection":"","genchk_auto_lubrication":"","badge_no":"66666","ser_eng_name":"Mukesh","sr_designaion":"General Manager","productid":"","hdnS_H_Amount":"0.00000000","line_vendor_id":"","LineItems":[]}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    Record? record,
  }) {
    _record = record;
  }

  Data.fromJson(dynamic json) {
    _record = json['record'] != null ? Record.fromJson(json['record']) : null;
  }
  Record? _record;
  Data copyWith({
    Record? record,
  }) =>
      Data(
        record: record ?? _record,
      );
  Record? get record => _record;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_record != null) {
      map['record'] = _record?.toJson();
    }
    return map;
  }
}

/// ticket_id : "TT318"
/// ticket_date : "2022-09-23"
/// reported_by : "Mukesh"
/// account_id : ""
/// area_name : ""
/// project_name : ""
/// opp_name : "sumeeth"
/// phone : "9945495089"
/// hdnGrandTotal : "0.00000000"
/// sr_ticket_type : "PRE-DELIVERY"
/// hdnTaxType : "individual"
/// fail_de_sap_noti_type : "ZB"
/// hdnSubTotal : "0.00000000"
/// currency_id : {"value":"21x2","label":"India, Rupees"}
/// conversion_rate : "1.00000"
/// pre_tax_total : "0.00000000"
/// tags : ""
/// td_symptoms : "testing V1 pre delivery"
/// sad_line_status : "Malfunctioning"
/// sad_line_event : ""
/// sad_line_dnsoc : "0"
/// eq_sr_equip_model : ""
/// equipment_id : ""
/// func_loc_id : ""
/// sr_equip_status : ""
/// sr_hmr : "2022-09-23"
/// trans_sl_no : ""
/// eng_sl_no : ""
/// motor_sl_no : ""
/// kilometer_reading : "2234"
/// hmr : "1234"
/// kilo_date : "2022-09-23"
/// imagename : [{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}]
/// chassis_sl_no : ""
/// chassis_manufacturer : ""
/// engine_lh_rh_sl_no : ""
/// engine_lh_rh_mfd : ""
/// transmission_sl_no : ""
/// transmission_manufacturer : ""
/// rear_axle_sl_no : ""
/// rear_axle_manufacturer : ""
/// tandem_assembly_sl_no : ""
/// tandem_assembly_manufacturer : ""
/// rh_final_drive_sl_no : ""
/// rh_final_drive_manu : ""
/// front_axle_sl_no : ""
/// front_axle_manufact : ""
/// lh_final_drive_sl_no : ""
/// lh_final_drive_manufacturer : ""
/// induction_motor_sl_no : ""
/// induction_motor_manuf : ""
/// track_drive_sl_no : ""
/// track_drive_manuf : ""
/// vis_chk_external_damages : "1"
/// vis_chk_ext_dam : ""
/// vis_chk_ext_dam_img : [{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}]
/// vis_chk_hydraulic_air_leakages : "1"
/// vis_chk_hyd_air : ""
/// vis_hyd_air_dam_img : [{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}]
/// vis_chk_lubrication : "1"
/// vis_chk_lub_rem : ""
/// vis_lub_los_img : [{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}]
/// vis_chk_oil_levels : "1"
/// vis_chk_oil_rem : ""
/// vis_oil_lev_img : [{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}]
/// vis_chk_work_loseing_hders : "1"
/// vis_chk_wrk_los : ""
/// vis_hyd_wrk_los_img : [{"urlpath":"http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88616&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88617&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88618&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88619&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88620&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88621&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88622&key=7022f863c1da82e1e6ef1b5cc30dd8bb","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88623&key=1b3fa516b3244ab8dede55ad82a21605","loadimage":""},{"urlpath":"http://3.7.71.53/beml/public.php?fid=88624&key=3229dd24e8d38eae8bbc7d03ae673257","loadimage":""}]
/// ecd_can_be_com : ""
/// saspd_doc : ""
/// fail_de_failure_investigation : ""
/// fail_de_failure_on_account_of : ""
/// fd_ser_id : ""
/// fd_obvservation : ""
/// fail_de_part_pertains_to : ""
/// fd_sub_div : ""
/// vendor_id : ""
/// fail_de_system_affected : ""
/// fail_de_type_of_damage : ""
/// fail_de_parts_affected : ""
/// source : "CRM"
/// createdtime : "2022-09-28 09:57:50"
/// modifiedby : "Mukesh"
/// creditnote_no : "BEML-SER-REP161"
/// created_user_id : "Mukesh"
/// modifiedtime : "2022-09-28 09:57:50"
/// action_taken_block : ""
/// eq_sta_aft_act_taken : ""
/// genchk_engine : ""
/// genchk_oil_pressure : ""
/// genchk_oil_temperature : ""
/// genchk_coolant_temperature : ""
/// genchk_transmission : ""
/// genchk_brake : ""
/// genchk_air_pressure : ""
/// genchk_electrical : ""
/// genchk_motor : ""
/// genchk_transformer : ""
/// genchk_field_switch : ""
/// genchk_auto_electrical_system : ""
/// genchk_battery_voltage : ""
/// genchk_hi_volt_ele_system : ""
/// genchk_hydraulic : ""
/// genchk_cylinders : ""
/// genchk_oil_cooler : ""
/// genchk_pumps : ""
/// genchk_suspension : ""
/// genchk_structure : ""
/// genchk_air_conditionn : ""
/// genchk_auto_fire_protection : ""
/// genchk_auto_lubrication : ""
/// badge_no : "66666"
/// ser_eng_name : "Mukesh"
/// sr_designaion : "General Manager"
/// productid : ""
/// hdnS_H_Amount : "0.00000000"
/// line_vendor_id : ""
/// LineItems : []

Record recordFromJson(String str) => Record.fromJson(json.decode(str));
String recordToJson(Record data) => json.encode(data.toJson());

//
// main clss method

class Record {
  Record({
    String? ticketId,
    String? ticketDate,
    String? reportedBy,
    String? accountId,
    String? areaName,
    String? projectName,
    String? oppName,
    String? phone,
    String? hdnGrandTotal,
    String? srTicketType,
    String? hdnTaxType,
    String? failDeSapNotiType,
    String? hdnSubTotal,
    CurrencyId? currencyId,
    String? conversionRate,
    String? preTaxTotal,
    String? tags,
    String? tdSymptoms,
    String? sadLineStatus,
    String? sadLineEvent,
    String? sadLineDnsoc,
    String? eqSrEquipModel,
    String? equipmentId,
    String? funcLocId,
    String? srEquipStatus,
    String? srHmr,
    String? transSlNo,
    String? engSlNo,
    String? motorSlNo,
    String? kilometerReading,
    String? hmr,
    String? kiloDate,
    List<Imagename>? imagename,
    String? chassisSlNo,
    String? chassisManufacturer,
    String? engineLhRhSlNo,
    String? engineLhRhMfd,
    String? transmissionSlNo,
    String? transmissionManufacturer,
    String? rearAxleSlNo,
    String? rearAxleManufacturer,
    String? tandemAssemblySlNo,
    String? tandemAssemblyManufacturer,
    String? rhFinalDriveSlNo,
    String? rhFinalDriveManu,
    String? frontAxleSlNo,
    String? frontAxleManufact,
    String? lhFinalDriveSlNo,
    String? lhFinalDriveManufacturer,
    String? inductionMotorSlNo,
    String? inductionMotorManuf,
    String? trackDriveSlNo,
    String? trackDriveManuf,
    String? visChkExternalDamages,
    String? visChkExtDam,
    List<VisChkExtDamImg>? visChkExtDamImg,
    String? visChkHydraulicAirLeakages,
    String? visChkHydAir,
    List<VisHydAirDamImg>? visHydAirDamImg,
    String? visChkLubrication,
    String? visChkLubRem,
    List<VisLubLosImg>? visLubLosImg,
    String? visChkOilLevels,
    String? visChkOilRem,
    List<VisOilLevImg>? visOilLevImg,
    String? visChkWorkLoseingHders,
    String? visChkWrkLos,
    List<VisHydWrkLosImg>? visHydWrkLosImg,
    String? ecdCanBeCom,
    String? saspdDoc,
    String? failDeFailureInvestigation,
    String? failDeFailureOnAccountOf,
    String? fdSerId,
    String? fdObvservation,
    String? failDePartPertainsTo,
    String? fdSubDiv,
    String? vendorId,
    String? failDeSystemAffected,
    String? failDeTypeOfDamage,
    String? failDePartsAffected,
    String? source,
    String? createdtime,
    String? modifiedby,
    String? creditnoteNo,
    String? createdUserId,
    String? modifiedtime,
    String? actionTakenBlock,
    String? eqStaAftActTaken,
    String? genchkEngine,
    String? genchkOilPressure,
    String? genchkOilTemperature,
    String? genchkCoolantTemperature,
    String? genchkTransmission,
    String? genchkBrake,
    String? genchkAirPressure,
    String? genchkElectrical,
    String? genchkMotor,
    String? genchkTransformer,
    String? genchkFieldSwitch,
    String? genchkAutoElectricalSystem,
    String? genchkBatteryVoltage,
    String? genchkHiVoltEleSystem,
    String? genchkHydraulic,
    String? genchkCylinders,
    String? genchkOilCooler,
    String? genchkPumps,
    String? genchkSuspension,
    String? genchkStructure,
    String? genchkAirConditionn,
    String? genchkAutoFireProtection,
    String? genchkAutoLubrication,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? productid,
    String? hdnSHAmount,
    String? lineVendorId,
    String? dteOfCommissing,
    String? srEqWarrantyTerms,
    String? warrantyEndDte,
    String? srWarStatus,
    String? typeOfConrt,
    String? contEndDate,
    String? contStartDate,
    String? runYearCont,
    String? srRegionalOffice,
    String? distOffOrActCen,
    String? actionTakenBlockSeo,
    List<LineItems>? lineItems,
  }) {
    _ticketId = ticketId;
    _ticketDate = ticketDate;
    _reportedBy = reportedBy;
    _accountId = accountId;
    _areaName = areaName;
    _projectName = projectName;
    _oppName = oppName;
    _phone = phone;
    _hdnGrandTotal = hdnGrandTotal;
    _srTicketType = srTicketType;
    _hdnTaxType = hdnTaxType;
    _failDeSapNotiType = failDeSapNotiType;
    _hdnSubTotal = hdnSubTotal;
    _currencyId = currencyId;
    _conversionRate = conversionRate;
    _preTaxTotal = preTaxTotal;
    _tags = tags;
    _tdSymptoms = tdSymptoms;
    _sadLineStatus = sadLineStatus;
    _sadLineEvent = sadLineEvent;
    _sadLineDnsoc = sadLineDnsoc;
    _eqSrEquipModel = eqSrEquipModel;
    _equipmentId = equipmentId;
    _funcLocId = funcLocId;
    _srEquipStatus = srEquipStatus;
    _srHmr = srHmr;
    _transSlNo = transSlNo;
    _engSlNo = engSlNo;
    _motorSlNo = motorSlNo;
    _kilometerReading = kilometerReading;
    _hmr = hmr;
    _kiloDate = kiloDate;
    _imagename = imagename;

    _dteOfCommissing = dteOfCommissing;
    _srEqWarrantyTerms = srEqWarrantyTerms;
    _warrantyEndDte = warrantyEndDte;
    _srWarStatus = srWarStatus;
    _typeOfConrt = typeOfConrt;
    _contEndDate = contEndDate;
    _contStartDate = contStartDate;
    _runYearCont = runYearCont;

    _chassisSlNo = chassisSlNo;
    _chassisManufacturer = chassisManufacturer;
    _engineLhRhSlNo = engineLhRhSlNo;
    _engineLhRhMfd = engineLhRhMfd;
    _transmissionSlNo = transmissionSlNo;
    _transmissionManufacturer = transmissionManufacturer;
    _rearAxleSlNo = rearAxleSlNo;
    _rearAxleManufacturer = rearAxleManufacturer;
    _tandemAssemblySlNo = tandemAssemblySlNo;
    _tandemAssemblyManufacturer = tandemAssemblyManufacturer;
    _rhFinalDriveSlNo = rhFinalDriveSlNo;
    _rhFinalDriveManu = rhFinalDriveManu;
    _frontAxleSlNo = frontAxleSlNo;
    _frontAxleManufact = frontAxleManufact;
    _lhFinalDriveSlNo = lhFinalDriveSlNo;
    _lhFinalDriveManufacturer = lhFinalDriveManufacturer;
    _inductionMotorSlNo = inductionMotorSlNo;
    _inductionMotorManuf = inductionMotorManuf;
    _trackDriveSlNo = trackDriveSlNo;
    _trackDriveManuf = trackDriveManuf;
    _visChkExternalDamages = visChkExternalDamages;
    _visChkExtDam = visChkExtDam;
    _visChkExtDamImg = visChkExtDamImg;
    _visChkHydraulicAirLeakages = visChkHydraulicAirLeakages;
    _visChkHydAir = visChkHydAir;
    _visHydAirDamImg = visHydAirDamImg;
    _visChkLubrication = visChkLubrication;
    _visChkLubRem = visChkLubRem;
    _visLubLosImg = visLubLosImg;
    _visChkOilLevels = visChkOilLevels;
    _visChkOilRem = visChkOilRem;
    _visOilLevImg = visOilLevImg;
    _visChkWorkLoseingHders = visChkWorkLoseingHders;
    _visChkWrkLos = visChkWrkLos;
    _visHydWrkLosImg = visHydWrkLosImg;
    _ecdCanBeCom = ecdCanBeCom;
    _saspdDoc = saspdDoc;
    _failDeFailureInvestigation = failDeFailureInvestigation;
    _failDeFailureOnAccountOf = failDeFailureOnAccountOf;
    _fdSerId = fdSerId;
    _fdObvservation = fdObvservation;
    _failDePartPertainsTo = failDePartPertainsTo;
    _fdSubDiv = fdSubDiv;
    _vendorId = vendorId;
    _failDeSystemAffected = failDeSystemAffected;
    _failDeTypeOfDamage = failDeTypeOfDamage;
    _failDePartsAffected = failDePartsAffected;
    _source = source;
    _createdtime = createdtime;
    _modifiedby = modifiedby;
    _creditnoteNo = creditnoteNo;
    _createdUserId = createdUserId;
    _modifiedtime = modifiedtime;
    _actionTakenBlock = actionTakenBlock;
    _eqStaAftActTaken = eqStaAftActTaken;
    _genchkEngine = genchkEngine;
    _genchkOilPressure = genchkOilPressure;
    _genchkOilTemperature = genchkOilTemperature;
    _genchkCoolantTemperature = genchkCoolantTemperature;
    _genchkTransmission = genchkTransmission;
    _genchkBrake = genchkBrake;
    _genchkAirPressure = genchkAirPressure;
    _genchkElectrical = genchkElectrical;
    _genchkMotor = genchkMotor;
    _genchkTransformer = genchkTransformer;
    _genchkFieldSwitch = genchkFieldSwitch;
    _genchkAutoElectricalSystem = genchkAutoElectricalSystem;
    _genchkBatteryVoltage = genchkBatteryVoltage;
    _genchkHiVoltEleSystem = genchkHiVoltEleSystem;
    _genchkHydraulic = genchkHydraulic;
    _genchkCylinders = genchkCylinders;
    _genchkOilCooler = genchkOilCooler;
    _genchkPumps = genchkPumps;
    _genchkSuspension = genchkSuspension;
    _genchkStructure = genchkStructure;
    _genchkAirConditionn = genchkAirConditionn;
    _genchkAutoFireProtection = genchkAutoFireProtection;
    _genchkAutoLubrication = genchkAutoLubrication;
    _badgeNo = badgeNo;
    _serEngName = serEngName;
    _srDesignaion = srDesignaion;

    _srRegionalOffice = srRegionalOffice;
    _distOffOrActCen = distOffOrActCen;
    _productid = productid;
    _hdnSHAmount = hdnSHAmount;
    _lineVendorId = lineVendorId;
    _lineItems = lineItems;
    _actionTakenBlockSeo = actionTakenBlockSeo;
  }

  ///Record , JSON MEHTOD

  Record.fromJson(dynamic json) {
    _ticketId = json['ticket_id'];
    _ticketDate = json['ticket_date'];
    _reportedBy = json['reported_by'];
    _accountId = json['account_id'];
    _areaName = json['area_name'];
    _projectName = json['project_name'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _hdnGrandTotal = json['hdnGrandTotal'];
    _srTicketType = json['sr_ticket_type'];
    _hdnTaxType = json['hdnTaxType'];
    _failDeSapNotiType = json['fail_de_sap_noti_type'];
    _hdnSubTotal = json['hdnSubTotal'];
    _currencyId = json['currency_id'] != null
        ? CurrencyId.fromJson(json['currency_id'])
        : null;
    _conversionRate = json['conversion_rate'];
    _preTaxTotal = json['pre_tax_total'];
    _tags = json['tags'];
    _tdSymptoms = json['td_symptoms'];
    _sadLineStatus = json['sad_line_status'];
    _sadLineEvent = json['sad_line_event'];
    _sadLineDnsoc = json['sad_line_dnsoc'];
    _eqSrEquipModel = json['eq_sr_equip_model'];
    _equipmentId = json['equipment_id'];
    _funcLocId = json['func_loc_id'];
    _srEquipStatus = json['sr_equip_status'];
    _srHmr = json['sr_hmr'];
    _transSlNo = json['trans_sl_no'];
    _engSlNo = json['eng_sl_no'];
    _motorSlNo = json['motor_sl_no'];
    _kilometerReading = json['kilometer_reading'];
    _hmr = json['hmr'];
    _kiloDate = json['kilo_date'];
    if (json['imagename'] != null) {
      _imagename = [];
      json['imagename'].forEach((v) {
        _imagename?.add(Imagename.fromJson(v));
      });
    }

    _dteOfCommissing = json['dte_of_commissing'];
    _srEqWarrantyTerms = json['sr_eq_warranty_terms'];
    _warrantyEndDte = json['warranty_end_dte'];
    _srWarStatus = json['sr_war_status'];
    _typeOfConrt = json['type_of_conrt'];
    _contEndDate = json['cont_end_date'];
    _contStartDate = json['cont_start_date'];
    _runYearCont = json['run_year_cont'];

    _actionTakenBlockSeo = json['action_taken_block_seo'];

    _chassisSlNo = json['chassis_sl_no'];
    _chassisManufacturer = json['chassis_manufacturer'];
    _engineLhRhSlNo = json['engine_lh_rh_sl_no'];
    _engineLhRhMfd = json['engine_lh_rh_mfd'];
    _transmissionSlNo = json['transmission_sl_no'];
    _transmissionManufacturer = json['transmission_manufacturer'];
    _rearAxleSlNo = json['rear_axle_sl_no'];
    _rearAxleManufacturer = json['rear_axle_manufacturer'];
    _tandemAssemblySlNo = json['tandem_assembly_sl_no'];
    _tandemAssemblyManufacturer = json['tandem_assembly_manufacturer'];
    _rhFinalDriveSlNo = json['rh_final_drive_sl_no'];
    _rhFinalDriveManu = json['rh_final_drive_manu'];
    _frontAxleSlNo = json['front_axle_sl_no'];
    _frontAxleManufact = json['front_axle_manufact'];
    _lhFinalDriveSlNo = json['lh_final_drive_sl_no'];
    _lhFinalDriveManufacturer = json['lh_final_drive_manufacturer'];
    _inductionMotorSlNo = json['induction_motor_sl_no'];
    _inductionMotorManuf = json['induction_motor_manuf'];
    _trackDriveSlNo = json['track_drive_sl_no'];
    _trackDriveManuf = json['track_drive_manuf'];
    _visChkExternalDamages = json['vis_chk_external_damages'];
    _visChkExtDam = json['vis_chk_ext_dam'];
    if (json['vis_chk_ext_dam_img'] != null) {
      _visChkExtDamImg = [];
      json['vis_chk_ext_dam_img'].forEach((v) {
        _visChkExtDamImg?.add(VisChkExtDamImg.fromJson(v));
      });
    }
    _visChkHydraulicAirLeakages = json['vis_chk_hydraulic_air_leakages'];
    _visChkHydAir = json['vis_chk_hyd_air'];
    if (json['vis_hyd_air_dam_img'] != null) {
      _visHydAirDamImg = [];
      json['vis_hyd_air_dam_img'].forEach((v) {
        _visHydAirDamImg?.add(VisHydAirDamImg.fromJson(v));
      });
    }
    _visChkLubrication = json['vis_chk_lubrication'];
    _visChkLubRem = json['vis_chk_lub_rem'];
    if (json['vis_lub_los_img'] != null) {
      _visLubLosImg = [];
      json['vis_lub_los_img'].forEach((v) {
        _visLubLosImg?.add(VisLubLosImg.fromJson(v));
      });
    }
    _visChkOilLevels = json['vis_chk_oil_levels'];
    _visChkOilRem = json['vis_chk_oil_rem'];
    if (json['vis_oil_lev_img'] != null) {
      _visOilLevImg = [];
      json['vis_oil_lev_img'].forEach((v) {
        _visOilLevImg?.add(VisOilLevImg.fromJson(v));
      });
    }
    _visChkWorkLoseingHders = json['vis_chk_work_loseing_hders'];
    _visChkWrkLos = json['vis_chk_wrk_los'];
    if (json['vis_hyd_wrk_los_img'] != null) {
      _visHydWrkLosImg = [];
      json['vis_hyd_wrk_los_img'].forEach((v) {
        _visHydWrkLosImg?.add(VisHydWrkLosImg.fromJson(v));
      });
    }
    _ecdCanBeCom = json['ecd_can_be_com'];
    _saspdDoc = json['saspd_doc'];
    _failDeFailureInvestigation = json['fail_de_failure_investigation'];
    _failDeFailureOnAccountOf = json['fail_de_failure_on_account_of'];
    _fdSerId = json['fd_ser_id'];
    _fdObvservation = json['fd_obvservation'];
    _failDePartPertainsTo = json['fail_de_part_pertains_to'];
    _fdSubDiv = json['fd_sub_div'];
    _vendorId = json['vendor_id'];
    _failDeSystemAffected = json['fail_de_system_affected'];
    _failDeTypeOfDamage = json['fail_de_type_of_damage'];
    _failDePartsAffected = json['fail_de_parts_affected'];
    _source = json['source'];
    _createdtime = json['createdtime'];
    _modifiedby = json['modifiedby'];
    _creditnoteNo = json['creditnote_no'];
    _createdUserId = json['created_user_id'];
    _modifiedtime = json['modifiedtime'];
    _actionTakenBlock = json['action_taken_block'];
    _eqStaAftActTaken = json['eq_sta_aft_act_taken'];
    _genchkEngine = json['genchk_engine'];
    _genchkOilPressure = json['genchk_oil_pressure'];
    _genchkOilTemperature = json['genchk_oil_temperature'];
    _genchkCoolantTemperature = json['genchk_coolant_temperature'];
    _genchkTransmission = json['genchk_transmission'];
    _genchkBrake = json['genchk_brake'];
    _genchkAirPressure = json['genchk_air_pressure'];
    _genchkElectrical = json['genchk_electrical'];
    _genchkMotor = json['genchk_motor'];
    _genchkTransformer = json['genchk_transformer'];
    _genchkFieldSwitch = json['genchk_field_switch'];
    _genchkAutoElectricalSystem = json['genchk_auto_electrical_system'];
    _genchkBatteryVoltage = json['genchk_battery_voltage'];
    _genchkHiVoltEleSystem = json['genchk_hi_volt_ele_system'];
    _genchkHydraulic = json['genchk_hydraulic'];
    _genchkCylinders = json['genchk_cylinders'];
    _genchkOilCooler = json['genchk_oil_cooler'];
    _genchkPumps = json['genchk_pumps'];
    _genchkSuspension = json['genchk_suspension'];
    _genchkStructure = json['genchk_structure'];
    _genchkAirConditionn = json['genchk_air_conditionn'];
    _genchkAutoFireProtection = json['genchk_auto_fire_protection'];
    _genchkAutoLubrication = json['genchk_auto_lubrication'];
    _badgeNo = json['badge_no'];
    _serEngName = json['ser_eng_name'];
    _srDesignaion = json['sr_designaion'];
    _productid = json['productid'];
    _hdnSHAmount = json['hdnS_H_Amount'];
    _lineVendorId = json['line_vendor_id'];
    _srRegionalOffice = json['sr_regional_office'];
    _distOffOrActCen = json['dist_off_or_act_cen'];

    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
  }

  /// variable of cp method

  String? _ticketId;
  String? _ticketDate;
  String? _reportedBy;
  String? _accountId;
  String? _areaName;
  String? _projectName;
  String? _oppName;
  String? _phone;
  String? _hdnGrandTotal;
  String? _srTicketType;
  String? _hdnTaxType;
  String? _failDeSapNotiType;
  String? _hdnSubTotal;
  CurrencyId? _currencyId;
  String? _conversionRate;
  String? _preTaxTotal;
  String? _tags;
  String? _tdSymptoms;
  String? _sadLineStatus;
  String? _sadLineEvent;
  String? _sadLineDnsoc;
  String? _eqSrEquipModel;
  String? _equipmentId;
  String? _funcLocId;
  String? _srEquipStatus;
  String? _srHmr;
  String? _transSlNo;
  String? _engSlNo;
  String? _motorSlNo;
  String? _kilometerReading;
  String? _hmr;
  String? _kiloDate;
  List<Imagename>? _imagename;
  String? _dteOfCommissing;
  String? _srEqWarrantyTerms;
  String? _warrantyEndDte;
  String? _srWarStatus;
  String? _typeOfConrt;
  String? _contEndDate;
  String? _contStartDate;
  String? _runYearCont;
  String? _chassisSlNo;
  String? _chassisManufacturer;
  String? _engineLhRhSlNo;
  String? _engineLhRhMfd;
  String? _transmissionSlNo;
  String? _transmissionManufacturer;
  String? _rearAxleSlNo;
  String? _rearAxleManufacturer;
  String? _tandemAssemblySlNo;
  String? _tandemAssemblyManufacturer;
  String? _rhFinalDriveSlNo;
  String? _rhFinalDriveManu;
  String? _frontAxleSlNo;
  String? _frontAxleManufact;
  String? _lhFinalDriveSlNo;
  String? _lhFinalDriveManufacturer;
  String? _inductionMotorSlNo;
  String? _inductionMotorManuf;
  String? _trackDriveSlNo;
  String? _trackDriveManuf;
  String? _visChkExternalDamages;
  String? _visChkExtDam;
  List<VisChkExtDamImg>? _visChkExtDamImg;
  String? _visChkHydraulicAirLeakages;
  String? _visChkHydAir;
  List<VisHydAirDamImg>? _visHydAirDamImg;
  String? _visChkLubrication;
  String? _visChkLubRem;
  List<VisLubLosImg>? _visLubLosImg;
  String? _visChkOilLevels;
  String? _visChkOilRem;
  List<VisOilLevImg>? _visOilLevImg;
  String? _visChkWorkLoseingHders;
  String? _visChkWrkLos;
  List<VisHydWrkLosImg>? _visHydWrkLosImg;
  String? _ecdCanBeCom;
  String? _saspdDoc;
  String? _failDeFailureInvestigation;
  String? _failDeFailureOnAccountOf;
  String? _fdSerId;
  String? _fdObvservation;
  String? _failDePartPertainsTo;
  String? _fdSubDiv;
  String? _vendorId;
  String? _failDeSystemAffected;
  String? _failDeTypeOfDamage;
  String? _failDePartsAffected;
  String? _source;
  String? _createdtime;
  String? _modifiedby;
  String? _creditnoteNo;
  String? _createdUserId;
  String? _modifiedtime;
  String? _actionTakenBlock;
  String? _eqStaAftActTaken;
  String? _genchkEngine;
  String? _genchkOilPressure;
  String? _genchkOilTemperature;
  String? _genchkCoolantTemperature;
  String? _genchkTransmission;
  String? _genchkBrake;
  String? _genchkAirPressure;
  String? _genchkElectrical;
  String? _genchkMotor;
  String? _genchkTransformer;
  String? _genchkFieldSwitch;
  String? _genchkAutoElectricalSystem;
  String? _genchkBatteryVoltage;
  String? _genchkHiVoltEleSystem;
  String? _genchkHydraulic;
  String? _genchkCylinders;
  String? _genchkOilCooler;
  String? _genchkPumps;
  String? _genchkSuspension;
  String? _genchkStructure;
  String? _genchkAirConditionn;
  String? _genchkAutoFireProtection;
  String? _genchkAutoLubrication;
  String? _badgeNo;
  String? _serEngName;
  String? _srDesignaion;
  String? _productid;
  String? _hdnSHAmount;
  String? _lineVendorId;

  String? _srRegionalOffice;
  String? _distOffOrActCen;
  String? _actionTakenBlockSeo;
  List<LineItems>? _lineItems;

  /// copy with method

  Record copyWith({
    String? ticketId,
    String? ticketDate,
    String? reportedBy,
    String? accountId,
    String? areaName,
    String? projectName,
    String? oppName,
    String? phone,
    String? hdnGrandTotal,
    String? srTicketType,
    String? hdnTaxType,
    String? failDeSapNotiType,
    String? hdnSubTotal,
    CurrencyId? currencyId,
    String? conversionRate,
    String? preTaxTotal,
    String? tags,
    String? tdSymptoms,
    String? sadLineStatus,
    String? sadLineEvent,
    String? sadLineDnsoc,
    String? eqSrEquipModel,
    String? equipmentId,
    String? funcLocId,
    String? srEquipStatus,
    String? srHmr,
    String? transSlNo,
    String? engSlNo,
    String? motorSlNo,
    String? kilometerReading,
    String? hmr,
    String? kiloDate,
    List<Imagename>? imagename,
    String? chassisSlNo,
    String? chassisManufacturer,
    String? engineLhRhSlNo,
    String? engineLhRhMfd,
    String? transmissionSlNo,
    String? transmissionManufacturer,
    String? rearAxleSlNo,
    String? rearAxleManufacturer,
    String? tandemAssemblySlNo,
    String? tandemAssemblyManufacturer,
    String? rhFinalDriveSlNo,
    String? rhFinalDriveManu,
    String? frontAxleSlNo,
    String? frontAxleManufact,
    String? lhFinalDriveSlNo,
    String? lhFinalDriveManufacturer,
    String? inductionMotorSlNo,
    String? inductionMotorManuf,
    String? trackDriveSlNo,
    String? trackDriveManuf,
    String? visChkExternalDamages,
    String? visChkExtDam,
    List<VisChkExtDamImg>? visChkExtDamImg,
    String? visChkHydraulicAirLeakages,
    String? visChkHydAir,
    List<VisHydAirDamImg>? visHydAirDamImg,
    String? visChkLubrication,
    String? visChkLubRem,
    List<VisLubLosImg>? visLubLosImg,
    String? visChkOilLevels,
    String? visChkOilRem,
    List<VisOilLevImg>? visOilLevImg,
    String? visChkWorkLoseingHders,
    String? visChkWrkLos,
    List<VisHydWrkLosImg>? visHydWrkLosImg,
    String? ecdCanBeCom,
    String? saspdDoc,
    String? failDeFailureInvestigation,
    String? failDeFailureOnAccountOf,
    String? fdSerId,
    String? fdObvservation,
    String? failDePartPertainsTo,
    String? fdSubDiv,
    String? vendorId,
    String? failDeSystemAffected,
    String? failDeTypeOfDamage,
    String? failDePartsAffected,
    String? source,
    String? createdtime,
    String? modifiedby,
    String? creditnoteNo,
    String? createdUserId,
    String? modifiedtime,
    String? actionTakenBlock,
    String? eqStaAftActTaken,
    String? genchkEngine,
    String? genchkOilPressure,
    String? genchkOilTemperature,
    String? genchkCoolantTemperature,
    String? genchkTransmission,
    String? genchkBrake,
    String? genchkAirPressure,
    String? genchkElectrical,
    String? genchkMotor,
    String? genchkTransformer,
    String? genchkFieldSwitch,
    String? genchkAutoElectricalSystem,
    String? genchkBatteryVoltage,
    String? genchkHiVoltEleSystem,
    String? genchkHydraulic,
    String? genchkCylinders,
    String? genchkOilCooler,
    String? genchkPumps,
    String? genchkSuspension,
    String? genchkStructure,
    String? genchkAirConditionn,
    String? genchkAutoFireProtection,
    String? genchkAutoLubrication,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? productid,
    String? hdnSHAmount,
    String? lineVendorId,
    String? srRegionalOffice,
    String? distOffOrActCen,
    String? dteOfCommissing,
    String? srEqWarrantyTerms,
    String? warrantyEndDte,
    String? srWarStatus,
    String? typeOfConrt,
    String? contEndDate,
    String? contStartDate,
    String? runYearCont,
    String? actionTakenBlockSeo,
    List<LineItems>? lineItems,
  }) =>
      Record(
        ticketId: ticketId ?? _ticketId,
        ticketDate: ticketDate ?? _ticketDate,
        reportedBy: reportedBy ?? _reportedBy,
        accountId: accountId ?? _accountId,
        areaName: areaName ?? _areaName,
        projectName: projectName ?? _projectName,
        oppName: oppName ?? _oppName,
        phone: phone ?? _phone,
        hdnGrandTotal: hdnGrandTotal ?? _hdnGrandTotal,
        srTicketType: srTicketType ?? _srTicketType,
        hdnTaxType: hdnTaxType ?? _hdnTaxType,
        failDeSapNotiType: failDeSapNotiType ?? _failDeSapNotiType,
        hdnSubTotal: hdnSubTotal ?? _hdnSubTotal,
        currencyId: currencyId ?? _currencyId,
        conversionRate: conversionRate ?? _conversionRate,
        preTaxTotal: preTaxTotal ?? _preTaxTotal,
        tags: tags ?? _tags,
        tdSymptoms: tdSymptoms ?? _tdSymptoms,
        sadLineStatus: sadLineStatus ?? _sadLineStatus,
        sadLineEvent: sadLineEvent ?? _sadLineEvent,
        sadLineDnsoc: sadLineDnsoc ?? _sadLineDnsoc,
        eqSrEquipModel: eqSrEquipModel ?? _eqSrEquipModel,
        equipmentId: equipmentId ?? _equipmentId,
        funcLocId: funcLocId ?? _funcLocId,
        srEquipStatus: srEquipStatus ?? _srEquipStatus,
        srHmr: srHmr ?? _srHmr,
        transSlNo: transSlNo ?? _transSlNo,
        engSlNo: engSlNo ?? _engSlNo,
        motorSlNo: motorSlNo ?? _motorSlNo,
        kilometerReading: kilometerReading ?? _kilometerReading,
        hmr: hmr ?? _hmr,
        kiloDate: kiloDate ?? _kiloDate,
        imagename: imagename ?? _imagename,
        chassisSlNo: chassisSlNo ?? _chassisSlNo,
        chassisManufacturer: chassisManufacturer ?? _chassisManufacturer,
        engineLhRhSlNo: engineLhRhSlNo ?? _engineLhRhSlNo,
        engineLhRhMfd: engineLhRhMfd ?? _engineLhRhMfd,
        transmissionSlNo: transmissionSlNo ?? _transmissionSlNo,
        transmissionManufacturer:
            transmissionManufacturer ?? _transmissionManufacturer,
        rearAxleSlNo: rearAxleSlNo ?? _rearAxleSlNo,
        rearAxleManufacturer: rearAxleManufacturer ?? _rearAxleManufacturer,
        tandemAssemblySlNo: tandemAssemblySlNo ?? _tandemAssemblySlNo,
        tandemAssemblyManufacturer:
            tandemAssemblyManufacturer ?? _tandemAssemblyManufacturer,
        rhFinalDriveSlNo: rhFinalDriveSlNo ?? _rhFinalDriveSlNo,
        rhFinalDriveManu: rhFinalDriveManu ?? _rhFinalDriveManu,
        frontAxleSlNo: frontAxleSlNo ?? _frontAxleSlNo,
        frontAxleManufact: frontAxleManufact ?? _frontAxleManufact,
        lhFinalDriveSlNo: lhFinalDriveSlNo ?? _lhFinalDriveSlNo,
        lhFinalDriveManufacturer:
            lhFinalDriveManufacturer ?? _lhFinalDriveManufacturer,
        inductionMotorSlNo: inductionMotorSlNo ?? _inductionMotorSlNo,
        inductionMotorManuf: inductionMotorManuf ?? _inductionMotorManuf,
        trackDriveSlNo: trackDriveSlNo ?? _trackDriveSlNo,
        trackDriveManuf: trackDriveManuf ?? _trackDriveManuf,
        visChkExternalDamages: visChkExternalDamages ?? _visChkExternalDamages,
        visChkExtDam: visChkExtDam ?? _visChkExtDam,
        visChkExtDamImg: visChkExtDamImg ?? _visChkExtDamImg,
        visChkHydraulicAirLeakages:
            visChkHydraulicAirLeakages ?? _visChkHydraulicAirLeakages,
        visChkHydAir: visChkHydAir ?? _visChkHydAir,
        visHydAirDamImg: visHydAirDamImg ?? _visHydAirDamImg,
        visChkLubrication: visChkLubrication ?? _visChkLubrication,
        visChkLubRem: visChkLubRem ?? _visChkLubRem,
        visLubLosImg: visLubLosImg ?? _visLubLosImg,
        visChkOilLevels: visChkOilLevels ?? _visChkOilLevels,
        visChkOilRem: visChkOilRem ?? _visChkOilRem,
        visOilLevImg: visOilLevImg ?? _visOilLevImg,
        visChkWorkLoseingHders:
            visChkWorkLoseingHders ?? _visChkWorkLoseingHders,
        visChkWrkLos: visChkWrkLos ?? _visChkWrkLos,
        visHydWrkLosImg: visHydWrkLosImg ?? _visHydWrkLosImg,
        ecdCanBeCom: ecdCanBeCom ?? _ecdCanBeCom,
        saspdDoc: saspdDoc ?? _saspdDoc,
        failDeFailureInvestigation:
            failDeFailureInvestigation ?? _failDeFailureInvestigation,
        failDeFailureOnAccountOf:
            failDeFailureOnAccountOf ?? _failDeFailureOnAccountOf,
        fdSerId: fdSerId ?? _fdSerId,
        fdObvservation: fdObvservation ?? _fdObvservation,
        failDePartPertainsTo: failDePartPertainsTo ?? _failDePartPertainsTo,
        fdSubDiv: fdSubDiv ?? _fdSubDiv,
        vendorId: vendorId ?? _vendorId,
        failDeSystemAffected: failDeSystemAffected ?? _failDeSystemAffected,
        failDeTypeOfDamage: failDeTypeOfDamage ?? _failDeTypeOfDamage,
        failDePartsAffected: failDePartsAffected ?? _failDePartsAffected,
        source: source ?? _source,
        createdtime: createdtime ?? _createdtime,
        modifiedby: modifiedby ?? _modifiedby,
        creditnoteNo: creditnoteNo ?? _creditnoteNo,
        createdUserId: createdUserId ?? _createdUserId,
        modifiedtime: modifiedtime ?? _modifiedtime,
        actionTakenBlock: actionTakenBlock ?? _actionTakenBlock,
        eqStaAftActTaken: eqStaAftActTaken ?? _eqStaAftActTaken,
        genchkEngine: genchkEngine ?? _genchkEngine,
        genchkOilPressure: genchkOilPressure ?? _genchkOilPressure,
        genchkOilTemperature: genchkOilTemperature ?? _genchkOilTemperature,
        genchkCoolantTemperature:
            genchkCoolantTemperature ?? _genchkCoolantTemperature,
        genchkTransmission: genchkTransmission ?? _genchkTransmission,
        genchkBrake: genchkBrake ?? _genchkBrake,
        genchkAirPressure: genchkAirPressure ?? _genchkAirPressure,
        genchkElectrical: genchkElectrical ?? _genchkElectrical,
        genchkMotor: genchkMotor ?? _genchkMotor,
        genchkTransformer: genchkTransformer ?? _genchkTransformer,
        genchkFieldSwitch: genchkFieldSwitch ?? _genchkFieldSwitch,
        genchkAutoElectricalSystem:
            genchkAutoElectricalSystem ?? _genchkAutoElectricalSystem,
        genchkBatteryVoltage: genchkBatteryVoltage ?? _genchkBatteryVoltage,
        genchkHiVoltEleSystem: genchkHiVoltEleSystem ?? _genchkHiVoltEleSystem,
        genchkHydraulic: genchkHydraulic ?? _genchkHydraulic,
        genchkCylinders: genchkCylinders ?? _genchkCylinders,
        genchkOilCooler: genchkOilCooler ?? _genchkOilCooler,
        genchkPumps: genchkPumps ?? _genchkPumps,
        genchkSuspension: genchkSuspension ?? _genchkSuspension,
        genchkStructure: genchkStructure ?? _genchkStructure,
        genchkAirConditionn: genchkAirConditionn ?? _genchkAirConditionn,
        genchkAutoFireProtection:
            genchkAutoFireProtection ?? _genchkAutoFireProtection,
        genchkAutoLubrication: genchkAutoLubrication ?? _genchkAutoLubrication,
        badgeNo: badgeNo ?? _badgeNo,
        serEngName: serEngName ?? _serEngName,
        srDesignaion: srDesignaion ?? _srDesignaion,
        productid: productid ?? _productid,
        hdnSHAmount: hdnSHAmount ?? _hdnSHAmount,
        lineVendorId: lineVendorId ?? _lineVendorId,
        dteOfCommissing: dteOfCommissing ?? _dteOfCommissing,
        srEqWarrantyTerms: srEqWarrantyTerms ?? _srEqWarrantyTerms,
        warrantyEndDte: warrantyEndDte ?? _warrantyEndDte,
        srWarStatus: srWarStatus ?? _srWarStatus,
        typeOfConrt: typeOfConrt ?? _typeOfConrt,
        contEndDate: contEndDate ?? _contEndDate,
        contStartDate: contStartDate ?? _contStartDate,
        runYearCont: runYearCont ?? _runYearCont,
        srRegionalOffice: srRegionalOffice ?? _srRegionalOffice,
        distOffOrActCen: distOffOrActCen ?? _distOffOrActCen,
        lineItems: lineItems ?? _lineItems,
        actionTakenBlockSeo: actionTakenBlockSeo ?? _actionTakenBlockSeo,
      );

  ///gettter method

  String? get ticketId => _ticketId;
  String? get ticketDate => _ticketDate;
  String? get reportedBy => _reportedBy;
  String? get accountId => _accountId;
  String? get areaName => _areaName;
  String? get projectName => _projectName;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get hdnGrandTotal => _hdnGrandTotal;
  String? get srTicketType => _srTicketType;
  String? get hdnTaxType => _hdnTaxType;
  String? get failDeSapNotiType => _failDeSapNotiType;
  String? get hdnSubTotal => _hdnSubTotal;
  CurrencyId? get currencyId => _currencyId;
  String? get conversionRate => _conversionRate;
  String? get preTaxTotal => _preTaxTotal;
  String? get tags => _tags;
  String? get tdSymptoms => _tdSymptoms;
  String? get sadLineStatus => _sadLineStatus;
  String? get sadLineEvent => _sadLineEvent;
  String? get sadLineDnsoc => _sadLineDnsoc;
  String? get eqSrEquipModel => _eqSrEquipModel;
  String? get equipmentId => _equipmentId;
  String? get funcLocId => _funcLocId;
  String? get srEquipStatus => _srEquipStatus;
  String? get srHmr => _srHmr;
  String? get transSlNo => _transSlNo;
  String? get engSlNo => _engSlNo;
  String? get motorSlNo => _motorSlNo;
  String? get kilometerReading => _kilometerReading;
  String? get hmr => _hmr;
  String? get kiloDate => _kiloDate;
  List<Imagename>? get imagename => _imagename;
  String? get chassisSlNo => _chassisSlNo;
  String? get chassisManufacturer => _chassisManufacturer;
  String? get engineLhRhSlNo => _engineLhRhSlNo;
  String? get engineLhRhMfd => _engineLhRhMfd;
  String? get transmissionSlNo => _transmissionSlNo;
  String? get transmissionManufacturer => _transmissionManufacturer;
  String? get rearAxleSlNo => _rearAxleSlNo;
  String? get rearAxleManufacturer => _rearAxleManufacturer;
  String? get tandemAssemblySlNo => _tandemAssemblySlNo;
  String? get tandemAssemblyManufacturer => _tandemAssemblyManufacturer;
  String? get rhFinalDriveSlNo => _rhFinalDriveSlNo;
  String? get rhFinalDriveManu => _rhFinalDriveManu;
  String? get frontAxleSlNo => _frontAxleSlNo;
  String? get frontAxleManufact => _frontAxleManufact;
  String? get lhFinalDriveSlNo => _lhFinalDriveSlNo;
  String? get lhFinalDriveManufacturer => _lhFinalDriveManufacturer;
  String? get inductionMotorSlNo => _inductionMotorSlNo;
  String? get inductionMotorManuf => _inductionMotorManuf;
  String? get trackDriveSlNo => _trackDriveSlNo;
  String? get trackDriveManuf => _trackDriveManuf;
  String? get visChkExternalDamages => _visChkExternalDamages;
  String? get visChkExtDam => _visChkExtDam;
  List<VisChkExtDamImg>? get visChkExtDamImg => _visChkExtDamImg;
  String? get visChkHydraulicAirLeakages => _visChkHydraulicAirLeakages;
  String? get visChkHydAir => _visChkHydAir;
  List<VisHydAirDamImg>? get visHydAirDamImg => _visHydAirDamImg;
  String? get visChkLubrication => _visChkLubrication;
  String? get visChkLubRem => _visChkLubRem;
  List<VisLubLosImg>? get visLubLosImg => _visLubLosImg;
  String? get visChkOilLevels => _visChkOilLevels;
  String? get visChkOilRem => _visChkOilRem;
  List<VisOilLevImg>? get visOilLevImg => _visOilLevImg;
  String? get visChkWorkLoseingHders => _visChkWorkLoseingHders;
  String? get visChkWrkLos => _visChkWrkLos;
  List<VisHydWrkLosImg>? get visHydWrkLosImg => _visHydWrkLosImg;
  String? get ecdCanBeCom => _ecdCanBeCom;
  String? get saspdDoc => _saspdDoc;
  String? get failDeFailureInvestigation => _failDeFailureInvestigation;
  String? get failDeFailureOnAccountOf => _failDeFailureOnAccountOf;
  String? get fdSerId => _fdSerId;
  String? get fdObvservation => _fdObvservation;
  String? get failDePartPertainsTo => _failDePartPertainsTo;
  String? get fdSubDiv => _fdSubDiv;
  String? get vendorId => _vendorId;
  String? get failDeSystemAffected => _failDeSystemAffected;
  String? get failDeTypeOfDamage => _failDeTypeOfDamage;
  String? get failDePartsAffected => _failDePartsAffected;
  String? get source => _source;
  String? get createdtime => _createdtime;
  String? get modifiedby => _modifiedby;
  String? get creditnoteNo => _creditnoteNo;
  String? get createdUserId => _createdUserId;
  String? get modifiedtime => _modifiedtime;
  String? get actionTakenBlock => _actionTakenBlock;
  String? get eqStaAftActTaken => _eqStaAftActTaken;
  String? get genchkEngine => _genchkEngine;
  String? get genchkOilPressure => _genchkOilPressure;
  String? get genchkOilTemperature => _genchkOilTemperature;
  String? get genchkCoolantTemperature => _genchkCoolantTemperature;
  String? get genchkTransmission => _genchkTransmission;
  String? get genchkBrake => _genchkBrake;
  String? get genchkAirPressure => _genchkAirPressure;
  String? get genchkElectrical => _genchkElectrical;
  String? get genchkMotor => _genchkMotor;
  String? get genchkTransformer => _genchkTransformer;
  String? get genchkFieldSwitch => _genchkFieldSwitch;
  String? get genchkAutoElectricalSystem => _genchkAutoElectricalSystem;
  String? get genchkBatteryVoltage => _genchkBatteryVoltage;
  String? get genchkHiVoltEleSystem => _genchkHiVoltEleSystem;
  String? get genchkHydraulic => _genchkHydraulic;
  String? get genchkCylinders => _genchkCylinders;
  String? get genchkOilCooler => _genchkOilCooler;
  String? get genchkPumps => _genchkPumps;
  String? get genchkSuspension => _genchkSuspension;
  String? get genchkStructure => _genchkStructure;
  String? get genchkAirConditionn => _genchkAirConditionn;
  String? get genchkAutoFireProtection => _genchkAutoFireProtection;
  String? get genchkAutoLubrication => _genchkAutoLubrication;
  String? get badgeNo => _badgeNo;
  String? get serEngName => _serEngName;
  String? get srDesignaion => _srDesignaion;
  String? get productid => _productid;
  String? get hdnSHAmount => _hdnSHAmount;
  String? get lineVendorId => _lineVendorId;

  String? get srRegionalOffice => _srRegionalOffice;
  String? get distOffOrActCen => _distOffOrActCen;

  String? get dteOfCommissing => _dteOfCommissing;
  String? get srEqWarrantyTerms => _srEqWarrantyTerms;
  String? get warrantyEndDte => _warrantyEndDte;
  String? get srWarStatus => _srWarStatus;
  String? get typeOfConrt => _typeOfConrt;
  String? get contEndDate => _contEndDate;
  String? get contStartDate => _contStartDate;
  String? get runYearCont => _runYearCont;
  String? get actionTakenBlockSeo => _actionTakenBlockSeo;
  List<LineItems>? get lineItems => _lineItems;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ticket_id'] = _ticketId;
    map['ticket_date'] = _ticketDate;
    map['reported_by'] = _reportedBy;
    map['account_id'] = _accountId;
    map['area_name'] = _areaName;
    map['project_name'] = _projectName;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['hdnGrandTotal'] = _hdnGrandTotal;
    map['sr_ticket_type'] = _srTicketType;
    map['hdnTaxType'] = _hdnTaxType;
    map['fail_de_sap_noti_type'] = _failDeSapNotiType;
    map['hdnSubTotal'] = _hdnSubTotal;
    if (_currencyId != null) {
      map['currency_id'] = _currencyId?.toJson();
    }
    map['conversion_rate'] = _conversionRate;
    map['pre_tax_total'] = _preTaxTotal;
    map['tags'] = _tags;
    map['td_symptoms'] = _tdSymptoms;
    map['sad_line_status'] = _sadLineStatus;
    map['sad_line_event'] = _sadLineEvent;
    map['sad_line_dnsoc'] = _sadLineDnsoc;
    map['eq_sr_equip_model'] = _eqSrEquipModel;
    map['equipment_id'] = _equipmentId;
    map['func_loc_id'] = _funcLocId;
    map['sr_equip_status'] = _srEquipStatus;
    map['sr_hmr'] = _srHmr;
    map['trans_sl_no'] = _transSlNo;
    map['eng_sl_no'] = _engSlNo;
    map['motor_sl_no'] = _motorSlNo;
    map['kilometer_reading'] = _kilometerReading;
    map['hmr'] = _hmr;
    map['kilo_date'] = _kiloDate;
    if (_imagename != null) {
      map['imagename'] = _imagename?.map((v) => v.toJson()).toList();
    }

    map['dte_of_commissing'] = _dteOfCommissing;
    map['sr_eq_warranty_terms'] = _srEqWarrantyTerms;
    map['warranty_end_dte'] = _warrantyEndDte;
    map['sr_war_status'] = _srWarStatus;
    map['type_of_conrt'] = _typeOfConrt;
    map['cont_end_date'] = _contEndDate;
    map['cont_start_date'] = _contStartDate;
    map['run_year_cont'] = _runYearCont;
    map['action_taken_block_seo'] = _actionTakenBlockSeo;

    map['chassis_sl_no'] = _chassisSlNo;
    map['chassis_manufacturer'] = _chassisManufacturer;
    map['engine_lh_rh_sl_no'] = _engineLhRhSlNo;
    map['engine_lh_rh_mfd'] = _engineLhRhMfd;
    map['transmission_sl_no'] = _transmissionSlNo;
    map['transmission_manufacturer'] = _transmissionManufacturer;
    map['rear_axle_sl_no'] = _rearAxleSlNo;
    map['rear_axle_manufacturer'] = _rearAxleManufacturer;
    map['tandem_assembly_sl_no'] = _tandemAssemblySlNo;
    map['tandem_assembly_manufacturer'] = _tandemAssemblyManufacturer;
    map['rh_final_drive_sl_no'] = _rhFinalDriveSlNo;
    map['rh_final_drive_manu'] = _rhFinalDriveManu;
    map['front_axle_sl_no'] = _frontAxleSlNo;
    map['front_axle_manufact'] = _frontAxleManufact;
    map['lh_final_drive_sl_no'] = _lhFinalDriveSlNo;
    map['lh_final_drive_manufacturer'] = _lhFinalDriveManufacturer;
    map['induction_motor_sl_no'] = _inductionMotorSlNo;
    map['induction_motor_manuf'] = _inductionMotorManuf;
    map['track_drive_sl_no'] = _trackDriveSlNo;
    map['track_drive_manuf'] = _trackDriveManuf;
    map['vis_chk_external_damages'] = _visChkExternalDamages;
    map['vis_chk_ext_dam'] = _visChkExtDam;
    if (_visChkExtDamImg != null) {
      map['vis_chk_ext_dam_img'] =
          _visChkExtDamImg?.map((v) => v.toJson()).toList();
    }
    map['vis_chk_hydraulic_air_leakages'] = _visChkHydraulicAirLeakages;
    map['vis_chk_hyd_air'] = _visChkHydAir;
    if (_visHydAirDamImg != null) {
      map['vis_hyd_air_dam_img'] =
          _visHydAirDamImg?.map((v) => v.toJson()).toList();
    }
    map['vis_chk_lubrication'] = _visChkLubrication;
    map['vis_chk_lub_rem'] = _visChkLubRem;
    if (_visLubLosImg != null) {
      map['vis_lub_los_img'] = _visLubLosImg?.map((v) => v.toJson()).toList();
    }
    map['vis_chk_oil_levels'] = _visChkOilLevels;
    map['vis_chk_oil_rem'] = _visChkOilRem;
    if (_visOilLevImg != null) {
      map['vis_oil_lev_img'] = _visOilLevImg?.map((v) => v.toJson()).toList();
    }
    map['vis_chk_work_loseing_hders'] = _visChkWorkLoseingHders;
    map['vis_chk_wrk_los'] = _visChkWrkLos;
    if (_visHydWrkLosImg != null) {
      map['vis_hyd_wrk_los_img'] =
          _visHydWrkLosImg?.map((v) => v.toJson()).toList();
    }
    map['ecd_can_be_com'] = _ecdCanBeCom;
    map['saspd_doc'] = _saspdDoc;
    map['fail_de_failure_investigation'] = _failDeFailureInvestigation;
    map['fail_de_failure_on_account_of'] = _failDeFailureOnAccountOf;
    map['fd_ser_id'] = _fdSerId;
    map['fd_obvservation'] = _fdObvservation;
    map['fail_de_part_pertains_to'] = _failDePartPertainsTo;
    map['fd_sub_div'] = _fdSubDiv;
    map['vendor_id'] = _vendorId;
    map['fail_de_system_affected'] = _failDeSystemAffected;
    map['fail_de_type_of_damage'] = _failDeTypeOfDamage;
    map['fail_de_parts_affected'] = _failDePartsAffected;
    map['source'] = _source;
    map['createdtime'] = _createdtime;
    map['modifiedby'] = _modifiedby;
    map['creditnote_no'] = _creditnoteNo;
    map['created_user_id'] = _createdUserId;
    map['modifiedtime'] = _modifiedtime;
    map['action_taken_block'] = _actionTakenBlock;
    map['eq_sta_aft_act_taken'] = _eqStaAftActTaken;
    map['genchk_engine'] = _genchkEngine;
    map['genchk_oil_pressure'] = _genchkOilPressure;
    map['genchk_oil_temperature'] = _genchkOilTemperature;
    map['genchk_coolant_temperature'] = _genchkCoolantTemperature;
    map['genchk_transmission'] = _genchkTransmission;
    map['genchk_brake'] = _genchkBrake;
    map['genchk_air_pressure'] = _genchkAirPressure;
    map['genchk_electrical'] = _genchkElectrical;
    map['genchk_motor'] = _genchkMotor;
    map['genchk_transformer'] = _genchkTransformer;
    map['genchk_field_switch'] = _genchkFieldSwitch;
    map['genchk_auto_electrical_system'] = _genchkAutoElectricalSystem;
    map['genchk_battery_voltage'] = _genchkBatteryVoltage;
    map['genchk_hi_volt_ele_system'] = _genchkHiVoltEleSystem;
    map['genchk_hydraulic'] = _genchkHydraulic;
    map['genchk_cylinders'] = _genchkCylinders;
    map['genchk_oil_cooler'] = _genchkOilCooler;
    map['genchk_pumps'] = _genchkPumps;
    map['genchk_suspension'] = _genchkSuspension;
    map['genchk_structure'] = _genchkStructure;
    map['genchk_air_conditionn'] = _genchkAirConditionn;
    map['genchk_auto_fire_protection'] = _genchkAutoFireProtection;
    map['genchk_auto_lubrication'] = _genchkAutoLubrication;
    map['badge_no'] = _badgeNo;
    map['ser_eng_name'] = _serEngName;
    map['sr_designaion'] = _srDesignaion;
    map['productid'] = _productid;
    map['hdnS_H_Amount'] = _hdnSHAmount;
    map['line_vendor_id'] = _lineVendorId;

    map['sr_regional_office'] = _srRegionalOffice;
    map['dist_off_or_act_cen'] = _distOffOrActCen;

    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// urlpath : "http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257"
/// loadimage : ""

VisHydWrkLosImg visHydWrkLosImgFromJson(String str) =>
    VisHydWrkLosImg.fromJson(json.decode(str));
String visHydWrkLosImgToJson(VisHydWrkLosImg data) =>
    json.encode(data.toJson());

class VisHydWrkLosImg {
  VisHydWrkLosImg({
    String? urlpath,
    String? loadimage,
  }) {
    _urlpath = urlpath;
    _loadimage = loadimage;
  }

  VisHydWrkLosImg.fromJson(dynamic json) {
    _urlpath = json['urlpath'];
    _loadimage = json['loadimage'];
  }
  String? _urlpath;
  String? _loadimage;
  VisHydWrkLosImg copyWith({
    String? urlpath,
    String? loadimage,
  }) =>
      VisHydWrkLosImg(
        urlpath: urlpath ?? _urlpath,
        loadimage: loadimage ?? _loadimage,
      );
  String? get urlpath => _urlpath;
  String? get loadimage => _loadimage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['urlpath'] = _urlpath;
    map['loadimage'] = _loadimage;
    return map;
  }
}

/// urlpath : "http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257"
/// loadimage : ""

VisOilLevImg visOilLevImgFromJson(String str) =>
    VisOilLevImg.fromJson(json.decode(str));
String visOilLevImgToJson(VisOilLevImg data) => json.encode(data.toJson());

class VisOilLevImg {
  VisOilLevImg({
    String? urlpath,
    String? loadimage,
  }) {
    _urlpath = urlpath;
    _loadimage = loadimage;
  }

  VisOilLevImg.fromJson(dynamic json) {
    _urlpath = json['urlpath'];
    _loadimage = json['loadimage'];
  }
  String? _urlpath;
  String? _loadimage;
  VisOilLevImg copyWith({
    String? urlpath,
    String? loadimage,
  }) =>
      VisOilLevImg(
        urlpath: urlpath ?? _urlpath,
        loadimage: loadimage ?? _loadimage,
      );
  String? get urlpath => _urlpath;
  String? get loadimage => _loadimage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['urlpath'] = _urlpath;
    map['loadimage'] = _loadimage;
    return map;
  }
}

/// urlpath : "http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257"
/// loadimage : ""

VisLubLosImg visLubLosImgFromJson(String str) =>
    VisLubLosImg.fromJson(json.decode(str));
String visLubLosImgToJson(VisLubLosImg data) => json.encode(data.toJson());

class VisLubLosImg {
  VisLubLosImg({
    String? urlpath,
    String? loadimage,
  }) {
    _urlpath = urlpath;
    _loadimage = loadimage;
  }

  VisLubLosImg.fromJson(dynamic json) {
    _urlpath = json['urlpath'];
    _loadimage = json['loadimage'];
  }
  String? _urlpath;
  String? _loadimage;
  VisLubLosImg copyWith({
    String? urlpath,
    String? loadimage,
  }) =>
      VisLubLosImg(
        urlpath: urlpath ?? _urlpath,
        loadimage: loadimage ?? _loadimage,
      );
  String? get urlpath => _urlpath;
  String? get loadimage => _loadimage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['urlpath'] = _urlpath;
    map['loadimage'] = _loadimage;
    return map;
  }
}

/// urlpath : "http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257"
/// loadimage : ""

VisHydAirDamImg visHydAirDamImgFromJson(String str) =>
    VisHydAirDamImg.fromJson(json.decode(str));
String visHydAirDamImgToJson(VisHydAirDamImg data) =>
    json.encode(data.toJson());

class VisHydAirDamImg {
  VisHydAirDamImg({
    String? urlpath,
    String? loadimage,
  }) {
    _urlpath = urlpath;
    _loadimage = loadimage;
  }

  VisHydAirDamImg.fromJson(dynamic json) {
    _urlpath = json['urlpath'];
    _loadimage = json['loadimage'];
  }
  String? _urlpath;
  String? _loadimage;
  VisHydAirDamImg copyWith({
    String? urlpath,
    String? loadimage,
  }) =>
      VisHydAirDamImg(
        urlpath: urlpath ?? _urlpath,
        loadimage: loadimage ?? _loadimage,
      );
  String? get urlpath => _urlpath;
  String? get loadimage => _loadimage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['urlpath'] = _urlpath;
    map['loadimage'] = _loadimage;
    return map;
  }
}

/// urlpath : "http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257"
/// loadimage : ""

VisChkExtDamImg visChkExtDamImgFromJson(String str) =>
    VisChkExtDamImg.fromJson(json.decode(str));
String visChkExtDamImgToJson(VisChkExtDamImg data) =>
    json.encode(data.toJson());

class VisChkExtDamImg {
  VisChkExtDamImg({
    String? urlpath,
    String? loadimage,
  }) {
    _urlpath = urlpath;
    _loadimage = loadimage;
  }

  VisChkExtDamImg.fromJson(dynamic json) {
    _urlpath = json['urlpath'];
    _loadimage = json['loadimage'];
  }
  String? _urlpath;
  String? _loadimage;
  VisChkExtDamImg copyWith({
    String? urlpath,
    String? loadimage,
  }) =>
      VisChkExtDamImg(
        urlpath: urlpath ?? _urlpath,
        loadimage: loadimage ?? _loadimage,
      );
  String? get urlpath => _urlpath;
  String? get loadimage => _loadimage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['urlpath'] = _urlpath;
    map['loadimage'] = _loadimage;
    return map;
  }
}

/// urlpath : "http://3.7.71.53/beml/public.php?fid=88615&key=3229dd24e8d38eae8bbc7d03ae673257"
/// loadimage : ""

Imagename imagenameFromJson(String str) => Imagename.fromJson(json.decode(str));
String imagenameToJson(Imagename data) => json.encode(data.toJson());

class Imagename {
  Imagename({
    String? urlpath,
    String? loadimage,
  }) {
    _urlpath = urlpath;
    _loadimage = loadimage;
  }

  Imagename.fromJson(dynamic json) {
    _urlpath = json['urlpath'];
    _loadimage = json['loadimage'];
  }
  String? _urlpath;
  String? _loadimage;
  Imagename copyWith({
    String? urlpath,
    String? loadimage,
  }) =>
      Imagename(
        urlpath: urlpath ?? _urlpath,
        loadimage: loadimage ?? _loadimage,
      );
  String? get urlpath => _urlpath;
  String? get loadimage => _loadimage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['urlpath'] = _urlpath;
    map['loadimage'] = _loadimage;
    return map;
  }
}

/// value : "21x2"
/// label : "India, Rupees"

CurrencyId currencyIdFromJson(String str) =>
    CurrencyId.fromJson(json.decode(str));
String currencyIdToJson(CurrencyId data) => json.encode(data.toJson());

class CurrencyId {
  CurrencyId({
    String? value,
    String? label,
  }) {
    _value = value;
    _label = label;
  }

  CurrencyId.fromJson(dynamic json) {
    _value = json['value'];
    _label = json['label'];
  }
  String? _value;
  String? _label;
  CurrencyId copyWith({
    String? value,
    String? label,
  }) =>
      CurrencyId(
        value: value ?? _value,
        label: label ?? _label,
      );
  String? get value => _value;
  String? get label => _label;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = _value;
    map['label'] = _label;
    return map;
  }
}

//// line items

/// parent_id : "46xArray"
/// productid : "14x87552"
/// sequence_no : "1"
/// productname : "TEST SALES 01"
/// quantity : "20.000"
/// listprice : "0.00000000"
/// discount_percent : ""
/// discount_amount : ""
/// comment : "nothing"
/// description : ""
/// incrementondel : "0"
/// tax1 : ""
/// tax2 : ""
/// tax3 : ""
/// image : ""
/// purchase_cost : "0.00000000"
/// margin : "0.00000000"
/// dependency : "off"
/// duration : ""
/// billing_type : ""
/// netprice : ""
/// margin_percentage : ""
/// markup_percentage : ""
/// sr_action_one : "Repaired"
/// sr_action_two : ""
/// sr_replace_action : ""
/// remarks_by_eng : ""
/// part_recived : ""
/// action_by_service_man : ""
/// purpose_for_sending : ""
/// item_det_division : ""
/// remarks_by_ser_mang : ""
/// replaced_date : ""
/// date_of_submiss : ""
/// collect_immidiately : "0"
/// lid_manual_sl : ""
/// lid_rejected_qty : "0"
/// lid_remarks : ""
/// lid_po_qty : "0"
/// lid_store_locations : ""
/// lid_sto_del_date : ""
/// vendor_item : ""
/// fail_pa_sb_qty : ""
/// fail_pa_pa_status : ""
/// line_vendor_id : "0"
/// lid_msr : "BEML"
/// lid_line_event : ""
/// id : "33x1767"
/// product_name : "TEST SALES 01"
/// entity_type : "Products"
/// lineitem_id : "1767"
/// deleted : "0"

LineItems lineItemsFromJson(String str) => LineItems.fromJson(json.decode(str));
String lineItemsToJson(LineItems data) => json.encode(data.toJson());

class LineItems {
  LineItems({
    String? parentId,
    String? productid,
    String? sequenceNo,
    String? productname,
    String? quantity,
    String? listprice,
    String? discountPercent,
    String? discountAmount,
    String? comment,
    String? description,
    String? incrementondel,
    String? tax1,
    String? tax2,
    String? tax3,
    String? image,
    String? purchaseCost,
    String? margin,
    String? dependency,
    String? duration,
    String? billingType,
    String? netprice,
    String? marginPercentage,
    String? markupPercentage,
    String? srActionOne,
    String? srActionTwo,
    String? srReplaceAction,
    String? remarksByEng,
    String? partRecived,
    String? actionByServiceMan,
    String? purposeForSending,
    String? itemDetDivision,
    String? remarksBySerMang,
    String? replacedDate,
    String? dateOfSubmiss,
    String? collectImmidiately,
    String? lidManualSl,
    String? lidRejectedQty,
    String? lidRemarks,
    String? lidPoQty,
    String? lidStoreLocations,
    String? lidStoDelDate,
    String? vendorItem,
    String? failPaSbQty,
    String? failPaPaStatus,
    String? lineVendorId,
    String? lidMsr,
    String? lidLineEvent,
    String? id,
    String? productName,
    String? entityType,
    String? lineitemId,
    String? deleted,
  }) {
    _parentId = parentId;
    _productid = productid;
    _sequenceNo = sequenceNo;
    _productname = productname;
    _quantity = quantity;
    _listprice = listprice;
    _discountPercent = discountPercent;
    _discountAmount = discountAmount;
    _comment = comment;
    _description = description;
    _incrementondel = incrementondel;
    _tax1 = tax1;
    _tax2 = tax2;
    _tax3 = tax3;
    _image = image;
    _purchaseCost = purchaseCost;
    _margin = margin;
    _dependency = dependency;
    _duration = duration;
    _billingType = billingType;
    _netprice = netprice;
    _marginPercentage = marginPercentage;
    _markupPercentage = markupPercentage;
    _srActionOne = srActionOne;
    _srActionTwo = srActionTwo;
    _srReplaceAction = srReplaceAction;
    _remarksByEng = remarksByEng;
    _partRecived = partRecived;
    _actionByServiceMan = actionByServiceMan;
    _purposeForSending = purposeForSending;
    _itemDetDivision = itemDetDivision;
    _remarksBySerMang = remarksBySerMang;
    _replacedDate = replacedDate;
    _dateOfSubmiss = dateOfSubmiss;
    _collectImmidiately = collectImmidiately;
    _lidManualSl = lidManualSl;
    _lidRejectedQty = lidRejectedQty;
    _lidRemarks = lidRemarks;
    _lidPoQty = lidPoQty;
    _lidStoreLocations = lidStoreLocations;
    _lidStoDelDate = lidStoDelDate;
    _vendorItem = vendorItem;
    _failPaSbQty = failPaSbQty;
    _failPaPaStatus = failPaPaStatus;
    _lineVendorId = lineVendorId;
    _lidMsr = lidMsr;
    _lidLineEvent = lidLineEvent;
    _id = id;
    _productName = productName;
    _entityType = entityType;
    _lineitemId = lineitemId;
    _deleted = deleted;
  }

  LineItems.fromJson(dynamic json) {
    _parentId = json['parent_id'];
    _productid = json['productid'];
    _sequenceNo = json['sequence_no'];
    _productname = json['productname'];
    _quantity = json['quantity'];
    _listprice = json['listprice'];
    _discountPercent = json['discount_percent'];
    _discountAmount = json['discount_amount'];
    _comment = json['comment'];
    _description = json['description'];
    _incrementondel = json['incrementondel'];
    _tax1 = json['tax1'];
    _tax2 = json['tax2'];
    _tax3 = json['tax3'];
    _image = json['image'];
    _purchaseCost = json['purchase_cost'];
    _margin = json['margin'];
    _dependency = json['dependency'];
    _duration = json['duration'];
    _billingType = json['billing_type'];
    _netprice = json['netprice'];
    _marginPercentage = json['margin_percentage'];
    _markupPercentage = json['markup_percentage'];
    _srActionOne = json['sr_action_one'];
    _srActionTwo = json['sr_action_two'];
    _srReplaceAction = json['sr_replace_action'];
    _remarksByEng = json['remarks_by_eng'];
    _partRecived = json['part_recived'];
    _actionByServiceMan = json['action_by_service_man'];
    _purposeForSending = json['purpose_for_sending'];
    _itemDetDivision = json['item_det_division'];
    _remarksBySerMang = json['remarks_by_ser_mang'];
    _replacedDate = json['replaced_date'];
    _dateOfSubmiss = json['date_of_submiss'];
    _collectImmidiately = json['collect_immidiately'];
    _lidManualSl = json['lid_manual_sl'];
    _lidRejectedQty = json['lid_rejected_qty'];
    _lidRemarks = json['lid_remarks'];
    _lidPoQty = json['lid_po_qty'];
    _lidStoreLocations = json['lid_store_locations'];
    _lidStoDelDate = json['lid_sto_del_date'];
    _vendorItem = json['vendor_item'];
    _failPaSbQty = json['fail_pa_sb_qty'];
    _failPaPaStatus = json['fail_pa_pa_status'];
    _lineVendorId = json['line_vendor_id'];
    _lidMsr = json['lid_msr'];
    _lidLineEvent = json['lid_line_event'];
    _id = json['id'];
    _productName = json['product_name'];
    _entityType = json['entity_type'];
    _lineitemId = json['lineitem_id'];
    _deleted = json['deleted'];
  }

  String? _parentId;
  String? _productid;
  String? _sequenceNo;
  String? _productname;
  String? _quantity;
  String? _listprice;
  String? _discountPercent;
  String? _discountAmount;
  String? _comment;
  String? _description;
  String? _incrementondel;
  String? _tax1;
  String? _tax2;
  String? _tax3;
  String? _image;
  String? _purchaseCost;
  String? _margin;
  String? _dependency;
  String? _duration;
  String? _billingType;
  String? _netprice;
  String? _marginPercentage;
  String? _markupPercentage;
  String? _srActionOne;
  String? _srActionTwo;
  String? _srReplaceAction;
  String? _remarksByEng;
  String? _partRecived;
  String? _actionByServiceMan;
  String? _purposeForSending;
  String? _itemDetDivision;
  String? _remarksBySerMang;
  String? _replacedDate;
  String? _dateOfSubmiss;
  String? _collectImmidiately;
  String? _lidManualSl;
  String? _lidRejectedQty;
  String? _lidRemarks;
  String? _lidPoQty;
  String? _lidStoreLocations;
  String? _lidStoDelDate;
  String? _vendorItem;
  String? _failPaSbQty;
  String? _failPaPaStatus;
  String? _lineVendorId;
  String? _lidMsr;
  String? _lidLineEvent;
  String? _id;
  String? _productName;
  String? _entityType;
  String? _lineitemId;
  String? _deleted;

  LineItems copyWith({
    String? parentId,
    String? productid,
    String? sequenceNo,
    String? productname,
    String? quantity,
    String? listprice,
    String? discountPercent,
    String? discountAmount,
    String? comment,
    String? description,
    String? incrementondel,
    String? tax1,
    String? tax2,
    String? tax3,
    String? image,
    String? purchaseCost,
    String? margin,
    String? dependency,
    String? duration,
    String? billingType,
    String? netprice,
    String? marginPercentage,
    String? markupPercentage,
    String? srActionOne,
    String? srActionTwo,
    String? srReplaceAction,
    String? remarksByEng,
    String? partRecived,
    String? actionByServiceMan,
    String? purposeForSending,
    String? itemDetDivision,
    String? remarksBySerMang,
    String? replacedDate,
    String? dateOfSubmiss,
    String? collectImmidiately,
    String? lidManualSl,
    String? lidRejectedQty,
    String? lidRemarks,
    String? lidPoQty,
    String? lidStoreLocations,
    String? lidStoDelDate,
    String? vendorItem,
    String? failPaSbQty,
    String? failPaPaStatus,
    String? lineVendorId,
    String? lidMsr,
    String? lidLineEvent,
    String? id,
    String? productName,
    String? entityType,
    String? lineitemId,
    String? deleted,
  }) =>
      LineItems(
        parentId: parentId ?? _parentId,
        productid: productid ?? _productid,
        sequenceNo: sequenceNo ?? _sequenceNo,
        productname: productname ?? _productname,
        quantity: quantity ?? _quantity,
        listprice: listprice ?? _listprice,
        discountPercent: discountPercent ?? _discountPercent,
        discountAmount: discountAmount ?? _discountAmount,
        comment: comment ?? _comment,
        description: description ?? _description,
        incrementondel: incrementondel ?? _incrementondel,
        tax1: tax1 ?? _tax1,
        tax2: tax2 ?? _tax2,
        tax3: tax3 ?? _tax3,
        image: image ?? _image,
        purchaseCost: purchaseCost ?? _purchaseCost,
        margin: margin ?? _margin,
        dependency: dependency ?? _dependency,
        duration: duration ?? _duration,
        billingType: billingType ?? _billingType,
        netprice: netprice ?? _netprice,
        marginPercentage: marginPercentage ?? _marginPercentage,
        markupPercentage: markupPercentage ?? _markupPercentage,
        srActionOne: srActionOne ?? _srActionOne,
        srActionTwo: srActionTwo ?? _srActionTwo,
        srReplaceAction: srReplaceAction ?? _srReplaceAction,
        remarksByEng: remarksByEng ?? _remarksByEng,
        partRecived: partRecived ?? _partRecived,
        actionByServiceMan: actionByServiceMan ?? _actionByServiceMan,
        purposeForSending: purposeForSending ?? _purposeForSending,
        itemDetDivision: itemDetDivision ?? _itemDetDivision,
        remarksBySerMang: remarksBySerMang ?? _remarksBySerMang,
        replacedDate: replacedDate ?? _replacedDate,
        dateOfSubmiss: dateOfSubmiss ?? _dateOfSubmiss,
        collectImmidiately: collectImmidiately ?? _collectImmidiately,
        lidManualSl: lidManualSl ?? _lidManualSl,
        lidRejectedQty: lidRejectedQty ?? _lidRejectedQty,
        lidRemarks: lidRemarks ?? _lidRemarks,
        lidPoQty: lidPoQty ?? _lidPoQty,
        lidStoreLocations: lidStoreLocations ?? _lidStoreLocations,
        lidStoDelDate: lidStoDelDate ?? _lidStoDelDate,
        vendorItem: vendorItem ?? _vendorItem,
        failPaSbQty: failPaSbQty ?? _failPaSbQty,
        failPaPaStatus: failPaPaStatus ?? _failPaPaStatus,
        lineVendorId: lineVendorId ?? _lineVendorId,
        lidMsr: lidMsr ?? _lidMsr,
        lidLineEvent: lidLineEvent ?? _lidLineEvent,
        id: id ?? _id,
        productName: productName ?? _productName,
        entityType: entityType ?? _entityType,
        lineitemId: lineitemId ?? _lineitemId,
        deleted: deleted ?? _deleted,
      );

  String? get parentId => _parentId;

  String? get productid => _productid;

  String? get sequenceNo => _sequenceNo;

  String? get productname => _productname;

  String? get quantity => _quantity;

  String? get listprice => _listprice;

  String? get discountPercent => _discountPercent;

  String? get discountAmount => _discountAmount;

  String? get comment => _comment;

  String? get description => _description;

  String? get incrementondel => _incrementondel;

  String? get tax1 => _tax1;

  String? get tax2 => _tax2;

  String? get tax3 => _tax3;

  String? get image => _image;

  String? get purchaseCost => _purchaseCost;

  String? get margin => _margin;

  String? get dependency => _dependency;

  String? get duration => _duration;

  String? get billingType => _billingType;

  String? get netprice => _netprice;

  String? get marginPercentage => _marginPercentage;

  String? get markupPercentage => _markupPercentage;

  String? get srActionOne => _srActionOne;

  String? get srActionTwo => _srActionTwo;

  String? get srReplaceAction => _srReplaceAction;

  String? get remarksByEng => _remarksByEng;

  String? get partRecived => _partRecived;

  String? get actionByServiceMan => _actionByServiceMan;

  String? get purposeForSending => _purposeForSending;

  String? get itemDetDivision => _itemDetDivision;

  String? get remarksBySerMang => _remarksBySerMang;

  String? get replacedDate => _replacedDate;

  String? get dateOfSubmiss => _dateOfSubmiss;

  String? get collectImmidiately => _collectImmidiately;

  String? get lidManualSl => _lidManualSl;

  String? get lidRejectedQty => _lidRejectedQty;

  String? get lidRemarks => _lidRemarks;

  String? get lidPoQty => _lidPoQty;

  String? get lidStoreLocations => _lidStoreLocations;

  String? get lidStoDelDate => _lidStoDelDate;

  String? get vendorItem => _vendorItem;

  String? get failPaSbQty => _failPaSbQty;

  String? get failPaPaStatus => _failPaPaStatus;

  String? get lineVendorId => _lineVendorId;

  String? get lidMsr => _lidMsr;

  String? get lidLineEvent => _lidLineEvent;

  String? get id => _id;

  String? get productName => _productName;

  String? get entityType => _entityType;

  String? get lineitemId => _lineitemId;

  String? get deleted => _deleted;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['parent_id'] = _parentId;
    map['productid'] = _productid;
    map['sequence_no'] = _sequenceNo;
    map['productname'] = _productname;
    map['quantity'] = _quantity;
    map['listprice'] = _listprice;
    map['discount_percent'] = _discountPercent;
    map['discount_amount'] = _discountAmount;
    map['comment'] = _comment;
    map['description'] = _description;
    map['incrementondel'] = _incrementondel;
    map['tax1'] = _tax1;
    map['tax2'] = _tax2;
    map['tax3'] = _tax3;
    map['image'] = _image;
    map['purchase_cost'] = _purchaseCost;
    map['margin'] = _margin;
    map['dependency'] = _dependency;
    map['duration'] = _duration;
    map['billing_type'] = _billingType;
    map['netprice'] = _netprice;
    map['margin_percentage'] = _marginPercentage;
    map['markup_percentage'] = _markupPercentage;
    map['sr_action_one'] = _srActionOne;
    map['sr_action_two'] = _srActionTwo;
    map['sr_replace_action'] = _srReplaceAction;
    map['remarks_by_eng'] = _remarksByEng;
    map['part_recived'] = _partRecived;
    map['action_by_service_man'] = _actionByServiceMan;
    map['purpose_for_sending'] = _purposeForSending;
    map['item_det_division'] = _itemDetDivision;
    map['remarks_by_ser_mang'] = _remarksBySerMang;
    map['replaced_date'] = _replacedDate;
    map['date_of_submiss'] = _dateOfSubmiss;
    map['collect_immidiately'] = _collectImmidiately;
    map['lid_manual_sl'] = _lidManualSl;
    map['lid_rejected_qty'] = _lidRejectedQty;
    map['lid_remarks'] = _lidRemarks;
    map['lid_po_qty'] = _lidPoQty;
    map['lid_store_locations'] = _lidStoreLocations;
    map['lid_sto_del_date'] = _lidStoDelDate;
    map['vendor_item'] = _vendorItem;
    map['fail_pa_sb_qty'] = _failPaSbQty;
    map['fail_pa_pa_status'] = _failPaPaStatus;
    map['line_vendor_id'] = _lineVendorId;
    map['lid_msr'] = _lidMsr;
    map['lid_line_event'] = _lidLineEvent;
    map['id'] = _id;
    map['product_name'] = _productName;
    map['entity_type'] = _entityType;
    map['lineitem_id'] = _lineitemId;
    map['deleted'] = _deleted;
    return map;
  }
}
