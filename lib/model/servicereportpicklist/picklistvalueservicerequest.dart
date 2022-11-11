import 'dart:convert';

/// statuscode : 1
/// data : {"hdnTaxType":[{"hdnTaxType":"individual"},{"hdnTaxType":"group"}],"sr_system_affected":[{"sr_system_affected":"Machine tools Electrical System____Solenoid coils"}],"sr_war_status":[{"sr_war_status":"Warranty"},{"sr_war_status":"Contract"},{"sr_war_status":"Outside Warranty"}],"sr_ticket_type":[{"sr_ticket_type":"PRE-DELIVERY"},{"sr_ticket_type":"ERECTION AND COMMISSIONING"},{"sr_ticket_type":"PERIODICAL MAINTENANCE"},{"sr_ticket_type":"PREVENTIVE MAINTENANCE"},{"sr_ticket_type":"BREAKDOWN"},{"sr_ticket_type":"GENERAL INSPECTION"},{"sr_ticket_type":"INSTALLATION OF SUB ASSEMBLY FITMENT"},{"sr_ticket_type":"SERVICE FOR SPARES PURCHASED"},{"sr_ticket_type":"DESIGN MODIFICATION"}],"sr_action_one":[{"sr_action_one":"To be replaced"},{"sr_action_one":"Replaced"},{"sr_action_one":"To be Repaired"},{"sr_action_one":"Repaired"}],"sr_action_two":[{"sr_action_two":"Required"},{"sr_action_two":"Not Required"}],"sr_replace_action":[{"sr_replace_action":"From BEML Stock"},{"sr_replace_action":"From Vendor Stock"},{"sr_replace_action":"From Customer Stock"}],"sr_equip_status":[{"sr_equip_status":"operational"},{"sr_equip_status":"in limited operation"},{"sr_equip_status":"out of order"}],"type_of_conrt":[{"type_of_conrt":"GPCC"},{"type_of_conrt":"COSTCAP"},{"type_of_conrt":"FMC"},{"type_of_conrt":"MARC"},{"type_of_conrt":"AMC"}],"genchk_oil_pressure":[{"genchk_oil_pressure":"OK"},{"genchk_oil_pressure":"NOT OK"}],"genchk_oil_temperature":[{"genchk_oil_temperature":"OK"},{"genchk_oil_temperature":"NOT OK"}],"genchk_coolant_temperature":[{"genchk_coolant_temperature":"OK"},{"genchk_coolant_temperature":"NOT OK"}],"genchk_transmission":[{"genchk_transmission":"OK"},{"genchk_transmission":"NOT OK"},{"genchk_transmission":"NA"}],"genchk_brake":[{"genchk_brake":"OK"},{"genchk_brake":"NOT OK"}],"genchk_air_pressure":[{"genchk_air_pressure":"OK"},{"genchk_air_pressure":"NOT OK"},{"genchk_air_pressure":"NA"}],"genchk_electrical":[{"genchk_electrical":"OK"},{"genchk_electrical":"NOT OK"},{"genchk_electrical":"NA"}],"genchk_motor":[{"genchk_motor":"OK"},{"genchk_motor":"NOT OK"},{"genchk_motor":"NA"}],"genchk_transformer":[{"genchk_transformer":"OK"},{"genchk_transformer":"NOT OK"},{"genchk_transformer":"NA"}],"genchk_field_switch":[{"genchk_field_switch":"OK"},{"genchk_field_switch":"NOT OK"},{"genchk_field_switch":"NA"}],"genchk_auto_electrical_system":[{"genchk_auto_electrical_system":"OK"},{"genchk_auto_electrical_system":"NOT OK"},{"genchk_auto_electrical_system":"NA"}],"genchk_battery_voltage":[{"genchk_battery_voltage":"OK"},{"genchk_battery_voltage":"NOT OK"},{"genchk_battery_voltage":"NA"}],"genchk_hydraulic":[{"genchk_hydraulic":"OK"},{"genchk_hydraulic":"NOT OK"},{"genchk_hydraulic":"NA"}],"genchk_cylinders":[{"genchk_cylinders":"OK"},{"genchk_cylinders":"NOT OK"},{"genchk_cylinders":"NA"}],"genchk_suspension":[{"genchk_suspension":"OK"},{"genchk_suspension":"NOT OK"},{"genchk_suspension":"NA"}],"genchk_pumps":[{"genchk_pumps":"OK"},{"genchk_pumps":"NOT OK"},{"genchk_pumps":"NA"}],"genchk_oil_cooler":[{"genchk_oil_cooler":"OK"},{"genchk_oil_cooler":"NOT OK"},{"genchk_oil_cooler":"NA"}],"genchk_structure":[{"genchk_structure":"OK"},{"genchk_structure":"NOT OK"}],"genchk_auto_lubrication":[{"genchk_auto_lubrication":"OK"},{"genchk_auto_lubrication":"NOT OK"},{"genchk_auto_lubrication":"NA"}],"genchk_air_conditionn":[{"genchk_air_conditionn":"OK"},{"genchk_air_conditionn":"NOT OK"},{"genchk_air_conditionn":"NA"}],"genchk_auto_fire_protection":[{"genchk_auto_fire_protection":"OK"},{"genchk_auto_fire_protection":"NOT OK"},{"genchk_auto_fire_protection":"NA"}],"genchk_hi_volt_ele_system":[{"genchk_hi_volt_ele_system":"OK"},{"genchk_hi_volt_ele_system":"NOT OK"},{"genchk_hi_volt_ele_system":"NA"}],"fail_de_failure_on_account_of":[{"fail_de_failure_on_account_of":"BEML"},{"fail_de_failure_on_account_of":"CUSTOMER"}],"fail_de_part_pertains_to":[{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"}],"fail_de_sap_noti_type":[{"fail_de_sap_noti_type":"ZW"},{"fail_de_sap_noti_type":"ZJ"},{"fail_de_sap_noti_type":"ZC"},{"fail_de_sap_noti_type":"ZF"},{"fail_de_sap_noti_type":"ZH"},{"fail_de_sap_noti_type":"ZO"},{"fail_de_sap_noti_type":"ZE"},{"fail_de_sap_noti_type":"ZB"},{"fail_de_sap_noti_type":"Z3"},{"fail_de_sap_noti_type":"Z2"},{"fail_de_sap_noti_type":"Z4"}],"fail_de_failure_investigation":[{"fail_de_failure_investigation":"Completed"},{"fail_de_failure_investigation":"In-process"},{"fail_de_failure_investigation":"On Hold"}],"fd_sub_div":[{"fd_sub_div":"Engine"},{"fd_sub_div":"Truck"},{"fd_sub_div":"H&P"},{"fd_sub_div":"EM"}],"eq_sr_equip_model":[{"eq_sr_equip_model":"BH100"},{"eq_sr_equip_model":"BWS70"},{"eq_sr_equip_model":"BG825"},{"eq_sr_equip_model":"BH100"},{"eq_sr_equip_model":"BWS70"},{"eq_sr_equip_model":"BG825"}],"fd_eq_sta_bsr":[{"fd_eq_sta_bsr":"operational"},{"fd_eq_sta_bsr":"in limited operation"},{"fd_eq_sta_bsr":"out of order"}],"sr_designaion":[{"sr_designaion":"Chairman & Managing Director"},{"sr_designaion":"Director(Mining & Construction Business)"},{"sr_designaion":"Director(Defence Business)"},{"sr_designaion":"Director"},{"sr_designaion":"Executive Director"},{"sr_designaion":"Executive Director"},{"sr_designaion":"General Manager"},{"sr_designaion":"Deputy General Manager"},{"sr_designaion":"Assistant General Manager"},{"sr_designaion":"Senior Manager"},{"sr_designaion":"Manager"},{"sr_designaion":"Assistant Manager"},{"sr_designaion":"Engineer"},{"sr_designaion":"Assistant Engineer"},{"sr_designaion":"Senior Supervisor-S-6"},{"sr_designaion":"Senior Supervisor-S-5"},{"sr_designaion":"Senior Supervisor-S-4"},{"sr_designaion":"Supervisor- S-3"},{"sr_designaion":"Joint Supervisior-S-2"},{"sr_designaion":"Deputy Supervisor-S-1"},{"sr_designaion":"Master Skilled Technician-Gr.-E"},{"sr_designaion":"High Skilled Technician-Gr.-D"},{"sr_designaion":"Senior Technician-Gr.-C"},{"sr_designaion":"Technician-Gr.-B"},{"sr_designaion":"Helper- Gr-A"}],"sr_regional_office":[{"sr_regional_office":"Neyveli"},{"sr_regional_office":"Sambalpur"},{"sr_regional_office":"Kolkata"},{"sr_regional_office":"Dhanbad"},{"sr_regional_office":"Bangalore"},{"sr_regional_office":"Hyderabad"},{"sr_regional_office":"New Delhi"},{"sr_regional_office":"Nagpur"}],"dist_off_or_act_cen":[{"dist_off_or_act_cen":"Neyveli"},{"dist_off_or_act_cen":"Sambalpur"},{"dist_off_or_act_cen":"Kolkata"},{"dist_off_or_act_cen":"Dhanbad"},{"dist_off_or_act_cen":"Bangalore"},{"dist_off_or_act_cen":"Hyderabad"},{"dist_off_or_act_cen":"New Delhi"},{"dist_off_or_act_cen":"Nagpur"}],"eq_sta_aft_act_taken":[{"eq_sta_aft_act_taken":"operational"},{"eq_sta_aft_act_taken":"in limited operation"},{"eq_sta_aft_act_taken":"out of order"}],"off_on_account_of":[{"off_on_account_of":"BEML"},{"off_on_account_of":"CUSTOMER"}],"fail_de_type_of_damage":[{"fail_de_type_of_damage":"Beml CS cause Codes_._Normal"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Lubrication Inadequate"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Material Deficiency"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Oil Contamination"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Air Leakage"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Operaion Faulty"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Manufacturing Defect"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Misalignment"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Over Heating"},{"fail_de_type_of_damage":"Maintenance Causes_._Cause 1"},{"fail_de_type_of_damage":"Maintenance Causes_._Cause 2"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Design"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Development"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Engineering/design"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Procurement"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Material"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production planning"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production control"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production/machine"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production/personnel"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Quality inspection"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Inspection planning"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Implementing inspection"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Storage"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Distribution"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Sales"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Shipping"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Service"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Maintenance"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Repair"},{"fail_de_type_of_damage":"causes_._Lubrication Inadequate"},{"fail_de_type_of_damage":"causes_._Material Deficiency"},{"fail_de_type_of_damage":"causes_._Oil Contamination"},{"fail_de_type_of_damage":"causes_._Air Leakage"},{"fail_de_type_of_damage":"causes_._Manufacturing Defect"},{"fail_de_type_of_damage":"causes_._Misalignment"},{"fail_de_type_of_damage":"causes_._Over Heating"},{"fail_de_type_of_damage":"Test cause_._cause1"},{"fail_de_type_of_damage":"Test cause_._cause2"}],"fail_de_system_affected":[{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 351"}],"fail_de_parts_affected":[{"fail_de_parts_affected":"Long Texts for Claim_._Long text for cause"},{"fail_de_parts_affected":"Long Texts for Claim_._Operation long text"},{"fail_de_parts_affected":"Long Texts for Claim_._Long text for consequences"},{"fail_de_parts_affected":"Long Texts for Claim_._Long text for evaluation"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Engine"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Fuel Systems"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Torque Converter"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Drive Line"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Final Drive"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Hydraulic System"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._INITIAL 50 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._INITIAL 250 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 250 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 500 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 1000 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 2000 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._ENGINE MAINTENANCE"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._CONDITION BASED MONITORING"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._PREVENTIVE MAINTENANCE"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._OTHERS"},{"fail_de_parts_affected":"ENGINE FAILURE_._BLOCK BURST"},{"fail_de_parts_affected":"ENGINE FAILURE_._VALVE DROP"},{"fail_de_parts_affected":"ENGINE FAILURE_._INJECTOR FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._FIP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._FEED PUMP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._WATER PUMP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._COOLING SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._EXHAUST SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._LUBRICATION SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._CRANK SHAFT FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._CONNECTING ROD FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._THRUST WASHER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._MUFFLER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._TURBO CHARGER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._AIR FILTER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._ENGINE BLOW-BY"},{"fail_de_parts_affected":"ENGINE FAILURE_._FUEL SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._LEAKAGES"},{"fail_de_parts_affected":"ENGINE FAILURE_._OTHERS"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._SHAFT SEAL FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._BEARING FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._TURBINE/IMPELLER FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._STATOR FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._SCAVENGING PUMP"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._RELIEF/REGULATOR VALVE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._OUTPUT FLANGE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._OTHERS"},{"fail_de_parts_affected":"TRANSMISSION_._INPUT/OUTPUT SHAFT SEAL FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._CONTROL VALVE FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._CLUTCH SEAL FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PISTON JAM"},{"fail_de_parts_affected":"TRANSMISSION_._BEARING FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSFER CASE FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PLANETARY FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._RING GEAR FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PCMV FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION CONTROLLER FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._SENSOR FAILURES"},{"fail_de_parts_affected":"TRANSMISSION_._FAULTY WIRING"},{"fail_de_parts_affected":"TRANSMISSION_._OTHERS"},{"fail_de_parts_affected":"STEERING_._STEERING CLUTCH"},{"fail_de_parts_affected":"STEERING_._HUB/CAGE FAILURE"},{"fail_de_parts_affected":"STEERING_._SEAL LEAKAGE"},{"fail_de_parts_affected":"STEERING_._S-PIPE LEAKAGE"},{"fail_de_parts_affected":"STEERING_._STEERING CONTROL VALVE"},{"fail_de_parts_affected":"STEERING_._PROPORTIONAL VALVE"},{"fail_de_parts_affected":"STEERING_._STEERING LINKAGE"},{"fail_de_parts_affected":"STEERING_._OTHERS"},{"fail_de_parts_affected":"BRAKE_._BRAKE BAND FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE BOOSTER FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE VALVE FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE LINKAGE FAILURE"},{"fail_de_parts_affected":"BRAKE_._OTHERS"},{"fail_de_parts_affected":"Machine tool damage Electrical_._Motor burnt"},{"fail_de_parts_affected":"Machine tool damage Electrical_._Contactor flash /jam"},{"fail_de_parts_affected":"Machine tool damage Electrical_._Cable burnt"},{"fail_de_parts_affected":"Machine tool damage Electrical_._Transformer burnt"},{"fail_de_parts_affected":"Machine tool damage Electrical_._Fuse blowing continously"},{"fail_de_parts_affected":"Machine tool damage Mechanical_._Hose burst"},{"fail_de_parts_affected":"Machine tool damage Mechanical_._Oil leakage"},{"fail_de_parts_affected":"Machine tool damage Mechanical_._Mechanical part broken"},{"fail_de_parts_affected":"Machine tool damage Mechanical_._Mechanical Jam"},{"fail_de_parts_affected":"Machine tool damage Mechanical_._Bearing jammed"},{"fail_de_parts_affected":"Machine tool damage Electronics_._Transformer burnt"},{"fail_de_parts_affected":"Machine tool damage Electronics_._SMPS burnt"},{"fail_de_parts_affected":"Machine tool damage Electronics_._PCB burnt"},{"fail_de_parts_affected":"Machine tool damage Electronics_._Cable short"},{"fail_de_parts_affected":"Machine tool damage Electronics_._Transistor Module failing continously"},{"fail_de_parts_affected":"Machine tool damage Electronics_._Display burnt"},{"fail_de_parts_affected":"Machine tool damage Electronics_._Cable Open"},{"fail_de_parts_affected":"Maintenance Damage 1_._Damage 1"},{"fail_de_parts_affected":"Maintenance Damage 1_._Damage 2"},{"fail_de_parts_affected":"Maintenance Damage 2_._Damage A"},{"fail_de_parts_affected":"Maintenance Damage 2_._Damage B"}],"tck_det_purpose":[{"tck_det_purpose":"REHABILITATION"},{"tck_det_purpose":"OVERHAUL"},{"tck_det_purpose":"UPGRADTION"},{"tck_det_purpose":"PARTS REQUIREMNT"},{"tck_det_purpose":"EQUIPMENT HEALTH CHECK UP"},{"tck_det_purpose":"WARRANTY CLAIM FOR SUB ASSEMBLY / OTHER SPARE PARTS"},{"tck_det_purpose":"INSPECTION OF REJECTED SPARES"}],"wt_war_start_cond":[{"wt_war_start_cond":"Date of Receipt at Customer site"},{"wt_war_start_cond":"Date of commissioning/Fitment"},{"wt_war_start_cond":"Date of Invoice/Billing"}],"mt_major_aggrts":[{"mt_major_aggrts":"Engine"},{"mt_major_aggrts":"Transmission"},{"mt_major_aggrts":"Final Drive"},{"mt_major_aggrts":"Differential"},{"mt_major_aggrts":"Motor"},{"mt_major_aggrts":"Others"}],"mt_pdical_maint_type":[{"mt_pdical_maint_type":"Every 250 hrs"},{"mt_pdical_maint_type":"Every 500 Hrs"},{"mt_pdical_maint_type":"Every 750 Hrs"},{"mt_pdical_maint_type":"Every 1000 Hrs"},{"mt_pdical_maint_type":"Every 1250 Hrs"},{"mt_pdical_maint_type":"Every 1500 Hrs"},{"mt_pdical_maint_type":"Every 2000 Hrs"},{"mt_pdical_maint_type":"Every 1000 KM"}],"mod_of_sub_ambly":[{"mod_of_sub_ambly":"EG Engine"},{"mod_of_sub_ambly":"PCMV Transmission"},{"mod_of_sub_ambly":"Regular"},{"mod_of_sub_ambly":"ATGEMS Transmission"},{"mod_of_sub_ambly":"ALLISION Transmission"},{"mod_of_sub_ambly":"AVTEC Transmission"},{"mod_of_sub_ambly":"EG Transmission"},{"mod_of_sub_ambly":"Not Applicable"}],"war_claim_dte":[{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"},{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"}],"sad_line_status":[{"sad_line_status":"Damage"},{"sad_line_status":"Malfunctioning"},{"sad_line_status":"Not Working"},{"sad_line_status":"Shortage"}],"sad_line_event":[{"sad_line_event":"During Transit"},{"sad_line_event":"During Installation/Commissioning"},{"sad_line_event":"Missing"},{"sad_line_event":"Short shipped from division"},{"sad_line_event":"Theft under BEML custody"},{"sad_line_event":"Theft under Customer custody"}],"vendor_item":[{"vendor_item":"AFDSS"},{"vendor_item":"Auto Lube"},{"vendor_item":"Engine"},{"vendor_item":"AC"}],"sad_war_start_con":[{"sad_war_start_con":"Date of Receipt at Customer site"},{"sad_war_start_con":"Date of commissioning/Fitment"},{"sad_war_start_con":"Date of Invoice/Billing"}],"sad_type_of_sub_ass":[{"sad_type_of_sub_ass":"New"},{"sad_type_of_sub_ass":"Recon"},{"sad_type_of_sub_ass":"Repair"}],"sad_war_term":[{"sad_war_term":"Month Or HMR/KM"},{"sad_war_term":"Month And HMR/KM"},{"sad_war_term":"Only Month"},{"sad_war_term":"Only HMR/KM"}],"sad_war_term_app":[{"sad_war_term_app":"YES"},{"sad_war_term_app":"NO"}],"sad_su_ass_srp":[{"sad_su_ass_srp":"Engine"},{"sad_su_ass_srp":"Transmission"},{"sad_su_ass_srp":"Final Drive"},{"sad_su_ass_srp":"Hydraulic Pump"},{"sad_su_ass_srp":"Motor"}],"sad_su_ass_mod_srp":[{"sad_su_ass_mod_srp":"BH100"}],"at_on_account_of":[{"at_on_account_of":"BEML"},{"at_on_account_of":"CUSTOMER"}],"dmd_system":[{"dmd_system":"a"},{"dmd_system":"b"}],"eq_sta_aft_act_t_sub":[{"eq_sta_aft_act_t_sub":"Not Working"},{"eq_sta_aft_act_t_sub":"Working with Problem"}]}
/// statusMessage : "Successfully Fetched Data"

Picklistvalueservicerequest picklistvalueservicerequestFromJson(String str) =>
    Picklistvalueservicerequest.fromJson(json.decode(str));
String picklistvalueservicerequestToJson(Picklistvalueservicerequest data) =>
    json.encode(data.toJson());

class Picklistvalueservicerequest {
  Picklistvalueservicerequest({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  Picklistvalueservicerequest.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  Picklistvalueservicerequest copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      Picklistvalueservicerequest(
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

/// hdnTaxType : [{"hdnTaxType":"individual"},{"hdnTaxType":"group"}]
/// sr_system_affected : [{"sr_system_affected":"Machine tools Electrical System____Solenoid coils"}]
/// sr_war_status : [{"sr_war_status":"Warranty"},{"sr_war_status":"Contract"},{"sr_war_status":"Outside Warranty"}]
/// sr_ticket_type : [{"sr_ticket_type":"PRE-DELIVERY"},{"sr_ticket_type":"ERECTION AND COMMISSIONING"},{"sr_ticket_type":"PERIODICAL MAINTENANCE"},{"sr_ticket_type":"PREVENTIVE MAINTENANCE"},{"sr_ticket_type":"BREAKDOWN"},{"sr_ticket_type":"GENERAL INSPECTION"},{"sr_ticket_type":"INSTALLATION OF SUB ASSEMBLY FITMENT"},{"sr_ticket_type":"SERVICE FOR SPARES PURCHASED"},{"sr_ticket_type":"DESIGN MODIFICATION"}]
/// sr_action_one : [{"sr_action_one":"To be replaced"},{"sr_action_one":"Replaced"},{"sr_action_one":"To be Repaired"},{"sr_action_one":"Repaired"}]
/// sr_action_two : [{"sr_action_two":"Required"},{"sr_action_two":"Not Required"}]
/// sr_replace_action : [{"sr_replace_action":"From BEML Stock"},{"sr_replace_action":"From Vendor Stock"},{"sr_replace_action":"From Customer Stock"}]
/// sr_equip_status : [{"sr_equip_status":"operational"},{"sr_equip_status":"in limited operation"},{"sr_equip_status":"out of order"}]
/// type_of_conrt : [{"type_of_conrt":"GPCC"},{"type_of_conrt":"COSTCAP"},{"type_of_conrt":"FMC"},{"type_of_conrt":"MARC"},{"type_of_conrt":"AMC"}]
/// genchk_oil_pressure : [{"genchk_oil_pressure":"OK"},{"genchk_oil_pressure":"NOT OK"}]
/// genchk_oil_temperature : [{"genchk_oil_temperature":"OK"},{"genchk_oil_temperature":"NOT OK"}]
/// genchk_coolant_temperature : [{"genchk_coolant_temperature":"OK"},{"genchk_coolant_temperature":"NOT OK"}]
/// genchk_transmission : [{"genchk_transmission":"OK"},{"genchk_transmission":"NOT OK"},{"genchk_transmission":"NA"}]
/// genchk_brake : [{"genchk_brake":"OK"},{"genchk_brake":"NOT OK"}]
/// genchk_air_pressure : [{"genchk_air_pressure":"OK"},{"genchk_air_pressure":"NOT OK"},{"genchk_air_pressure":"NA"}]
/// genchk_electrical : [{"genchk_electrical":"OK"},{"genchk_electrical":"NOT OK"},{"genchk_electrical":"NA"}]
/// genchk_motor : [{"genchk_motor":"OK"},{"genchk_motor":"NOT OK"},{"genchk_motor":"NA"}]
/// genchk_transformer : [{"genchk_transformer":"OK"},{"genchk_transformer":"NOT OK"},{"genchk_transformer":"NA"}]
/// genchk_field_switch : [{"genchk_field_switch":"OK"},{"genchk_field_switch":"NOT OK"},{"genchk_field_switch":"NA"}]
/// genchk_auto_electrical_system : [{"genchk_auto_electrical_system":"OK"},{"genchk_auto_electrical_system":"NOT OK"},{"genchk_auto_electrical_system":"NA"}]
/// genchk_battery_voltage : [{"genchk_battery_voltage":"OK"},{"genchk_battery_voltage":"NOT OK"},{"genchk_battery_voltage":"NA"}]
/// genchk_hydraulic : [{"genchk_hydraulic":"OK"},{"genchk_hydraulic":"NOT OK"},{"genchk_hydraulic":"NA"}]
/// genchk_cylinders : [{"genchk_cylinders":"OK"},{"genchk_cylinders":"NOT OK"},{"genchk_cylinders":"NA"}]
/// genchk_suspension : [{"genchk_suspension":"OK"},{"genchk_suspension":"NOT OK"},{"genchk_suspension":"NA"}]
/// genchk_pumps : [{"genchk_pumps":"OK"},{"genchk_pumps":"NOT OK"},{"genchk_pumps":"NA"}]
/// genchk_oil_cooler : [{"genchk_oil_cooler":"OK"},{"genchk_oil_cooler":"NOT OK"},{"genchk_oil_cooler":"NA"}]
/// genchk_structure : [{"genchk_structure":"OK"},{"genchk_structure":"NOT OK"}]
/// genchk_auto_lubrication : [{"genchk_auto_lubrication":"OK"},{"genchk_auto_lubrication":"NOT OK"},{"genchk_auto_lubrication":"NA"}]
/// genchk_air_conditionn : [{"genchk_air_conditionn":"OK"},{"genchk_air_conditionn":"NOT OK"},{"genchk_air_conditionn":"NA"}]
/// genchk_auto_fire_protection : [{"genchk_auto_fire_protection":"OK"},{"genchk_auto_fire_protection":"NOT OK"},{"genchk_auto_fire_protection":"NA"}]
/// genchk_hi_volt_ele_system : [{"genchk_hi_volt_ele_system":"OK"},{"genchk_hi_volt_ele_system":"NOT OK"},{"genchk_hi_volt_ele_system":"NA"}]
/// fail_de_failure_on_account_of : [{"fail_de_failure_on_account_of":"BEML"},{"fail_de_failure_on_account_of":"CUSTOMER"}]
/// fail_de_part_pertains_to : [{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._Vendor - MRF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - KGF"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML- Mysore"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Bangalore"}]
/// fail_de_sap_noti_type : [{"fail_de_sap_noti_type":"ZW"},{"fail_de_sap_noti_type":"ZJ"},{"fail_de_sap_noti_type":"ZC"},{"fail_de_sap_noti_type":"ZF"},{"fail_de_sap_noti_type":"ZH"},{"fail_de_sap_noti_type":"ZO"},{"fail_de_sap_noti_type":"ZE"},{"fail_de_sap_noti_type":"ZB"},{"fail_de_sap_noti_type":"Z3"},{"fail_de_sap_noti_type":"Z2"},{"fail_de_sap_noti_type":"Z4"}]
/// fail_de_failure_investigation : [{"fail_de_failure_investigation":"Completed"},{"fail_de_failure_investigation":"In-process"},{"fail_de_failure_investigation":"On Hold"}]
/// fd_sub_div : [{"fd_sub_div":"Engine"},{"fd_sub_div":"Truck"},{"fd_sub_div":"H&P"},{"fd_sub_div":"EM"}]
/// eq_sr_equip_model : [{"eq_sr_equip_model":"BH100"},{"eq_sr_equip_model":"BWS70"},{"eq_sr_equip_model":"BG825"},{"eq_sr_equip_model":"BH100"},{"eq_sr_equip_model":"BWS70"},{"eq_sr_equip_model":"BG825"}]
/// fd_eq_sta_bsr : [{"fd_eq_sta_bsr":"operational"},{"fd_eq_sta_bsr":"in limited operation"},{"fd_eq_sta_bsr":"out of order"}]
/// sr_designaion : [{"sr_designaion":"Chairman & Managing Director"},{"sr_designaion":"Director(Mining & Construction Business)"},{"sr_designaion":"Director(Defence Business)"},{"sr_designaion":"Director"},{"sr_designaion":"Executive Director"},{"sr_designaion":"Executive Director"},{"sr_designaion":"General Manager"},{"sr_designaion":"Deputy General Manager"},{"sr_designaion":"Assistant General Manager"},{"sr_designaion":"Senior Manager"},{"sr_designaion":"Manager"},{"sr_designaion":"Assistant Manager"},{"sr_designaion":"Engineer"},{"sr_designaion":"Assistant Engineer"},{"sr_designaion":"Senior Supervisor-S-6"},{"sr_designaion":"Senior Supervisor-S-5"},{"sr_designaion":"Senior Supervisor-S-4"},{"sr_designaion":"Supervisor- S-3"},{"sr_designaion":"Joint Supervisior-S-2"},{"sr_designaion":"Deputy Supervisor-S-1"},{"sr_designaion":"Master Skilled Technician-Gr.-E"},{"sr_designaion":"High Skilled Technician-Gr.-D"},{"sr_designaion":"Senior Technician-Gr.-C"},{"sr_designaion":"Technician-Gr.-B"},{"sr_designaion":"Helper- Gr-A"}]
/// sr_regional_office : [{"sr_regional_office":"Neyveli"},{"sr_regional_office":"Sambalpur"},{"sr_regional_office":"Kolkata"},{"sr_regional_office":"Dhanbad"},{"sr_regional_office":"Bangalore"},{"sr_regional_office":"Hyderabad"},{"sr_regional_office":"New Delhi"},{"sr_regional_office":"Nagpur"}]
/// dist_off_or_act_cen : [{"dist_off_or_act_cen":"Neyveli"},{"dist_off_or_act_cen":"Sambalpur"},{"dist_off_or_act_cen":"Kolkata"},{"dist_off_or_act_cen":"Dhanbad"},{"dist_off_or_act_cen":"Bangalore"},{"dist_off_or_act_cen":"Hyderabad"},{"dist_off_or_act_cen":"New Delhi"},{"dist_off_or_act_cen":"Nagpur"}]
/// eq_sta_aft_act_taken : [{"eq_sta_aft_act_taken":"operational"},{"eq_sta_aft_act_taken":"in limited operation"},{"eq_sta_aft_act_taken":"out of order"}]
/// off_on_account_of : [{"off_on_account_of":"BEML"},{"off_on_account_of":"CUSTOMER"}]
/// fail_de_type_of_damage : [{"fail_de_type_of_damage":"Beml CS cause Codes_._Normal"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Lubrication Inadequate"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Material Deficiency"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Oil Contamination"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Air Leakage"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Operaion Faulty"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Manufacturing Defect"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Misalignment"},{"fail_de_type_of_damage":"Beml CS cause Codes_._Over Heating"},{"fail_de_type_of_damage":"Maintenance Causes_._Cause 1"},{"fail_de_type_of_damage":"Maintenance Causes_._Cause 2"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Design"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Development"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Engineering/design"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Procurement"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Material"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production planning"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production control"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production/machine"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production/personnel"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Quality inspection"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Inspection planning"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Implementing inspection"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Storage"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Distribution"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Sales"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Shipping"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Service"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Maintenance"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Repair"},{"fail_de_type_of_damage":"causes_._Lubrication Inadequate"},{"fail_de_type_of_damage":"causes_._Material Deficiency"},{"fail_de_type_of_damage":"causes_._Oil Contamination"},{"fail_de_type_of_damage":"causes_._Air Leakage"},{"fail_de_type_of_damage":"causes_._Manufacturing Defect"},{"fail_de_type_of_damage":"causes_._Misalignment"},{"fail_de_type_of_damage":"causes_._Over Heating"},{"fail_de_type_of_damage":"Test cause_._cause1"},{"fail_de_type_of_damage":"Test cause_._cause2"}]
/// fail_de_system_affected : [{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 351"}]
/// fail_de_parts_affected : [{"fail_de_parts_affected":"Long Texts for Claim_._Long text for cause"},{"fail_de_parts_affected":"Long Texts for Claim_._Operation long text"},{"fail_de_parts_affected":"Long Texts for Claim_._Long text for consequences"},{"fail_de_parts_affected":"Long Texts for Claim_._Long text for evaluation"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Engine"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Fuel Systems"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Torque Converter"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Drive Line"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Final Drive"},{"fail_de_parts_affected":"GENERAL INSPECTION_._Hydraulic System"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._INITIAL 50 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._INITIAL 250 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 250 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 500 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 1000 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 2000 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._ENGINE MAINTENANCE"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._CONDITION BASED MONITORING"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._PREVENTIVE MAINTENANCE"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._OTHERS"},{"fail_de_parts_affected":"ENGINE FAILURE_._BLOCK BURST"},{"fail_de_parts_affected":"ENGINE FAILURE_._VALVE DROP"},{"fail_de_parts_affected":"ENGINE FAILURE_._INJECTOR FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._FIP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._FEED PUMP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._WATER PUMP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._COOLING SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._EXHAUST SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._LUBRICATION SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._CRANK SHAFT FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._CONNECTING ROD FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._THRUST WASHER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._MUFFLER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._TURBO CHARGER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._AIR FILTER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._ENGINE BLOW-BY"},{"fail_de_parts_affected":"ENGINE FAILURE_._FUEL SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._LEAKAGES"},{"fail_de_parts_affected":"ENGINE FAILURE_._OTHERS"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._SHAFT SEAL FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._BEARING FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._TURBINE/IMPELLER FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._STATOR FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._SCAVENGING PUMP"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._RELIEF/REGULATOR VALVE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._OUTPUT FLANGE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._OTHERS"},{"fail_de_parts_affected":"TRANSMISSION_._INPUT/OUTPUT SHAFT SEAL FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._CONTROL VALVE FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._CLUTCH SEAL FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PISTON JAM"},{"fail_de_parts_affected":"TRANSMISSION_._BEARING FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSFER CASE FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PLANETARY FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._RING GEAR FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PCMV FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION CONTROLLER FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._SENSOR FAILURES"},{"fail_de_parts_affected":"TRANSMISSION_._FAULTY WIRING"},{"fail_de_parts_affected":"TRANSMISSION_._OTHERS"},{"fail_de_parts_affected":"STEERING_._STEERING CLUTCH"},{"fail_de_parts_affected":"STEERING_._HUB/CAGE FAILURE"},{"fail_de_parts_affected":"STEERING_._SEAL LEAKAGE"},{"fail_de_parts_affected":"STEERING_._S-PIPE LEAKAGE"},{"fail_de_parts_affected":"STEERING_._STEERING CONTROL VALVE"},{"fail_de_parts_affected":"STEERING_._PROPORTIONAL VALVE"},{"fail_de_parts_affected":"STEERING_._STEERING LINKAGE"},{"fail_de_parts_affected":"STEERING_._OTHERS"},{"fail_de_parts_affected":"BRAKE_._BRAKE BAND FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE BOOSTER FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE VALVE FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE LINKAGE FAILURE"},{"fail_de_parts_affected":"BRAKE_._OTHERS"},{"fail_de_parts_affected":"Machine tool damage Electrical_._Motor burnt"},{"fail_de_parts_affected":"Machine tool damage Electrical_._Contactor flash /jam"},{"fail_de_parts_affected":"Machine tool damage Electrical_._Cable burnt"},{"fail_de_parts_affected":"Machine tool damage Electrical_._Transformer burnt"},{"fail_de_parts_affected":"Machine tool damage Electrical_._Fuse blowing continously"},{"fail_de_parts_affected":"Machine tool damage Mechanical_._Hose burst"},{"fail_de_parts_affected":"Machine tool damage Mechanical_._Oil leakage"},{"fail_de_parts_affected":"Machine tool damage Mechanical_._Mechanical part broken"},{"fail_de_parts_affected":"Machine tool damage Mechanical_._Mechanical Jam"},{"fail_de_parts_affected":"Machine tool damage Mechanical_._Bearing jammed"},{"fail_de_parts_affected":"Machine tool damage Electronics_._Transformer burnt"},{"fail_de_parts_affected":"Machine tool damage Electronics_._SMPS burnt"},{"fail_de_parts_affected":"Machine tool damage Electronics_._PCB burnt"},{"fail_de_parts_affected":"Machine tool damage Electronics_._Cable short"},{"fail_de_parts_affected":"Machine tool damage Electronics_._Transistor Module failing continously"},{"fail_de_parts_affected":"Machine tool damage Electronics_._Display burnt"},{"fail_de_parts_affected":"Machine tool damage Electronics_._Cable Open"},{"fail_de_parts_affected":"Maintenance Damage 1_._Damage 1"},{"fail_de_parts_affected":"Maintenance Damage 1_._Damage 2"},{"fail_de_parts_affected":"Maintenance Damage 2_._Damage A"},{"fail_de_parts_affected":"Maintenance Damage 2_._Damage B"}]
/// tck_det_purpose : [{"tck_det_purpose":"REHABILITATION"},{"tck_det_purpose":"OVERHAUL"},{"tck_det_purpose":"UPGRADTION"},{"tck_det_purpose":"PARTS REQUIREMNT"},{"tck_det_purpose":"EQUIPMENT HEALTH CHECK UP"},{"tck_det_purpose":"WARRANTY CLAIM FOR SUB ASSEMBLY / OTHER SPARE PARTS"},{"tck_det_purpose":"INSPECTION OF REJECTED SPARES"}]
/// wt_war_start_cond : [{"wt_war_start_cond":"Date of Receipt at Customer site"},{"wt_war_start_cond":"Date of commissioning/Fitment"},{"wt_war_start_cond":"Date of Invoice/Billing"}]
/// mt_major_aggrts : [{"mt_major_aggrts":"Engine"},{"mt_major_aggrts":"Transmission"},{"mt_major_aggrts":"Final Drive"},{"mt_major_aggrts":"Differential"},{"mt_major_aggrts":"Motor"},{"mt_major_aggrts":"Others"}]
/// mt_pdical_maint_type : [{"mt_pdical_maint_type":"Every 250 hrs"},{"mt_pdical_maint_type":"Every 500 Hrs"},{"mt_pdical_maint_type":"Every 750 Hrs"},{"mt_pdical_maint_type":"Every 1000 Hrs"},{"mt_pdical_maint_type":"Every 1250 Hrs"},{"mt_pdical_maint_type":"Every 1500 Hrs"},{"mt_pdical_maint_type":"Every 2000 Hrs"},{"mt_pdical_maint_type":"Every 1000 KM"}]
/// mod_of_sub_ambly : [{"mod_of_sub_ambly":"EG Engine"},{"mod_of_sub_ambly":"PCMV Transmission"},{"mod_of_sub_ambly":"Regular"},{"mod_of_sub_ambly":"ATGEMS Transmission"},{"mod_of_sub_ambly":"ALLISION Transmission"},{"mod_of_sub_ambly":"AVTEC Transmission"},{"mod_of_sub_ambly":"EG Transmission"},{"mod_of_sub_ambly":"Not Applicable"}]
/// war_claim_dte : [{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"},{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"}]
/// sad_line_status : [{"sad_line_status":"Damage"},{"sad_line_status":"Malfunctioning"},{"sad_line_status":"Not Working"},{"sad_line_status":"Shortage"}]
/// sad_line_event : [{"sad_line_event":"During Transit"},{"sad_line_event":"During Installation/Commissioning"},{"sad_line_event":"Missing"},{"sad_line_event":"Short shipped from division"},{"sad_line_event":"Theft under BEML custody"},{"sad_line_event":"Theft under Customer custody"}]
/// vendor_item : [{"vendor_item":"AFDSS"},{"vendor_item":"Auto Lube"},{"vendor_item":"Engine"},{"vendor_item":"AC"}]
/// sad_war_start_con : [{"sad_war_start_con":"Date of Receipt at Customer site"},{"sad_war_start_con":"Date of commissioning/Fitment"},{"sad_war_start_con":"Date of Invoice/Billing"}]
/// sad_type_of_sub_ass : [{"sad_type_of_sub_ass":"New"},{"sad_type_of_sub_ass":"Recon"},{"sad_type_of_sub_ass":"Repair"}]
/// sad_war_term : [{"sad_war_term":"Month Or HMR/KM"},{"sad_war_term":"Month And HMR/KM"},{"sad_war_term":"Only Month"},{"sad_war_term":"Only HMR/KM"}]
/// sad_war_term_app : [{"sad_war_term_app":"YES"},{"sad_war_term_app":"NO"}]
/// sad_su_ass_srp : [{"sad_su_ass_srp":"Engine"},{"sad_su_ass_srp":"Transmission"},{"sad_su_ass_srp":"Final Drive"},{"sad_su_ass_srp":"Hydraulic Pump"},{"sad_su_ass_srp":"Motor"}]
/// sad_su_ass_mod_srp : [{"sad_su_ass_mod_srp":"BH100"}]
/// at_on_account_of : [{"at_on_account_of":"BEML"},{"at_on_account_of":"CUSTOMER"}]
/// dmd_system : [{"dmd_system":"a"},{"dmd_system":"b"}]
///
/// eq_sta_aft_act_t_sub : [{"eq_sta_aft_act_t_sub":"Not Working"},{"eq_sta_aft_act_t_sub":"Working with Problem"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<HdnTaxType>? hdnTaxType,
    List<SrSystemAffected>? srSystemAffected,
    List<SrWarStatus>? srWarStatus,
    List<SrTicketType>? srTicketType,
    List<SrActionOne>? srActionOne,
    List<SrActionTwo>? srActionTwo,
    List<SrReplaceAction>? srReplaceAction,
    List<SrEquipStatus>? srEquipStatus,
    List<TypeOfConrt>? typeOfConrt,
    List<GenchkEngine>? genchkEngine,
    List<GenchkOilPressure>? genchkOilPressure,
    List<GenchkOilTemperature>? genchkOilTemperature,
    List<GenchkCoolantTemperature>? genchkCoolantTemperature,
    List<GenchkTransmission>? genchkTransmission,
    List<GenchkBrake>? genchkBrake,
    List<GenchkAirPressure>? genchkAirPressure,
    List<GenchkElectrical>? genchkElectrical,
    List<GenchkMotor>? genchkMotor,
    List<GenchkTransformer>? genchkTransformer,
    List<GenchkFieldSwitch>? genchkFieldSwitch,
    List<GenchkAutoElectricalSystem>? genchkAutoElectricalSystem,
    List<GenchkBatteryVoltage>? genchkBatteryVoltage,
    List<GenchkHydraulic>? genchkHydraulic,
    List<GenchkCylinders>? genchkCylinders,
    List<GenchkSuspension>? genchkSuspension,
    List<GenchkPumps>? genchkPumps,
    List<GenchkOilCooler>? genchkOilCooler,
    List<GenchkStructure>? genchkStructure,
    List<GenchkAutoLubrication>? genchkAutoLubrication,
    List<GenchkAirConditionn>? genchkAirConditionn,
    List<GenchkAutoFireProtection>? genchkAutoFireProtection,
    List<GenchkHiVoltEleSystem>? genchkHiVoltEleSystem,
    List<FailDeFailureOnAccountOf>? failDeFailureOnAccountOf,
    List<FailDePartPertainsTo>? failDePartPertainsTo,
    List<FailDeSapNotiType>? failDeSapNotiType,
    List<FailDeFailureInvestigation>? failDeFailureInvestigation,
    List<FdSubDiv>? fdSubDiv,
    List<EqSrEquipModel>? eqSrEquipModel,
    List<FdEqStaBsr>? fdEqStaBsr,
    List<SrDesignaion>? srDesignaion,
    List<SrRegionalOffice>? srRegionalOffice,
    List<DistOffOrActCen>? distOffOrActCen,
    List<EqStaAftActTaken>? eqStaAftActTaken,
    List<OffOnAccountOf>? offOnAccountOf,
    List<FailDeTypeOfDamage>? failDeTypeOfDamage,
    List<FailDeSystemAffected>? failDeSystemAffected,
    List<FailDePartsAffected>? failDePartsAffected,
    List<TckDetPurpose>? tckDetPurpose,
    List<MtMajorAggrts>? mtMajorAggrts,
    List<MtPdicalMaintType>? mtPdicalMaintType,
    List<ModOfSubAmbly>? modOfSubAmbly,
    List<WarClaimDte>? warClaimDte,
    List<SadLineStatus>? sadLineStatus,
    List<SadLineEvent>? sadLineEvent,
    List<EcdCanBeCom>? ecdCanBeCom,
    List<SadWarStartCon>? sadWarStartCon,
    List<SadTypeOfSubAss>? sadTypeOfSubAss,
    List<SadWarTerm>? sadWarTerm,
    List<SadWarTermApp>? sadWarTermApp,
    List<SadSuAssSrp>? sadSuAssSrp,
    List<SadSuAssModSrp>? sadSuAssModSrp,
    List<AtSais>? atSais,
    List<AtOnAccountOf>? atOnAccountOf,
    List<AtDmStatus>? atDmStatus,
    List<DmdSystem>? dmdSystem,
    List<WarWarable>? warWarable,
    List<EqStaAftActTSub>? eqStaAftActTSub,
    List<VendorItem>? vendorItem,
    List<AtBrkdnSrReq>? atBrkdnSrReq,
    List<GenchkOilPreTr>? genchkOilPreTr,
    List<GenchkOilTrTem>? genchkOilTrTem,
    List<GenchkBrkOilTem>? genchkBrkOilTem,
    List<AtCopm>? atCopm,
    List<LidMsr>? lidMsr,
    List<LidLineEvent>? lidLineEvent,
    List<SadValidSlNo>? sadValidSlNo,
    List<SadSelAgName>? sadSelAgName,
  }) {
    _hdnTaxType = hdnTaxType;
    _srSystemAffected = srSystemAffected;
    _srWarStatus = srWarStatus;
    _srTicketType = srTicketType;
    _srActionOne = srActionOne;
    _srActionTwo = srActionTwo;
    _srReplaceAction = srReplaceAction;
    _srEquipStatus = srEquipStatus;
    _typeOfConrt = typeOfConrt;
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
    _genchkHydraulic = genchkHydraulic;
    _genchkCylinders = genchkCylinders;
    _genchkSuspension = genchkSuspension;
    _genchkPumps = genchkPumps;
    _genchkOilCooler = genchkOilCooler;
    _genchkStructure = genchkStructure;
    _genchkAutoLubrication = genchkAutoLubrication;
    _genchkAirConditionn = genchkAirConditionn;
    _genchkAutoFireProtection = genchkAutoFireProtection;
    _genchkHiVoltEleSystem = genchkHiVoltEleSystem;
    _failDeFailureOnAccountOf = failDeFailureOnAccountOf;
    _failDePartPertainsTo = failDePartPertainsTo;
    _failDeSapNotiType = failDeSapNotiType;
    _failDeFailureInvestigation = failDeFailureInvestigation;
    _fdSubDiv = fdSubDiv;
    _eqSrEquipModel = eqSrEquipModel;
    _fdEqStaBsr = fdEqStaBsr;
    _srDesignaion = srDesignaion;
    _srRegionalOffice = srRegionalOffice;
    _distOffOrActCen = distOffOrActCen;
    _eqStaAftActTaken = eqStaAftActTaken;
    _offOnAccountOf = offOnAccountOf;
    _failDeTypeOfDamage = failDeTypeOfDamage;
    _failDeSystemAffected = failDeSystemAffected;
    _failDePartsAffected = failDePartsAffected;
    _tckDetPurpose = tckDetPurpose;
    _mtMajorAggrts = mtMajorAggrts;
    _mtPdicalMaintType = mtPdicalMaintType;
    _modOfSubAmbly = modOfSubAmbly;
    _warClaimDte = warClaimDte;
    _sadLineStatus = sadLineStatus;
    _sadLineEvent = sadLineEvent;
    _ecdCanBeCom = ecdCanBeCom;
    _sadWarStartCon = sadWarStartCon;
    _sadTypeOfSubAss = sadTypeOfSubAss;
    _sadWarTerm = sadWarTerm;
    _sadWarTermApp = sadWarTermApp;
    _sadSuAssSrp = sadSuAssSrp;
    _sadSuAssModSrp = sadSuAssModSrp;
    _atSais = atSais;
    _atOnAccountOf = atOnAccountOf;
    _atDmStatus = atDmStatus;
    _dmdSystem = dmdSystem;
    _warWarable = warWarable;
    _eqStaAftActTSub = eqStaAftActTSub;
    _vendorItem = vendorItem;
    _atBrkdnSrReq = atBrkdnSrReq;
    _genchkOilPreTr = genchkOilPreTr;
    _genchkOilTrTem = genchkOilTrTem;
    _genchkBrkOilTem = genchkBrkOilTem;
    _atCopm = atCopm;
    _lidMsr = lidMsr;
    _lidLineEvent = lidLineEvent;
    _sadValidSlNo = sadValidSlNo;
    _sadSelAgName = sadSelAgName;
  }

  Data.fromJson(dynamic json) {
    if (json['hdnTaxType'] != null) {
      _hdnTaxType = [];
      json['hdnTaxType'].forEach((v) {
        _hdnTaxType?.add(HdnTaxType.fromJson(v));
      });
    }
    if (json['sr_system_affected'] != null) {
      _srSystemAffected = [];
      json['sr_system_affected'].forEach((v) {
        _srSystemAffected?.add(SrSystemAffected.fromJson(v));
      });
    }
    if (json['sr_war_status'] != null) {
      _srWarStatus = [];
      json['sr_war_status'].forEach((v) {
        _srWarStatus?.add(SrWarStatus.fromJson(v));
      });
    }
    if (json['sr_ticket_type'] != null) {
      _srTicketType = [];
      json['sr_ticket_type'].forEach((v) {
        _srTicketType?.add(SrTicketType.fromJson(v));
      });
    }
    if (json['sr_action_one'] != null) {
      _srActionOne = [];
      json['sr_action_one'].forEach((v) {
        _srActionOne?.add(SrActionOne.fromJson(v));
      });
    }
    if (json['sr_action_two'] != null) {
      _srActionTwo = [];
      json['sr_action_two'].forEach((v) {
        _srActionTwo?.add(SrActionTwo.fromJson(v));
      });
    }
    if (json['sr_replace_action'] != null) {
      _srReplaceAction = [];
      json['sr_replace_action'].forEach((v) {
        _srReplaceAction?.add(SrReplaceAction.fromJson(v));
      });
    }
    if (json['sr_equip_status'] != null) {
      _srEquipStatus = [];
      json['sr_equip_status'].forEach((v) {
        _srEquipStatus?.add(SrEquipStatus.fromJson(v));
      });
    }
    if (json['type_of_conrt'] != null) {
      _typeOfConrt = [];
      json['type_of_conrt'].forEach((v) {
        _typeOfConrt?.add(TypeOfConrt.fromJson(v));
      });
    }
    if (json['genchk_engine'] != null) {
      _genchkEngine = [];
      json['genchk_engine'].forEach((v) {
        _genchkEngine?.add(GenchkEngine.fromJson(v));
      });
    }
    if (json['genchk_oil_pressure'] != null) {
      _genchkOilPressure = [];
      json['genchk_oil_pressure'].forEach((v) {
        _genchkOilPressure?.add(GenchkOilPressure.fromJson(v));
      });
    }
    if (json['genchk_oil_temperature'] != null) {
      _genchkOilTemperature = [];
      json['genchk_oil_temperature'].forEach((v) {
        _genchkOilTemperature?.add(GenchkOilTemperature.fromJson(v));
      });
    }
    if (json['genchk_coolant_temperature'] != null) {
      _genchkCoolantTemperature = [];
      json['genchk_coolant_temperature'].forEach((v) {
        _genchkCoolantTemperature?.add(GenchkCoolantTemperature.fromJson(v));
      });
    }
    if (json['genchk_transmission'] != null) {
      _genchkTransmission = [];
      json['genchk_transmission'].forEach((v) {
        _genchkTransmission?.add(GenchkTransmission.fromJson(v));
      });
    }
    if (json['genchk_brake'] != null) {
      _genchkBrake = [];
      json['genchk_brake'].forEach((v) {
        _genchkBrake?.add(GenchkBrake.fromJson(v));
      });
    }
    if (json['genchk_air_pressure'] != null) {
      _genchkAirPressure = [];
      json['genchk_air_pressure'].forEach((v) {
        _genchkAirPressure?.add(GenchkAirPressure.fromJson(v));
      });
    }
    if (json['genchk_electrical'] != null) {
      _genchkElectrical = [];
      json['genchk_electrical'].forEach((v) {
        _genchkElectrical?.add(GenchkElectrical.fromJson(v));
      });
    }
    if (json['genchk_motor'] != null) {
      _genchkMotor = [];
      json['genchk_motor'].forEach((v) {
        _genchkMotor?.add(GenchkMotor.fromJson(v));
      });
    }
    if (json['genchk_transformer'] != null) {
      _genchkTransformer = [];
      json['genchk_transformer'].forEach((v) {
        _genchkTransformer?.add(GenchkTransformer.fromJson(v));
      });
    }
    if (json['genchk_field_switch'] != null) {
      _genchkFieldSwitch = [];
      json['genchk_field_switch'].forEach((v) {
        _genchkFieldSwitch?.add(GenchkFieldSwitch.fromJson(v));
      });
    }
    if (json['genchk_auto_electrical_system'] != null) {
      _genchkAutoElectricalSystem = [];
      json['genchk_auto_electrical_system'].forEach((v) {
        _genchkAutoElectricalSystem
            ?.add(GenchkAutoElectricalSystem.fromJson(v));
      });
    }
    if (json['genchk_battery_voltage'] != null) {
      _genchkBatteryVoltage = [];
      json['genchk_battery_voltage'].forEach((v) {
        _genchkBatteryVoltage?.add(GenchkBatteryVoltage.fromJson(v));
      });
    }
    if (json['genchk_hydraulic'] != null) {
      _genchkHydraulic = [];
      json['genchk_hydraulic'].forEach((v) {
        _genchkHydraulic?.add(GenchkHydraulic.fromJson(v));
      });
    }
    if (json['genchk_cylinders'] != null) {
      _genchkCylinders = [];
      json['genchk_cylinders'].forEach((v) {
        _genchkCylinders?.add(GenchkCylinders.fromJson(v));
      });
    }
    if (json['genchk_suspension'] != null) {
      _genchkSuspension = [];
      json['genchk_suspension'].forEach((v) {
        _genchkSuspension?.add(GenchkSuspension.fromJson(v));
      });
    }
    if (json['genchk_pumps'] != null) {
      _genchkPumps = [];
      json['genchk_pumps'].forEach((v) {
        _genchkPumps?.add(GenchkPumps.fromJson(v));
      });
    }
    if (json['genchk_oil_cooler'] != null) {
      _genchkOilCooler = [];
      json['genchk_oil_cooler'].forEach((v) {
        _genchkOilCooler?.add(GenchkOilCooler.fromJson(v));
      });
    }
    if (json['genchk_structure'] != null) {
      _genchkStructure = [];
      json['genchk_structure'].forEach((v) {
        _genchkStructure?.add(GenchkStructure.fromJson(v));
      });
    }
    if (json['genchk_auto_lubrication'] != null) {
      _genchkAutoLubrication = [];
      json['genchk_auto_lubrication'].forEach((v) {
        _genchkAutoLubrication?.add(GenchkAutoLubrication.fromJson(v));
      });
    }
    if (json['genchk_air_conditionn'] != null) {
      _genchkAirConditionn = [];
      json['genchk_air_conditionn'].forEach((v) {
        _genchkAirConditionn?.add(GenchkAirConditionn.fromJson(v));
      });
    }
    if (json['genchk_auto_fire_protection'] != null) {
      _genchkAutoFireProtection = [];
      json['genchk_auto_fire_protection'].forEach((v) {
        _genchkAutoFireProtection?.add(GenchkAutoFireProtection.fromJson(v));
      });
    }
    if (json['genchk_hi_volt_ele_system'] != null) {
      _genchkHiVoltEleSystem = [];
      json['genchk_hi_volt_ele_system'].forEach((v) {
        _genchkHiVoltEleSystem?.add(GenchkHiVoltEleSystem.fromJson(v));
      });
    }
    if (json['fail_de_failure_on_account_of'] != null) {
      _failDeFailureOnAccountOf = [];
      json['fail_de_failure_on_account_of'].forEach((v) {
        _failDeFailureOnAccountOf?.add(FailDeFailureOnAccountOf.fromJson(v));
      });
    }
    if (json['fail_de_part_pertains_to'] != null) {
      _failDePartPertainsTo = [];
      json['fail_de_part_pertains_to'].forEach((v) {
        _failDePartPertainsTo?.add(FailDePartPertainsTo.fromJson(v));
      });
    }
    if (json['fail_de_sap_noti_type'] != null) {
      _failDeSapNotiType = [];
      json['fail_de_sap_noti_type'].forEach((v) {
        _failDeSapNotiType?.add(FailDeSapNotiType.fromJson(v));
      });
    }
    if (json['fail_de_failure_investigation'] != null) {
      _failDeFailureInvestigation = [];
      json['fail_de_failure_investigation'].forEach((v) {
        _failDeFailureInvestigation
            ?.add(FailDeFailureInvestigation.fromJson(v));
      });
    }
    if (json['fd_sub_div'] != null) {
      _fdSubDiv = [];
      json['fd_sub_div'].forEach((v) {
        _fdSubDiv?.add(FdSubDiv.fromJson(v));
      });
    }
    if (json['eq_sr_equip_model'] != null) {
      _eqSrEquipModel = [];
      json['eq_sr_equip_model'].forEach((v) {
        _eqSrEquipModel?.add(EqSrEquipModel.fromJson(v));
      });
    }
    if (json['fd_eq_sta_bsr'] != null) {
      _fdEqStaBsr = [];
      json['fd_eq_sta_bsr'].forEach((v) {
        _fdEqStaBsr?.add(FdEqStaBsr.fromJson(v));
      });
    }
    if (json['sr_designaion'] != null) {
      _srDesignaion = [];
      json['sr_designaion'].forEach((v) {
        _srDesignaion?.add(SrDesignaion.fromJson(v));
      });
    }
    if (json['sr_regional_office'] != null) {
      _srRegionalOffice = [];
      json['sr_regional_office'].forEach((v) {
        _srRegionalOffice?.add(SrRegionalOffice.fromJson(v));
      });
    }
    if (json['dist_off_or_act_cen'] != null) {
      _distOffOrActCen = [];
      json['dist_off_or_act_cen'].forEach((v) {
        _distOffOrActCen?.add(DistOffOrActCen.fromJson(v));
      });
    }
    if (json['eq_sta_aft_act_taken'] != null) {
      _eqStaAftActTaken = [];
      json['eq_sta_aft_act_taken'].forEach((v) {
        _eqStaAftActTaken?.add(EqStaAftActTaken.fromJson(v));
      });
    }
    if (json['off_on_account_of'] != null) {
      _offOnAccountOf = [];
      json['off_on_account_of'].forEach((v) {
        _offOnAccountOf?.add(OffOnAccountOf.fromJson(v));
      });
    }
    if (json['fail_de_type_of_damage'] != null) {
      _failDeTypeOfDamage = [];
      json['fail_de_type_of_damage'].forEach((v) {
        _failDeTypeOfDamage?.add(FailDeTypeOfDamage.fromJson(v));
      });
    }
    if (json['fail_de_system_affected'] != null) {
      _failDeSystemAffected = [];
      json['fail_de_system_affected'].forEach((v) {
        _failDeSystemAffected?.add(FailDeSystemAffected.fromJson(v));
      });
    }
    if (json['fail_de_parts_affected'] != null) {
      _failDePartsAffected = [];
      json['fail_de_parts_affected'].forEach((v) {
        _failDePartsAffected?.add(FailDePartsAffected.fromJson(v));
      });
    }
    if (json['tck_det_purpose'] != null) {
      _tckDetPurpose = [];
      json['tck_det_purpose'].forEach((v) {
        _tckDetPurpose?.add(TckDetPurpose.fromJson(v));
      });
    }
    if (json['mt_major_aggrts'] != null) {
      _mtMajorAggrts = [];
      json['mt_major_aggrts'].forEach((v) {
        _mtMajorAggrts?.add(MtMajorAggrts.fromJson(v));
      });
    }
    if (json['mt_pdical_maint_type'] != null) {
      _mtPdicalMaintType = [];
      json['mt_pdical_maint_type'].forEach((v) {
        _mtPdicalMaintType?.add(MtPdicalMaintType.fromJson(v));
      });
    }
    if (json['mod_of_sub_ambly'] != null) {
      _modOfSubAmbly = [];
      json['mod_of_sub_ambly'].forEach((v) {
        _modOfSubAmbly?.add(ModOfSubAmbly.fromJson(v));
      });
    }
    if (json['war_claim_dte'] != null) {
      _warClaimDte = [];
      json['war_claim_dte'].forEach((v) {
        _warClaimDte?.add(WarClaimDte.fromJson(v));
      });
    }
    if (json['sad_line_status'] != null) {
      _sadLineStatus = [];
      json['sad_line_status'].forEach((v) {
        _sadLineStatus?.add(SadLineStatus.fromJson(v));
      });
    }
    if (json['sad_line_event'] != null) {
      _sadLineEvent = [];
      json['sad_line_event'].forEach((v) {
        _sadLineEvent?.add(SadLineEvent.fromJson(v));
      });
    }
    if (json['ecd_can_be_com'] != null) {
      _ecdCanBeCom = [];
      json['ecd_can_be_com'].forEach((v) {
        _ecdCanBeCom?.add(EcdCanBeCom.fromJson(v));
      });
    }
    if (json['sad_war_start_con'] != null) {
      _sadWarStartCon = [];
      json['sad_war_start_con'].forEach((v) {
        _sadWarStartCon?.add(SadWarStartCon.fromJson(v));
      });
    }
    if (json['sad_type_of_sub_ass'] != null) {
      _sadTypeOfSubAss = [];
      json['sad_type_of_sub_ass'].forEach((v) {
        _sadTypeOfSubAss?.add(SadTypeOfSubAss.fromJson(v));
      });
    }
    if (json['sad_war_term'] != null) {
      _sadWarTerm = [];
      json['sad_war_term'].forEach((v) {
        _sadWarTerm?.add(SadWarTerm.fromJson(v));
      });
    }
    if (json['sad_war_term_app'] != null) {
      _sadWarTermApp = [];
      json['sad_war_term_app'].forEach((v) {
        _sadWarTermApp?.add(SadWarTermApp.fromJson(v));
      });
    }
    if (json['sad_su_ass_srp'] != null) {
      _sadSuAssSrp = [];
      json['sad_su_ass_srp'].forEach((v) {
        _sadSuAssSrp?.add(SadSuAssSrp.fromJson(v));
      });
    }
    if (json['sad_su_ass_mod_srp'] != null) {
      _sadSuAssModSrp = [];
      json['sad_su_ass_mod_srp'].forEach((v) {
        _sadSuAssModSrp?.add(SadSuAssModSrp.fromJson(v));
      });
    }
    if (json['at_sais'] != null) {
      _atSais = [];
      json['at_sais'].forEach((v) {
        _atSais?.add(AtSais.fromJson(v));
      });
    }
    if (json['at_on_account_of'] != null) {
      _atOnAccountOf = [];
      json['at_on_account_of'].forEach((v) {
        _atOnAccountOf?.add(AtOnAccountOf.fromJson(v));
      });
    }
    if (json['at_dm_status'] != null) {
      _atDmStatus = [];
      json['at_dm_status'].forEach((v) {
        _atDmStatus?.add(AtDmStatus.fromJson(v));
      });
    }
    if (json['dmd_system'] != null) {
      _dmdSystem = [];
      json['dmd_system'].forEach((v) {
        _dmdSystem?.add(DmdSystem.fromJson(v));
      });
    }
    if (json['war_warable'] != null) {
      _warWarable = [];
      json['war_warable'].forEach((v) {
        _warWarable?.add(WarWarable.fromJson(v));
      });
    }
    if (json['eq_sta_aft_act_t_sub'] != null) {
      _eqStaAftActTSub = [];
      json['eq_sta_aft_act_t_sub'].forEach((v) {
        _eqStaAftActTSub?.add(EqStaAftActTSub.fromJson(v));
      });
    }
    if (json['vendor_item'] != null) {
      _vendorItem = [];
      json['vendor_item'].forEach((v) {
        _vendorItem?.add(VendorItem.fromJson(v));
      });
    }
    if (json['at_brkdn_sr_req'] != null) {
      _atBrkdnSrReq = [];
      json['at_brkdn_sr_req'].forEach((v) {
        _atBrkdnSrReq?.add(AtBrkdnSrReq.fromJson(v));
      });
    }
    if (json['genchk_oil_pre_tr'] != null) {
      _genchkOilPreTr = [];
      json['genchk_oil_pre_tr'].forEach((v) {
        _genchkOilPreTr?.add(GenchkOilPreTr.fromJson(v));
      });
    }
    if (json['genchk_oil_tr_tem'] != null) {
      _genchkOilTrTem = [];
      json['genchk_oil_tr_tem'].forEach((v) {
        _genchkOilTrTem?.add(GenchkOilTrTem.fromJson(v));
      });
    }
    if (json['genchk_brk_oil_tem'] != null) {
      _genchkBrkOilTem = [];
      json['genchk_brk_oil_tem'].forEach((v) {
        _genchkBrkOilTem?.add(GenchkBrkOilTem.fromJson(v));
      });
    }
    if (json['at_copm'] != null) {
      _atCopm = [];
      json['at_copm'].forEach((v) {
        _atCopm?.add(AtCopm.fromJson(v));
      });
    }
    if (json['lid_msr'] != null) {
      _lidMsr = [];
      json['lid_msr'].forEach((v) {
        _lidMsr?.add(LidMsr.fromJson(v));
      });
    }
    if (json['lid_line_event'] != null) {
      _lidLineEvent = [];
      json['lid_line_event'].forEach((v) {
        _lidLineEvent?.add(LidLineEvent.fromJson(v));
      });
    }
    if (json['sad_valid_sl_no'] != null) {
      _sadValidSlNo = [];
      json['sad_valid_sl_no'].forEach((v) {
        _sadValidSlNo?.add(SadValidSlNo.fromJson(v));
      });
    }
    if (json['sad_sel_ag_name'] != null) {
      _sadSelAgName = [];
      json['sad_sel_ag_name'].forEach((v) {
        _sadSelAgName?.add(SadSelAgName.fromJson(v));
      });
    }
  }
  List<HdnTaxType>? _hdnTaxType;
  List<SrSystemAffected>? _srSystemAffected;
  List<SrWarStatus>? _srWarStatus;
  List<SrTicketType>? _srTicketType;
  List<SrActionOne>? _srActionOne;
  List<SrActionTwo>? _srActionTwo;
  List<SrReplaceAction>? _srReplaceAction;
  List<SrEquipStatus>? _srEquipStatus;
  List<TypeOfConrt>? _typeOfConrt;
  List<GenchkEngine>? _genchkEngine;
  List<GenchkOilPressure>? _genchkOilPressure;
  List<GenchkOilTemperature>? _genchkOilTemperature;
  List<GenchkCoolantTemperature>? _genchkCoolantTemperature;
  List<GenchkTransmission>? _genchkTransmission;
  List<GenchkBrake>? _genchkBrake;
  List<GenchkAirPressure>? _genchkAirPressure;
  List<GenchkElectrical>? _genchkElectrical;
  List<GenchkMotor>? _genchkMotor;
  List<GenchkTransformer>? _genchkTransformer;
  List<GenchkFieldSwitch>? _genchkFieldSwitch;
  List<GenchkAutoElectricalSystem>? _genchkAutoElectricalSystem;
  List<GenchkBatteryVoltage>? _genchkBatteryVoltage;
  List<GenchkHydraulic>? _genchkHydraulic;
  List<GenchkCylinders>? _genchkCylinders;
  List<GenchkSuspension>? _genchkSuspension;
  List<GenchkPumps>? _genchkPumps;
  List<GenchkOilCooler>? _genchkOilCooler;
  List<GenchkStructure>? _genchkStructure;
  List<GenchkAutoLubrication>? _genchkAutoLubrication;
  List<GenchkAirConditionn>? _genchkAirConditionn;
  List<GenchkAutoFireProtection>? _genchkAutoFireProtection;
  List<GenchkHiVoltEleSystem>? _genchkHiVoltEleSystem;
  List<FailDeFailureOnAccountOf>? _failDeFailureOnAccountOf;
  List<FailDePartPertainsTo>? _failDePartPertainsTo;
  List<FailDeSapNotiType>? _failDeSapNotiType;
  List<FailDeFailureInvestigation>? _failDeFailureInvestigation;
  List<FdSubDiv>? _fdSubDiv;
  List<EqSrEquipModel>? _eqSrEquipModel;
  List<FdEqStaBsr>? _fdEqStaBsr;
  List<SrDesignaion>? _srDesignaion;
  List<SrRegionalOffice>? _srRegionalOffice;
  List<DistOffOrActCen>? _distOffOrActCen;
  List<EqStaAftActTaken>? _eqStaAftActTaken;
  List<OffOnAccountOf>? _offOnAccountOf;
  List<FailDeTypeOfDamage>? _failDeTypeOfDamage;
  List<FailDeSystemAffected>? _failDeSystemAffected;
  List<FailDePartsAffected>? _failDePartsAffected;
  List<TckDetPurpose>? _tckDetPurpose;
  List<MtMajorAggrts>? _mtMajorAggrts;
  List<MtPdicalMaintType>? _mtPdicalMaintType;
  List<ModOfSubAmbly>? _modOfSubAmbly;
  List<WarClaimDte>? _warClaimDte;
  List<SadLineStatus>? _sadLineStatus;
  List<SadLineEvent>? _sadLineEvent;
  List<EcdCanBeCom>? _ecdCanBeCom;
  List<SadWarStartCon>? _sadWarStartCon;
  List<SadTypeOfSubAss>? _sadTypeOfSubAss;
  List<SadWarTerm>? _sadWarTerm;
  List<SadWarTermApp>? _sadWarTermApp;
  List<SadSuAssSrp>? _sadSuAssSrp;
  List<SadSuAssModSrp>? _sadSuAssModSrp;
  List<AtSais>? _atSais;
  List<AtOnAccountOf>? _atOnAccountOf;
  List<AtDmStatus>? _atDmStatus;
  List<DmdSystem>? _dmdSystem;
  List<WarWarable>? _warWarable;
  List<EqStaAftActTSub>? _eqStaAftActTSub;
  List<VendorItem>? _vendorItem;
  List<AtBrkdnSrReq>? _atBrkdnSrReq;
  List<GenchkOilPreTr>? _genchkOilPreTr;
  List<GenchkOilTrTem>? _genchkOilTrTem;
  List<GenchkBrkOilTem>? _genchkBrkOilTem;
  List<AtCopm>? _atCopm;
  List<LidMsr>? _lidMsr;
  List<LidLineEvent>? _lidLineEvent;
  List<SadValidSlNo>? _sadValidSlNo;
  List<SadSelAgName>? _sadSelAgName;
  Data copyWith({
    List<HdnTaxType>? hdnTaxType,
    List<SrSystemAffected>? srSystemAffected,
    List<SrWarStatus>? srWarStatus,
    List<SrTicketType>? srTicketType,
    List<SrActionOne>? srActionOne,
    List<SrActionTwo>? srActionTwo,
    List<SrReplaceAction>? srReplaceAction,
    List<SrEquipStatus>? srEquipStatus,
    List<TypeOfConrt>? typeOfConrt,
    List<GenchkEngine>? genchkEngine,
    List<GenchkOilPressure>? genchkOilPressure,
    List<GenchkOilTemperature>? genchkOilTemperature,
    List<GenchkCoolantTemperature>? genchkCoolantTemperature,
    List<GenchkTransmission>? genchkTransmission,
    List<GenchkBrake>? genchkBrake,
    List<GenchkAirPressure>? genchkAirPressure,
    List<GenchkElectrical>? genchkElectrical,
    List<GenchkMotor>? genchkMotor,
    List<GenchkTransformer>? genchkTransformer,
    List<GenchkFieldSwitch>? genchkFieldSwitch,
    List<GenchkAutoElectricalSystem>? genchkAutoElectricalSystem,
    List<GenchkBatteryVoltage>? genchkBatteryVoltage,
    List<GenchkHydraulic>? genchkHydraulic,
    List<GenchkCylinders>? genchkCylinders,
    List<GenchkSuspension>? genchkSuspension,
    List<GenchkPumps>? genchkPumps,
    List<GenchkOilCooler>? genchkOilCooler,
    List<GenchkStructure>? genchkStructure,
    List<GenchkAutoLubrication>? genchkAutoLubrication,
    List<GenchkAirConditionn>? genchkAirConditionn,
    List<GenchkAutoFireProtection>? genchkAutoFireProtection,
    List<GenchkHiVoltEleSystem>? genchkHiVoltEleSystem,
    List<FailDeFailureOnAccountOf>? failDeFailureOnAccountOf,
    List<FailDePartPertainsTo>? failDePartPertainsTo,
    List<FailDeSapNotiType>? failDeSapNotiType,
    List<FailDeFailureInvestigation>? failDeFailureInvestigation,
    List<FdSubDiv>? fdSubDiv,
    List<EqSrEquipModel>? eqSrEquipModel,
    List<FdEqStaBsr>? fdEqStaBsr,
    List<SrDesignaion>? srDesignaion,
    List<SrRegionalOffice>? srRegionalOffice,
    List<DistOffOrActCen>? distOffOrActCen,
    List<EqStaAftActTaken>? eqStaAftActTaken,
    List<OffOnAccountOf>? offOnAccountOf,
    List<FailDeTypeOfDamage>? failDeTypeOfDamage,
    List<FailDeSystemAffected>? failDeSystemAffected,
    List<FailDePartsAffected>? failDePartsAffected,
    List<TckDetPurpose>? tckDetPurpose,
    List<MtMajorAggrts>? mtMajorAggrts,
    List<MtPdicalMaintType>? mtPdicalMaintType,
    List<ModOfSubAmbly>? modOfSubAmbly,
    List<WarClaimDte>? warClaimDte,
    List<SadLineStatus>? sadLineStatus,
    List<SadLineEvent>? sadLineEvent,
    List<EcdCanBeCom>? ecdCanBeCom,
    List<SadWarStartCon>? sadWarStartCon,
    List<SadTypeOfSubAss>? sadTypeOfSubAss,
    List<SadWarTerm>? sadWarTerm,
    List<SadWarTermApp>? sadWarTermApp,
    List<SadSuAssSrp>? sadSuAssSrp,
    List<SadSuAssModSrp>? sadSuAssModSrp,
    List<AtSais>? atSais,
    List<AtOnAccountOf>? atOnAccountOf,
    List<AtDmStatus>? atDmStatus,
    List<DmdSystem>? dmdSystem,
    List<WarWarable>? warWarable,
    List<EqStaAftActTSub>? eqStaAftActTSub,
    List<VendorItem>? vendorItem,
    List<AtBrkdnSrReq>? atBrkdnSrReq,
    List<GenchkOilPreTr>? genchkOilPreTr,
    List<GenchkOilTrTem>? genchkOilTrTem,
    List<GenchkBrkOilTem>? genchkBrkOilTem,
    List<AtCopm>? atCopm,
    List<LidMsr>? lidMsr,
    List<LidLineEvent>? lidLineEvent,
    List<SadValidSlNo>? sadValidSlNo,
    List<SadSelAgName>? sadSelAgName,
  }) =>
      Data(
        hdnTaxType: hdnTaxType ?? _hdnTaxType,
        srSystemAffected: srSystemAffected ?? _srSystemAffected,
        srWarStatus: srWarStatus ?? _srWarStatus,
        srTicketType: srTicketType ?? _srTicketType,
        srActionOne: srActionOne ?? _srActionOne,
        srActionTwo: srActionTwo ?? _srActionTwo,
        srReplaceAction: srReplaceAction ?? _srReplaceAction,
        srEquipStatus: srEquipStatus ?? _srEquipStatus,
        typeOfConrt: typeOfConrt ?? _typeOfConrt,
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
        genchkHydraulic: genchkHydraulic ?? _genchkHydraulic,
        genchkCylinders: genchkCylinders ?? _genchkCylinders,
        genchkSuspension: genchkSuspension ?? _genchkSuspension,
        genchkPumps: genchkPumps ?? _genchkPumps,
        genchkOilCooler: genchkOilCooler ?? _genchkOilCooler,
        genchkStructure: genchkStructure ?? _genchkStructure,
        genchkAutoLubrication: genchkAutoLubrication ?? _genchkAutoLubrication,
        genchkAirConditionn: genchkAirConditionn ?? _genchkAirConditionn,
        genchkAutoFireProtection:
            genchkAutoFireProtection ?? _genchkAutoFireProtection,
        genchkHiVoltEleSystem: genchkHiVoltEleSystem ?? _genchkHiVoltEleSystem,
        failDeFailureOnAccountOf:
            failDeFailureOnAccountOf ?? _failDeFailureOnAccountOf,
        failDePartPertainsTo: failDePartPertainsTo ?? _failDePartPertainsTo,
        failDeSapNotiType: failDeSapNotiType ?? _failDeSapNotiType,
        failDeFailureInvestigation:
            failDeFailureInvestigation ?? _failDeFailureInvestigation,
        fdSubDiv: fdSubDiv ?? _fdSubDiv,
        eqSrEquipModel: eqSrEquipModel ?? _eqSrEquipModel,
        fdEqStaBsr: fdEqStaBsr ?? _fdEqStaBsr,
        srDesignaion: srDesignaion ?? _srDesignaion,
        srRegionalOffice: srRegionalOffice ?? _srRegionalOffice,
        distOffOrActCen: distOffOrActCen ?? _distOffOrActCen,
        eqStaAftActTaken: eqStaAftActTaken ?? _eqStaAftActTaken,
        offOnAccountOf: offOnAccountOf ?? _offOnAccountOf,
        failDeTypeOfDamage: failDeTypeOfDamage ?? _failDeTypeOfDamage,
        failDeSystemAffected: failDeSystemAffected ?? _failDeSystemAffected,
        failDePartsAffected: failDePartsAffected ?? _failDePartsAffected,
        tckDetPurpose: tckDetPurpose ?? _tckDetPurpose,
        mtMajorAggrts: mtMajorAggrts ?? _mtMajorAggrts,
        mtPdicalMaintType: mtPdicalMaintType ?? _mtPdicalMaintType,
        modOfSubAmbly: modOfSubAmbly ?? _modOfSubAmbly,
        warClaimDte: warClaimDte ?? _warClaimDte,
        sadLineStatus: sadLineStatus ?? _sadLineStatus,
        sadLineEvent: sadLineEvent ?? _sadLineEvent,
        ecdCanBeCom: ecdCanBeCom ?? _ecdCanBeCom,
        sadWarStartCon: sadWarStartCon ?? _sadWarStartCon,
        sadTypeOfSubAss: sadTypeOfSubAss ?? _sadTypeOfSubAss,
        sadWarTerm: sadWarTerm ?? _sadWarTerm,
        sadWarTermApp: sadWarTermApp ?? _sadWarTermApp,
        sadSuAssSrp: sadSuAssSrp ?? _sadSuAssSrp,
        sadSuAssModSrp: sadSuAssModSrp ?? _sadSuAssModSrp,
        atSais: atSais ?? _atSais,
        atOnAccountOf: atOnAccountOf ?? _atOnAccountOf,
        atDmStatus: atDmStatus ?? _atDmStatus,
        dmdSystem: dmdSystem ?? _dmdSystem,
        warWarable: warWarable ?? _warWarable,
        eqStaAftActTSub: eqStaAftActTSub ?? _eqStaAftActTSub,
        vendorItem: vendorItem ?? _vendorItem,
        atBrkdnSrReq: atBrkdnSrReq ?? _atBrkdnSrReq,
        genchkOilPreTr: genchkOilPreTr ?? _genchkOilPreTr,
        genchkOilTrTem: genchkOilTrTem ?? _genchkOilTrTem,
        genchkBrkOilTem: genchkBrkOilTem ?? _genchkBrkOilTem,
        atCopm: atCopm ?? _atCopm,
        lidMsr: lidMsr ?? _lidMsr,
        lidLineEvent: lidLineEvent ?? _lidLineEvent,
        sadValidSlNo: sadValidSlNo ?? _sadValidSlNo,
        sadSelAgName: sadSelAgName ?? _sadSelAgName,
      );
  List<HdnTaxType>? get hdnTaxType => _hdnTaxType;
  List<SrSystemAffected>? get srSystemAffected => _srSystemAffected;
  List<SrWarStatus>? get srWarStatus => _srWarStatus;
  List<SrTicketType>? get srTicketType => _srTicketType;
  List<SrActionOne>? get srActionOne => _srActionOne;
  List<SrActionTwo>? get srActionTwo => _srActionTwo;
  List<SrReplaceAction>? get srReplaceAction => _srReplaceAction;
  List<SrEquipStatus>? get srEquipStatus => _srEquipStatus;
  List<TypeOfConrt>? get typeOfConrt => _typeOfConrt;
  List<GenchkEngine>? get genchkEngine => _genchkEngine;
  List<GenchkOilPressure>? get genchkOilPressure => _genchkOilPressure;
  List<GenchkOilTemperature>? get genchkOilTemperature => _genchkOilTemperature;
  List<GenchkCoolantTemperature>? get genchkCoolantTemperature =>
      _genchkCoolantTemperature;
  List<GenchkTransmission>? get genchkTransmission => _genchkTransmission;
  List<GenchkBrake>? get genchkBrake => _genchkBrake;
  List<GenchkAirPressure>? get genchkAirPressure => _genchkAirPressure;
  List<GenchkElectrical>? get genchkElectrical => _genchkElectrical;
  List<GenchkMotor>? get genchkMotor => _genchkMotor;
  List<GenchkTransformer>? get genchkTransformer => _genchkTransformer;
  List<GenchkFieldSwitch>? get genchkFieldSwitch => _genchkFieldSwitch;
  List<GenchkAutoElectricalSystem>? get genchkAutoElectricalSystem =>
      _genchkAutoElectricalSystem;
  List<GenchkBatteryVoltage>? get genchkBatteryVoltage => _genchkBatteryVoltage;
  List<GenchkHydraulic>? get genchkHydraulic => _genchkHydraulic;
  List<GenchkCylinders>? get genchkCylinders => _genchkCylinders;
  List<GenchkSuspension>? get genchkSuspension => _genchkSuspension;
  List<GenchkPumps>? get genchkPumps => _genchkPumps;
  List<GenchkOilCooler>? get genchkOilCooler => _genchkOilCooler;
  List<GenchkStructure>? get genchkStructure => _genchkStructure;
  List<GenchkAutoLubrication>? get genchkAutoLubrication =>
      _genchkAutoLubrication;
  List<GenchkAirConditionn>? get genchkAirConditionn => _genchkAirConditionn;
  List<GenchkAutoFireProtection>? get genchkAutoFireProtection =>
      _genchkAutoFireProtection;
  List<GenchkHiVoltEleSystem>? get genchkHiVoltEleSystem =>
      _genchkHiVoltEleSystem;
  List<FailDeFailureOnAccountOf>? get failDeFailureOnAccountOf =>
      _failDeFailureOnAccountOf;
  List<FailDePartPertainsTo>? get failDePartPertainsTo => _failDePartPertainsTo;
  List<FailDeSapNotiType>? get failDeSapNotiType => _failDeSapNotiType;
  List<FailDeFailureInvestigation>? get failDeFailureInvestigation =>
      _failDeFailureInvestigation;
  List<FdSubDiv>? get fdSubDiv => _fdSubDiv;
  List<EqSrEquipModel>? get eqSrEquipModel => _eqSrEquipModel;
  List<FdEqStaBsr>? get fdEqStaBsr => _fdEqStaBsr;
  List<SrDesignaion>? get srDesignaion => _srDesignaion;
  List<SrRegionalOffice>? get srRegionalOffice => _srRegionalOffice;
  List<DistOffOrActCen>? get distOffOrActCen => _distOffOrActCen;
  List<EqStaAftActTaken>? get eqStaAftActTaken => _eqStaAftActTaken;
  List<OffOnAccountOf>? get offOnAccountOf => _offOnAccountOf;
  List<FailDeTypeOfDamage>? get failDeTypeOfDamage => _failDeTypeOfDamage;
  List<FailDeSystemAffected>? get failDeSystemAffected => _failDeSystemAffected;
  List<FailDePartsAffected>? get failDePartsAffected => _failDePartsAffected;
  List<TckDetPurpose>? get tckDetPurpose => _tckDetPurpose;
  List<MtMajorAggrts>? get mtMajorAggrts => _mtMajorAggrts;
  List<MtPdicalMaintType>? get mtPdicalMaintType => _mtPdicalMaintType;
  List<ModOfSubAmbly>? get modOfSubAmbly => _modOfSubAmbly;
  List<WarClaimDte>? get warClaimDte => _warClaimDte;
  List<SadLineStatus>? get sadLineStatus => _sadLineStatus;
  List<SadLineEvent>? get sadLineEvent => _sadLineEvent;
  List<EcdCanBeCom>? get ecdCanBeCom => _ecdCanBeCom;
  List<SadWarStartCon>? get sadWarStartCon => _sadWarStartCon;
  List<SadTypeOfSubAss>? get sadTypeOfSubAss => _sadTypeOfSubAss;
  List<SadWarTerm>? get sadWarTerm => _sadWarTerm;
  List<SadWarTermApp>? get sadWarTermApp => _sadWarTermApp;
  List<SadSuAssSrp>? get sadSuAssSrp => _sadSuAssSrp;
  List<SadSuAssModSrp>? get sadSuAssModSrp => _sadSuAssModSrp;
  List<AtSais>? get atSais => _atSais;
  List<AtOnAccountOf>? get atOnAccountOf => _atOnAccountOf;
  List<AtDmStatus>? get atDmStatus => _atDmStatus;
  List<DmdSystem>? get dmdSystem => _dmdSystem;
  List<WarWarable>? get warWarable => _warWarable;
  List<EqStaAftActTSub>? get eqStaAftActTSub => _eqStaAftActTSub;
  List<VendorItem>? get vendorItem => _vendorItem;
  List<AtBrkdnSrReq>? get atBrkdnSrReq => _atBrkdnSrReq;
  List<GenchkOilPreTr>? get genchkOilPreTr => _genchkOilPreTr;
  List<GenchkOilTrTem>? get genchkOilTrTem => _genchkOilTrTem;
  List<GenchkBrkOilTem>? get genchkBrkOilTem => _genchkBrkOilTem;
  List<AtCopm>? get atCopm => _atCopm;
  List<LidMsr>? get lidMsr => _lidMsr;
  List<LidLineEvent>? get lidLineEvent => _lidLineEvent;
  List<SadValidSlNo>? get sadValidSlNo => _sadValidSlNo;
  List<SadSelAgName>? get sadSelAgName => _sadSelAgName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_hdnTaxType != null) {
      map['hdnTaxType'] = _hdnTaxType?.map((v) => v.toJson()).toList();
    }
    if (_srSystemAffected != null) {
      map['sr_system_affected'] =
          _srSystemAffected?.map((v) => v.toJson()).toList();
    }
    if (_srWarStatus != null) {
      map['sr_war_status'] = _srWarStatus?.map((v) => v.toJson()).toList();
    }
    if (_srTicketType != null) {
      map['sr_ticket_type'] = _srTicketType?.map((v) => v.toJson()).toList();
    }
    if (_srActionOne != null) {
      map['sr_action_one'] = _srActionOne?.map((v) => v.toJson()).toList();
    }
    if (_srActionTwo != null) {
      map['sr_action_two'] = _srActionTwo?.map((v) => v.toJson()).toList();
    }
    if (_srReplaceAction != null) {
      map['sr_replace_action'] =
          _srReplaceAction?.map((v) => v.toJson()).toList();
    }
    if (_srEquipStatus != null) {
      map['sr_equip_status'] = _srEquipStatus?.map((v) => v.toJson()).toList();
    }
    if (_typeOfConrt != null) {
      map['type_of_conrt'] = _typeOfConrt?.map((v) => v.toJson()).toList();
    }
    if (_genchkEngine != null) {
      map['genchk_engine'] = _genchkEngine?.map((v) => v.toJson()).toList();
    }
    if (_genchkOilPressure != null) {
      map['genchk_oil_pressure'] =
          _genchkOilPressure?.map((v) => v.toJson()).toList();
    }
    if (_genchkOilTemperature != null) {
      map['genchk_oil_temperature'] =
          _genchkOilTemperature?.map((v) => v.toJson()).toList();
    }
    if (_genchkCoolantTemperature != null) {
      map['genchk_coolant_temperature'] =
          _genchkCoolantTemperature?.map((v) => v.toJson()).toList();
    }
    if (_genchkTransmission != null) {
      map['genchk_transmission'] =
          _genchkTransmission?.map((v) => v.toJson()).toList();
    }
    if (_genchkBrake != null) {
      map['genchk_brake'] = _genchkBrake?.map((v) => v.toJson()).toList();
    }
    if (_genchkAirPressure != null) {
      map['genchk_air_pressure'] =
          _genchkAirPressure?.map((v) => v.toJson()).toList();
    }
    if (_genchkElectrical != null) {
      map['genchk_electrical'] =
          _genchkElectrical?.map((v) => v.toJson()).toList();
    }
    if (_genchkMotor != null) {
      map['genchk_motor'] = _genchkMotor?.map((v) => v.toJson()).toList();
    }
    if (_genchkTransformer != null) {
      map['genchk_transformer'] =
          _genchkTransformer?.map((v) => v.toJson()).toList();
    }
    if (_genchkFieldSwitch != null) {
      map['genchk_field_switch'] =
          _genchkFieldSwitch?.map((v) => v.toJson()).toList();
    }
    if (_genchkAutoElectricalSystem != null) {
      map['genchk_auto_electrical_system'] =
          _genchkAutoElectricalSystem?.map((v) => v.toJson()).toList();
    }
    if (_genchkBatteryVoltage != null) {
      map['genchk_battery_voltage'] =
          _genchkBatteryVoltage?.map((v) => v.toJson()).toList();
    }
    if (_genchkHydraulic != null) {
      map['genchk_hydraulic'] =
          _genchkHydraulic?.map((v) => v.toJson()).toList();
    }
    if (_genchkCylinders != null) {
      map['genchk_cylinders'] =
          _genchkCylinders?.map((v) => v.toJson()).toList();
    }
    if (_genchkSuspension != null) {
      map['genchk_suspension'] =
          _genchkSuspension?.map((v) => v.toJson()).toList();
    }
    if (_genchkPumps != null) {
      map['genchk_pumps'] = _genchkPumps?.map((v) => v.toJson()).toList();
    }
    if (_genchkOilCooler != null) {
      map['genchk_oil_cooler'] =
          _genchkOilCooler?.map((v) => v.toJson()).toList();
    }
    if (_genchkStructure != null) {
      map['genchk_structure'] =
          _genchkStructure?.map((v) => v.toJson()).toList();
    }
    if (_genchkAutoLubrication != null) {
      map['genchk_auto_lubrication'] =
          _genchkAutoLubrication?.map((v) => v.toJson()).toList();
    }
    if (_genchkAirConditionn != null) {
      map['genchk_air_conditionn'] =
          _genchkAirConditionn?.map((v) => v.toJson()).toList();
    }
    if (_genchkAutoFireProtection != null) {
      map['genchk_auto_fire_protection'] =
          _genchkAutoFireProtection?.map((v) => v.toJson()).toList();
    }
    if (_genchkHiVoltEleSystem != null) {
      map['genchk_hi_volt_ele_system'] =
          _genchkHiVoltEleSystem?.map((v) => v.toJson()).toList();
    }
    if (_failDeFailureOnAccountOf != null) {
      map['fail_de_failure_on_account_of'] =
          _failDeFailureOnAccountOf?.map((v) => v.toJson()).toList();
    }
    if (_failDePartPertainsTo != null) {
      map['fail_de_part_pertains_to'] =
          _failDePartPertainsTo?.map((v) => v.toJson()).toList();
    }
    if (_failDeSapNotiType != null) {
      map['fail_de_sap_noti_type'] =
          _failDeSapNotiType?.map((v) => v.toJson()).toList();
    }
    if (_failDeFailureInvestigation != null) {
      map['fail_de_failure_investigation'] =
          _failDeFailureInvestigation?.map((v) => v.toJson()).toList();
    }
    if (_fdSubDiv != null) {
      map['fd_sub_div'] = _fdSubDiv?.map((v) => v.toJson()).toList();
    }
    if (_eqSrEquipModel != null) {
      map['eq_sr_equip_model'] =
          _eqSrEquipModel?.map((v) => v.toJson()).toList();
    }
    if (_fdEqStaBsr != null) {
      map['fd_eq_sta_bsr'] = _fdEqStaBsr?.map((v) => v.toJson()).toList();
    }
    if (_srDesignaion != null) {
      map['sr_designaion'] = _srDesignaion?.map((v) => v.toJson()).toList();
    }
    if (_srRegionalOffice != null) {
      map['sr_regional_office'] =
          _srRegionalOffice?.map((v) => v.toJson()).toList();
    }
    if (_distOffOrActCen != null) {
      map['dist_off_or_act_cen'] =
          _distOffOrActCen?.map((v) => v.toJson()).toList();
    }
    if (_eqStaAftActTaken != null) {
      map['eq_sta_aft_act_taken'] =
          _eqStaAftActTaken?.map((v) => v.toJson()).toList();
    }
    if (_offOnAccountOf != null) {
      map['off_on_account_of'] =
          _offOnAccountOf?.map((v) => v.toJson()).toList();
    }
    if (_failDeTypeOfDamage != null) {
      map['fail_de_type_of_damage'] =
          _failDeTypeOfDamage?.map((v) => v.toJson()).toList();
    }
    if (_failDeSystemAffected != null) {
      map['fail_de_system_affected'] =
          _failDeSystemAffected?.map((v) => v.toJson()).toList();
    }
    if (_failDePartsAffected != null) {
      map['fail_de_parts_affected'] =
          _failDePartsAffected?.map((v) => v.toJson()).toList();
    }
    if (_tckDetPurpose != null) {
      map['tck_det_purpose'] = _tckDetPurpose?.map((v) => v.toJson()).toList();
    }
    if (_mtMajorAggrts != null) {
      map['mt_major_aggrts'] = _mtMajorAggrts?.map((v) => v.toJson()).toList();
    }
    if (_mtPdicalMaintType != null) {
      map['mt_pdical_maint_type'] =
          _mtPdicalMaintType?.map((v) => v.toJson()).toList();
    }
    if (_modOfSubAmbly != null) {
      map['mod_of_sub_ambly'] = _modOfSubAmbly?.map((v) => v.toJson()).toList();
    }
    if (_warClaimDte != null) {
      map['war_claim_dte'] = _warClaimDte?.map((v) => v.toJson()).toList();
    }
    if (_sadLineStatus != null) {
      map['sad_line_status'] = _sadLineStatus?.map((v) => v.toJson()).toList();
    }
    if (_sadLineEvent != null) {
      map['sad_line_event'] = _sadLineEvent?.map((v) => v.toJson()).toList();
    }
    if (_ecdCanBeCom != null) {
      map['ecd_can_be_com'] = _ecdCanBeCom?.map((v) => v.toJson()).toList();
    }
    if (_sadWarStartCon != null) {
      map['sad_war_start_con'] =
          _sadWarStartCon?.map((v) => v.toJson()).toList();
    }
    if (_sadTypeOfSubAss != null) {
      map['sad_type_of_sub_ass'] =
          _sadTypeOfSubAss?.map((v) => v.toJson()).toList();
    }
    if (_sadWarTerm != null) {
      map['sad_war_term'] = _sadWarTerm?.map((v) => v.toJson()).toList();
    }
    if (_sadWarTermApp != null) {
      map['sad_war_term_app'] = _sadWarTermApp?.map((v) => v.toJson()).toList();
    }
    if (_sadSuAssSrp != null) {
      map['sad_su_ass_srp'] = _sadSuAssSrp?.map((v) => v.toJson()).toList();
    }
    if (_sadSuAssModSrp != null) {
      map['sad_su_ass_mod_srp'] =
          _sadSuAssModSrp?.map((v) => v.toJson()).toList();
    }
    if (_atSais != null) {
      map['at_sais'] = _atSais?.map((v) => v.toJson()).toList();
    }
    if (_atOnAccountOf != null) {
      map['at_on_account_of'] = _atOnAccountOf?.map((v) => v.toJson()).toList();
    }
    if (_atDmStatus != null) {
      map['at_dm_status'] = _atDmStatus?.map((v) => v.toJson()).toList();
    }
    if (_dmdSystem != null) {
      map['dmd_system'] = _dmdSystem?.map((v) => v.toJson()).toList();
    }
    if (_warWarable != null) {
      map['war_warable'] = _warWarable?.map((v) => v.toJson()).toList();
    }
    if (_eqStaAftActTSub != null) {
      map['eq_sta_aft_act_t_sub'] =
          _eqStaAftActTSub?.map((v) => v.toJson()).toList();
    }
    if (_vendorItem != null) {
      map['vendor_item'] = _vendorItem?.map((v) => v.toJson()).toList();
    }
    if (_atBrkdnSrReq != null) {
      map['at_brkdn_sr_req'] = _atBrkdnSrReq?.map((v) => v.toJson()).toList();
    }
    if (_genchkOilPreTr != null) {
      map['genchk_oil_pre_tr'] =
          _genchkOilPreTr?.map((v) => v.toJson()).toList();
    }
    if (_genchkOilTrTem != null) {
      map['genchk_oil_tr_tem'] =
          _genchkOilTrTem?.map((v) => v.toJson()).toList();
    }
    if (_genchkBrkOilTem != null) {
      map['genchk_brk_oil_tem'] =
          _genchkBrkOilTem?.map((v) => v.toJson()).toList();
    }
    if (_atCopm != null) {
      map['at_copm'] = _atCopm?.map((v) => v.toJson()).toList();
    }
    if (_lidMsr != null) {
      map['lid_msr'] = _lidMsr?.map((v) => v.toJson()).toList();
    }
    if (_lidLineEvent != null) {
      map['lid_line_event'] = _lidLineEvent?.map((v) => v.toJson()).toList();
    }
    if (_sadValidSlNo != null) {
      map['sad_valid_sl_no'] = _sadValidSlNo?.map((v) => v.toJson()).toList();
    }
    if (_sadSelAgName != null) {
      map['sad_sel_ag_name'] = _sadSelAgName?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// sad_sel_ag_name : "Engine"

SadSelAgName sadSelAgNameFromJson(String str) =>
    SadSelAgName.fromJson(json.decode(str));
String sadSelAgNameToJson(SadSelAgName data) => json.encode(data.toJson());

class SadSelAgName {
  SadSelAgName({
    String? sadSelAgName,
  }) {
    _sadSelAgName = sadSelAgName;
  }

  SadSelAgName.fromJson(dynamic json) {
    _sadSelAgName = json['sad_sel_ag_name'];
  }
  String? _sadSelAgName;
  SadSelAgName copyWith({
    String? sadSelAgName,
  }) =>
      SadSelAgName(
        sadSelAgName: sadSelAgName ?? _sadSelAgName,
      );
  String? get sadSelAgName => _sadSelAgName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_sel_ag_name'] = _sadSelAgName;
    return map;
  }
}

/// sad_valid_sl_no : "Yes"

SadValidSlNo sadValidSlNoFromJson(String str) =>
    SadValidSlNo.fromJson(json.decode(str));
String sadValidSlNoToJson(SadValidSlNo data) => json.encode(data.toJson());

class SadValidSlNo {
  SadValidSlNo({
    String? sadValidSlNo,
  }) {
    _sadValidSlNo = sadValidSlNo;
  }

  SadValidSlNo.fromJson(dynamic json) {
    _sadValidSlNo = json['sad_valid_sl_no'];
  }
  String? _sadValidSlNo;
  SadValidSlNo copyWith({
    String? sadValidSlNo,
  }) =>
      SadValidSlNo(
        sadValidSlNo: sadValidSlNo ?? _sadValidSlNo,
      );
  String? get sadValidSlNo => _sadValidSlNo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_valid_sl_no'] = _sadValidSlNo;
    return map;
  }
}

/// lid_line_event : "Damage in Transit"

LidLineEvent lidLineEventFromJson(String str) =>
    LidLineEvent.fromJson(json.decode(str));
String lidLineEventToJson(LidLineEvent data) => json.encode(data.toJson());

class LidLineEvent {
  LidLineEvent({
    String? lidLineEvent,
  }) {
    _lidLineEvent = lidLineEvent;
  }

  LidLineEvent.fromJson(dynamic json) {
    _lidLineEvent = json['lid_line_event'];
  }
  String? _lidLineEvent;
  LidLineEvent copyWith({
    String? lidLineEvent,
  }) =>
      LidLineEvent(
        lidLineEvent: lidLineEvent ?? _lidLineEvent,
      );
  String? get lidLineEvent => _lidLineEvent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lid_line_event'] = _lidLineEvent;
    return map;
  }
}

/// lid_msr : "Customer"

LidMsr lidMsrFromJson(String str) => LidMsr.fromJson(json.decode(str));
String lidMsrToJson(LidMsr data) => json.encode(data.toJson());

class LidMsr {
  LidMsr({
    String? lidMsr,
  }) {
    _lidMsr = lidMsr;
  }

  LidMsr.fromJson(dynamic json) {
    _lidMsr = json['lid_msr'];
  }
  String? _lidMsr;
  LidMsr copyWith({
    String? lidMsr,
  }) =>
      LidMsr(
        lidMsr: lidMsr ?? _lidMsr,
      );
  String? get lidMsr => _lidMsr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lid_msr'] = _lidMsr;
    return map;
  }
}

/// at_copm : "Completed"

AtCopm atCopmFromJson(String str) => AtCopm.fromJson(json.decode(str));
String atCopmToJson(AtCopm data) => json.encode(data.toJson());

class AtCopm {
  AtCopm({
    String? atCopm,
  }) {
    _atCopm = atCopm;
  }

  AtCopm.fromJson(dynamic json) {
    _atCopm = json['at_copm'];
  }
  String? _atCopm;
  AtCopm copyWith({
    String? atCopm,
  }) =>
      AtCopm(
        atCopm: atCopm ?? _atCopm,
      );
  String? get atCopm => _atCopm;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['at_copm'] = _atCopm;
    return map;
  }
}

/// genchk_brk_oil_tem : "OK"

GenchkBrkOilTem genchkBrkOilTemFromJson(String str) =>
    GenchkBrkOilTem.fromJson(json.decode(str));
String genchkBrkOilTemToJson(GenchkBrkOilTem data) =>
    json.encode(data.toJson());

class GenchkBrkOilTem {
  GenchkBrkOilTem({
    String? genchkBrkOilTem,
  }) {
    _genchkBrkOilTem = genchkBrkOilTem;
  }

  GenchkBrkOilTem.fromJson(dynamic json) {
    _genchkBrkOilTem = json['genchk_brk_oil_tem'];
  }
  String? _genchkBrkOilTem;
  GenchkBrkOilTem copyWith({
    String? genchkBrkOilTem,
  }) =>
      GenchkBrkOilTem(
        genchkBrkOilTem: genchkBrkOilTem ?? _genchkBrkOilTem,
      );
  String? get genchkBrkOilTem => _genchkBrkOilTem;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_brk_oil_tem'] = _genchkBrkOilTem;
    return map;
  }
}

/// genchk_oil_tr_tem : "OK"

GenchkOilTrTem genchkOilTrTemFromJson(String str) =>
    GenchkOilTrTem.fromJson(json.decode(str));
String genchkOilTrTemToJson(GenchkOilTrTem data) => json.encode(data.toJson());

class GenchkOilTrTem {
  GenchkOilTrTem({
    String? genchkOilTrTem,
  }) {
    _genchkOilTrTem = genchkOilTrTem;
  }

  GenchkOilTrTem.fromJson(dynamic json) {
    _genchkOilTrTem = json['genchk_oil_tr_tem'];
  }
  String? _genchkOilTrTem;
  GenchkOilTrTem copyWith({
    String? genchkOilTrTem,
  }) =>
      GenchkOilTrTem(
        genchkOilTrTem: genchkOilTrTem ?? _genchkOilTrTem,
      );
  String? get genchkOilTrTem => _genchkOilTrTem;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_oil_tr_tem'] = _genchkOilTrTem;
    return map;
  }
}

/// genchk_oil_pre_tr : "OK"

GenchkOilPreTr genchkOilPreTrFromJson(String str) =>
    GenchkOilPreTr.fromJson(json.decode(str));
String genchkOilPreTrToJson(GenchkOilPreTr data) => json.encode(data.toJson());

class GenchkOilPreTr {
  GenchkOilPreTr({
    String? genchkOilPreTr,
  }) {
    _genchkOilPreTr = genchkOilPreTr;
  }

  GenchkOilPreTr.fromJson(dynamic json) {
    _genchkOilPreTr = json['genchk_oil_pre_tr'];
  }
  String? _genchkOilPreTr;
  GenchkOilPreTr copyWith({
    String? genchkOilPreTr,
  }) =>
      GenchkOilPreTr(
        genchkOilPreTr: genchkOilPreTr ?? _genchkOilPreTr,
      );
  String? get genchkOilPreTr => _genchkOilPreTr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_oil_pre_tr'] = _genchkOilPreTr;
    return map;
  }
}

/// at_brkdn_sr_req : "Yes"

AtBrkdnSrReq atBrkdnSrReqFromJson(String str) =>
    AtBrkdnSrReq.fromJson(json.decode(str));
String atBrkdnSrReqToJson(AtBrkdnSrReq data) => json.encode(data.toJson());

class AtBrkdnSrReq {
  AtBrkdnSrReq({
    String? atBrkdnSrReq,
  }) {
    _atBrkdnSrReq = atBrkdnSrReq;
  }

  AtBrkdnSrReq.fromJson(dynamic json) {
    _atBrkdnSrReq = json['at_brkdn_sr_req'];
  }
  String? _atBrkdnSrReq;
  AtBrkdnSrReq copyWith({
    String? atBrkdnSrReq,
  }) =>
      AtBrkdnSrReq(
        atBrkdnSrReq: atBrkdnSrReq ?? _atBrkdnSrReq,
      );
  String? get atBrkdnSrReq => _atBrkdnSrReq;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['at_brkdn_sr_req'] = _atBrkdnSrReq;
    return map;
  }
}

/// vendor_item : "AFDSS"

VendorItem vendorItemFromJson(String str) =>
    VendorItem.fromJson(json.decode(str));
String vendorItemToJson(VendorItem data) => json.encode(data.toJson());

class VendorItem {
  VendorItem({
    String? vendorItem,
  }) {
    _vendorItem = vendorItem;
  }

  VendorItem.fromJson(dynamic json) {
    _vendorItem = json['vendor_item'];
  }
  String? _vendorItem;
  VendorItem copyWith({
    String? vendorItem,
  }) =>
      VendorItem(
        vendorItem: vendorItem ?? _vendorItem,
      );
  String? get vendorItem => _vendorItem;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['vendor_item'] = _vendorItem;
    return map;
  }
}

/// eq_sta_aft_act_t_sub : "Not Working"

EqStaAftActTSub eqStaAftActTSubFromJson(String str) =>
    EqStaAftActTSub.fromJson(json.decode(str));
String eqStaAftActTSubToJson(EqStaAftActTSub data) =>
    json.encode(data.toJson());

class EqStaAftActTSub {
  EqStaAftActTSub({
    String? eqStaAftActTSub,
  }) {
    _eqStaAftActTSub = eqStaAftActTSub;
  }

  EqStaAftActTSub.fromJson(dynamic json) {
    _eqStaAftActTSub = json['eq_sta_aft_act_t_sub'];
  }
  String? _eqStaAftActTSub;
  EqStaAftActTSub copyWith({
    String? eqStaAftActTSub,
  }) =>
      EqStaAftActTSub(
        eqStaAftActTSub: eqStaAftActTSub ?? _eqStaAftActTSub,
      );
  String? get eqStaAftActTSub => _eqStaAftActTSub;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['eq_sta_aft_act_t_sub'] = _eqStaAftActTSub;
    return map;
  }
}

/// war_warable : "Yes"

WarWarable warWarableFromJson(String str) =>
    WarWarable.fromJson(json.decode(str));
String warWarableToJson(WarWarable data) => json.encode(data.toJson());

class WarWarable {
  WarWarable({
    String? warWarable,
  }) {
    _warWarable = warWarable;
  }

  WarWarable.fromJson(dynamic json) {
    _warWarable = json['war_warable'];
  }
  String? _warWarable;
  WarWarable copyWith({
    String? warWarable,
  }) =>
      WarWarable(
        warWarable: warWarable ?? _warWarable,
      );
  String? get warWarable => _warWarable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['war_warable'] = _warWarable;
    return map;
  }
}

/// dmd_system : "a"

DmdSystem dmdSystemFromJson(String str) => DmdSystem.fromJson(json.decode(str));
String dmdSystemToJson(DmdSystem data) => json.encode(data.toJson());

class DmdSystem {
  DmdSystem({
    String? dmdSystem,
  }) {
    _dmdSystem = dmdSystem;
  }

  DmdSystem.fromJson(dynamic json) {
    _dmdSystem = json['dmd_system'];
  }
  String? _dmdSystem;
  DmdSystem copyWith({
    String? dmdSystem,
  }) =>
      DmdSystem(
        dmdSystem: dmdSystem ?? _dmdSystem,
      );
  String? get dmdSystem => _dmdSystem;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dmd_system'] = _dmdSystem;
    return map;
  }
}

/// at_dm_status : "Completed"

AtDmStatus atDmStatusFromJson(String str) =>
    AtDmStatus.fromJson(json.decode(str));
String atDmStatusToJson(AtDmStatus data) => json.encode(data.toJson());

class AtDmStatus {
  AtDmStatus({
    String? atDmStatus,
  }) {
    _atDmStatus = atDmStatus;
  }

  AtDmStatus.fromJson(dynamic json) {
    _atDmStatus = json['at_dm_status'];
  }
  String? _atDmStatus;
  AtDmStatus copyWith({
    String? atDmStatus,
  }) =>
      AtDmStatus(
        atDmStatus: atDmStatus ?? _atDmStatus,
      );
  String? get atDmStatus => _atDmStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['at_dm_status'] = _atDmStatus;
    return map;
  }
}

/// at_on_account_of : "BEML"

AtOnAccountOf atOnAccountOfFromJson(String str) =>
    AtOnAccountOf.fromJson(json.decode(str));
String atOnAccountOfToJson(AtOnAccountOf data) => json.encode(data.toJson());

class AtOnAccountOf {
  AtOnAccountOf({
    String? atOnAccountOf,
  }) {
    _atOnAccountOf = atOnAccountOf;
  }

  AtOnAccountOf.fromJson(dynamic json) {
    _atOnAccountOf = json['at_on_account_of'];
  }
  String? _atOnAccountOf;
  AtOnAccountOf copyWith({
    String? atOnAccountOf,
  }) =>
      AtOnAccountOf(
        atOnAccountOf: atOnAccountOf ?? _atOnAccountOf,
      );
  String? get atOnAccountOf => _atOnAccountOf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['at_on_account_of'] = _atOnAccountOf;
    return map;
  }
}

/// at_sais : "Completed"

AtSais atSaisFromJson(String str) => AtSais.fromJson(json.decode(str));
String atSaisToJson(AtSais data) => json.encode(data.toJson());

class AtSais {
  AtSais({
    String? atSais,
  }) {
    _atSais = atSais;
  }

  AtSais.fromJson(dynamic json) {
    _atSais = json['at_sais'];
  }
  String? _atSais;
  AtSais copyWith({
    String? atSais,
  }) =>
      AtSais(
        atSais: atSais ?? _atSais,
      );
  String? get atSais => _atSais;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['at_sais'] = _atSais;
    return map;
  }
}

/// sad_su_ass_mod_srp : "BH100"

SadSuAssModSrp sadSuAssModSrpFromJson(String str) =>
    SadSuAssModSrp.fromJson(json.decode(str));
String sadSuAssModSrpToJson(SadSuAssModSrp data) => json.encode(data.toJson());

class SadSuAssModSrp {
  SadSuAssModSrp({
    String? sadSuAssModSrp,
  }) {
    _sadSuAssModSrp = sadSuAssModSrp;
  }

  SadSuAssModSrp.fromJson(dynamic json) {
    _sadSuAssModSrp = json['sad_su_ass_mod_srp'];
  }
  String? _sadSuAssModSrp;
  SadSuAssModSrp copyWith({
    String? sadSuAssModSrp,
  }) =>
      SadSuAssModSrp(
        sadSuAssModSrp: sadSuAssModSrp ?? _sadSuAssModSrp,
      );
  String? get sadSuAssModSrp => _sadSuAssModSrp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_su_ass_mod_srp'] = _sadSuAssModSrp;
    return map;
  }
}

/// sad_su_ass_srp : "Engine"

SadSuAssSrp sadSuAssSrpFromJson(String str) =>
    SadSuAssSrp.fromJson(json.decode(str));
String sadSuAssSrpToJson(SadSuAssSrp data) => json.encode(data.toJson());

class SadSuAssSrp {
  SadSuAssSrp({
    String? sadSuAssSrp,
  }) {
    _sadSuAssSrp = sadSuAssSrp;
  }

  SadSuAssSrp.fromJson(dynamic json) {
    _sadSuAssSrp = json['sad_su_ass_srp'];
  }
  String? _sadSuAssSrp;
  SadSuAssSrp copyWith({
    String? sadSuAssSrp,
  }) =>
      SadSuAssSrp(
        sadSuAssSrp: sadSuAssSrp ?? _sadSuAssSrp,
      );
  String? get sadSuAssSrp => _sadSuAssSrp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_su_ass_srp'] = _sadSuAssSrp;
    return map;
  }
}

/// sad_war_term_app : "YES"

SadWarTermApp sadWarTermAppFromJson(String str) =>
    SadWarTermApp.fromJson(json.decode(str));
String sadWarTermAppToJson(SadWarTermApp data) => json.encode(data.toJson());

class SadWarTermApp {
  SadWarTermApp({
    String? sadWarTermApp,
  }) {
    _sadWarTermApp = sadWarTermApp;
  }

  SadWarTermApp.fromJson(dynamic json) {
    _sadWarTermApp = json['sad_war_term_app'];
  }
  String? _sadWarTermApp;
  SadWarTermApp copyWith({
    String? sadWarTermApp,
  }) =>
      SadWarTermApp(
        sadWarTermApp: sadWarTermApp ?? _sadWarTermApp,
      );
  String? get sadWarTermApp => _sadWarTermApp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_war_term_app'] = _sadWarTermApp;
    return map;
  }
}

/// sad_war_term : "Month Or HMR/KM"

SadWarTerm sadWarTermFromJson(String str) =>
    SadWarTerm.fromJson(json.decode(str));
String sadWarTermToJson(SadWarTerm data) => json.encode(data.toJson());

class SadWarTerm {
  SadWarTerm({
    String? sadWarTerm,
  }) {
    _sadWarTerm = sadWarTerm;
  }

  SadWarTerm.fromJson(dynamic json) {
    _sadWarTerm = json['sad_war_term'];
  }
  String? _sadWarTerm;
  SadWarTerm copyWith({
    String? sadWarTerm,
  }) =>
      SadWarTerm(
        sadWarTerm: sadWarTerm ?? _sadWarTerm,
      );
  String? get sadWarTerm => _sadWarTerm;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_war_term'] = _sadWarTerm;
    return map;
  }
}

/// sad_type_of_sub_ass : "New"

SadTypeOfSubAss sadTypeOfSubAssFromJson(String str) =>
    SadTypeOfSubAss.fromJson(json.decode(str));
String sadTypeOfSubAssToJson(SadTypeOfSubAss data) =>
    json.encode(data.toJson());

class SadTypeOfSubAss {
  SadTypeOfSubAss({
    String? sadTypeOfSubAss,
  }) {
    _sadTypeOfSubAss = sadTypeOfSubAss;
  }

  SadTypeOfSubAss.fromJson(dynamic json) {
    _sadTypeOfSubAss = json['sad_type_of_sub_ass'];
  }
  String? _sadTypeOfSubAss;
  SadTypeOfSubAss copyWith({
    String? sadTypeOfSubAss,
  }) =>
      SadTypeOfSubAss(
        sadTypeOfSubAss: sadTypeOfSubAss ?? _sadTypeOfSubAss,
      );
  String? get sadTypeOfSubAss => _sadTypeOfSubAss;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_type_of_sub_ass'] = _sadTypeOfSubAss;
    return map;
  }
}

/// sad_war_start_con : "Date of Receipt at Customer site"

SadWarStartCon sadWarStartConFromJson(String str) =>
    SadWarStartCon.fromJson(json.decode(str));
String sadWarStartConToJson(SadWarStartCon data) => json.encode(data.toJson());

class SadWarStartCon {
  SadWarStartCon({
    String? sadWarStartCon,
  }) {
    _sadWarStartCon = sadWarStartCon;
  }

  SadWarStartCon.fromJson(dynamic json) {
    _sadWarStartCon = json['sad_war_start_con'];
  }
  String? _sadWarStartCon;
  SadWarStartCon copyWith({
    String? sadWarStartCon,
  }) =>
      SadWarStartCon(
        sadWarStartCon: sadWarStartCon ?? _sadWarStartCon,
      );
  String? get sadWarStartCon => _sadWarStartCon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_war_start_con'] = _sadWarStartCon;
    return map;
  }
}

/// ecd_can_be_com : "Yes"

EcdCanBeCom ecdCanBeComFromJson(String str) =>
    EcdCanBeCom.fromJson(json.decode(str));
String ecdCanBeComToJson(EcdCanBeCom data) => json.encode(data.toJson());

class EcdCanBeCom {
  EcdCanBeCom({
    String? ecdCanBeCom,
  }) {
    _ecdCanBeCom = ecdCanBeCom;
  }

  EcdCanBeCom.fromJson(dynamic json) {
    _ecdCanBeCom = json['ecd_can_be_com'];
  }
  String? _ecdCanBeCom;
  EcdCanBeCom copyWith({
    String? ecdCanBeCom,
  }) =>
      EcdCanBeCom(
        ecdCanBeCom: ecdCanBeCom ?? _ecdCanBeCom,
      );
  String? get ecdCanBeCom => _ecdCanBeCom;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ecd_can_be_com'] = _ecdCanBeCom;
    return map;
  }
}

/// sad_line_event : "During Transit"

SadLineEvent sadLineEventFromJson(String str) =>
    SadLineEvent.fromJson(json.decode(str));
String sadLineEventToJson(SadLineEvent data) => json.encode(data.toJson());

class SadLineEvent {
  SadLineEvent({
    String? sadLineEvent,
  }) {
    _sadLineEvent = sadLineEvent;
  }

  SadLineEvent.fromJson(dynamic json) {
    _sadLineEvent = json['sad_line_event'];
  }
  String? _sadLineEvent;
  SadLineEvent copyWith({
    String? sadLineEvent,
  }) =>
      SadLineEvent(
        sadLineEvent: sadLineEvent ?? _sadLineEvent,
      );
  String? get sadLineEvent => _sadLineEvent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_line_event'] = _sadLineEvent;
    return map;
  }
}

/// sad_line_status : "Damage"

SadLineStatus sadLineStatusFromJson(String str) =>
    SadLineStatus.fromJson(json.decode(str));
String sadLineStatusToJson(SadLineStatus data) => json.encode(data.toJson());

class SadLineStatus {
  SadLineStatus({
    String? sadLineStatus,
  }) {
    _sadLineStatus = sadLineStatus;
  }

  SadLineStatus.fromJson(dynamic json) {
    _sadLineStatus = json['sad_line_status'];
  }
  String? _sadLineStatus;
  SadLineStatus copyWith({
    String? sadLineStatus,
  }) =>
      SadLineStatus(
        sadLineStatus: sadLineStatus ?? _sadLineStatus,
      );
  String? get sadLineStatus => _sadLineStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_line_status'] = _sadLineStatus;
    return map;
  }
}

/// war_claim_dte : "DATE OF SUPPLY"

WarClaimDte warClaimDteFromJson(String str) =>
    WarClaimDte.fromJson(json.decode(str));
String warClaimDteToJson(WarClaimDte data) => json.encode(data.toJson());

class WarClaimDte {
  WarClaimDte({
    String? warClaimDte,
  }) {
    _warClaimDte = warClaimDte;
  }

  WarClaimDte.fromJson(dynamic json) {
    _warClaimDte = json['war_claim_dte'];
  }
  String? _warClaimDte;
  WarClaimDte copyWith({
    String? warClaimDte,
  }) =>
      WarClaimDte(
        warClaimDte: warClaimDte ?? _warClaimDte,
      );
  String? get warClaimDte => _warClaimDte;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['war_claim_dte'] = _warClaimDte;
    return map;
  }
}

/// mod_of_sub_ambly : "EG Engine"

ModOfSubAmbly modOfSubAmblyFromJson(String str) =>
    ModOfSubAmbly.fromJson(json.decode(str));
String modOfSubAmblyToJson(ModOfSubAmbly data) => json.encode(data.toJson());

class ModOfSubAmbly {
  ModOfSubAmbly({
    String? modOfSubAmbly,
  }) {
    _modOfSubAmbly = modOfSubAmbly;
  }

  ModOfSubAmbly.fromJson(dynamic json) {
    _modOfSubAmbly = json['mod_of_sub_ambly'];
  }
  String? _modOfSubAmbly;
  ModOfSubAmbly copyWith({
    String? modOfSubAmbly,
  }) =>
      ModOfSubAmbly(
        modOfSubAmbly: modOfSubAmbly ?? _modOfSubAmbly,
      );
  String? get modOfSubAmbly => _modOfSubAmbly;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mod_of_sub_ambly'] = _modOfSubAmbly;
    return map;
  }
}

/// mt_pdical_maint_type : "Every 250 hrs"

MtPdicalMaintType mtPdicalMaintTypeFromJson(String str) =>
    MtPdicalMaintType.fromJson(json.decode(str));
String mtPdicalMaintTypeToJson(MtPdicalMaintType data) =>
    json.encode(data.toJson());

class MtPdicalMaintType {
  MtPdicalMaintType({
    String? mtPdicalMaintType,
  }) {
    _mtPdicalMaintType = mtPdicalMaintType;
  }

  MtPdicalMaintType.fromJson(dynamic json) {
    _mtPdicalMaintType = json['mt_pdical_maint_type'];
  }
  String? _mtPdicalMaintType;
  MtPdicalMaintType copyWith({
    String? mtPdicalMaintType,
  }) =>
      MtPdicalMaintType(
        mtPdicalMaintType: mtPdicalMaintType ?? _mtPdicalMaintType,
      );
  String? get mtPdicalMaintType => _mtPdicalMaintType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mt_pdical_maint_type'] = _mtPdicalMaintType;
    return map;
  }
}

/// mt_major_aggrts : "Engine"

MtMajorAggrts mtMajorAggrtsFromJson(String str) =>
    MtMajorAggrts.fromJson(json.decode(str));
String mtMajorAggrtsToJson(MtMajorAggrts data) => json.encode(data.toJson());

class MtMajorAggrts {
  MtMajorAggrts({
    String? mtMajorAggrts,
  }) {
    _mtMajorAggrts = mtMajorAggrts;
  }

  MtMajorAggrts.fromJson(dynamic json) {
    _mtMajorAggrts = json['mt_major_aggrts'];
  }
  String? _mtMajorAggrts;
  MtMajorAggrts copyWith({
    String? mtMajorAggrts,
  }) =>
      MtMajorAggrts(
        mtMajorAggrts: mtMajorAggrts ?? _mtMajorAggrts,
      );
  String? get mtMajorAggrts => _mtMajorAggrts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mt_major_aggrts'] = _mtMajorAggrts;
    return map;
  }
}

/// tck_det_purpose : "REHABILITATION"

TckDetPurpose tckDetPurposeFromJson(String str) =>
    TckDetPurpose.fromJson(json.decode(str));
String tckDetPurposeToJson(TckDetPurpose data) => json.encode(data.toJson());

class TckDetPurpose {
  TckDetPurpose({
    String? tckDetPurpose,
  }) {
    _tckDetPurpose = tckDetPurpose;
  }

  TckDetPurpose.fromJson(dynamic json) {
    _tckDetPurpose = json['tck_det_purpose'];
  }
  String? _tckDetPurpose;
  TckDetPurpose copyWith({
    String? tckDetPurpose,
  }) =>
      TckDetPurpose(
        tckDetPurpose: tckDetPurpose ?? _tckDetPurpose,
      );
  String? get tckDetPurpose => _tckDetPurpose;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tck_det_purpose'] = _tckDetPurpose;
    return map;
  }
}

/// fail_de_parts_affected : "SCHEDULE MAINTENANCE_._INITIAL 50 HOURS"

FailDePartsAffected failDePartsAffectedFromJson(String str) =>
    FailDePartsAffected.fromJson(json.decode(str));
String failDePartsAffectedToJson(FailDePartsAffected data) =>
    json.encode(data.toJson());

class FailDePartsAffected {
  FailDePartsAffected({
    String? failDePartsAffected,
  }) {
    _failDePartsAffected = failDePartsAffected;
  }

  FailDePartsAffected.fromJson(dynamic json) {
    _failDePartsAffected = json['fail_de_parts_affected'];
  }
  String? _failDePartsAffected;
  FailDePartsAffected copyWith({
    String? failDePartsAffected,
  }) =>
      FailDePartsAffected(
        failDePartsAffected: failDePartsAffected ?? _failDePartsAffected,
      );
  String? get failDePartsAffected => _failDePartsAffected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fail_de_parts_affected'] = _failDePartsAffected;
    return map;
  }
}

/// fail_de_system_affected : "MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ENGINE"

FailDeSystemAffected failDeSystemAffectedFromJson(String str) =>
    FailDeSystemAffected.fromJson(json.decode(str));
String failDeSystemAffectedToJson(FailDeSystemAffected data) =>
    json.encode(data.toJson());

class FailDeSystemAffected {
  FailDeSystemAffected({
    String? failDeSystemAffected,
  }) {
    _failDeSystemAffected = failDeSystemAffected;
  }

  FailDeSystemAffected.fromJson(dynamic json) {
    _failDeSystemAffected = json['fail_de_system_affected'];
  }
  String? _failDeSystemAffected;
  FailDeSystemAffected copyWith({
    String? failDeSystemAffected,
  }) =>
      FailDeSystemAffected(
        failDeSystemAffected: failDeSystemAffected ?? _failDeSystemAffected,
      );
  String? get failDeSystemAffected => _failDeSystemAffected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fail_de_system_affected'] = _failDeSystemAffected;
    return map;
  }
}

/// fail_de_type_of_damage : "Colony Carpentry Cause of Damage_._Termite attack"

FailDeTypeOfDamage failDeTypeOfDamageFromJson(String str) =>
    FailDeTypeOfDamage.fromJson(json.decode(str));
String failDeTypeOfDamageToJson(FailDeTypeOfDamage data) =>
    json.encode(data.toJson());

class FailDeTypeOfDamage {
  FailDeTypeOfDamage({
    String? failDeTypeOfDamage,
  }) {
    _failDeTypeOfDamage = failDeTypeOfDamage;
  }

  FailDeTypeOfDamage.fromJson(dynamic json) {
    _failDeTypeOfDamage = json['fail_de_type_of_damage'];
  }
  String? _failDeTypeOfDamage;
  FailDeTypeOfDamage copyWith({
    String? failDeTypeOfDamage,
  }) =>
      FailDeTypeOfDamage(
        failDeTypeOfDamage: failDeTypeOfDamage ?? _failDeTypeOfDamage,
      );
  String? get failDeTypeOfDamage => _failDeTypeOfDamage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fail_de_type_of_damage'] = _failDeTypeOfDamage;
    return map;
  }
}

/// off_on_account_of : "BEML"

OffOnAccountOf offOnAccountOfFromJson(String str) =>
    OffOnAccountOf.fromJson(json.decode(str));
String offOnAccountOfToJson(OffOnAccountOf data) => json.encode(data.toJson());

class OffOnAccountOf {
  OffOnAccountOf({
    String? offOnAccountOf,
  }) {
    _offOnAccountOf = offOnAccountOf;
  }

  OffOnAccountOf.fromJson(dynamic json) {
    _offOnAccountOf = json['off_on_account_of'];
  }
  String? _offOnAccountOf;
  OffOnAccountOf copyWith({
    String? offOnAccountOf,
  }) =>
      OffOnAccountOf(
        offOnAccountOf: offOnAccountOf ?? _offOnAccountOf,
      );
  String? get offOnAccountOf => _offOnAccountOf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['off_on_account_of'] = _offOnAccountOf;
    return map;
  }
}

/// eq_sta_aft_act_taken : "On Road"

EqStaAftActTaken eqStaAftActTakenFromJson(String str) =>
    EqStaAftActTaken.fromJson(json.decode(str));
String eqStaAftActTakenToJson(EqStaAftActTaken data) =>
    json.encode(data.toJson());

class EqStaAftActTaken {
  EqStaAftActTaken({
    String? eqStaAftActTaken,
  }) {
    _eqStaAftActTaken = eqStaAftActTaken;
  }

  EqStaAftActTaken.fromJson(dynamic json) {
    _eqStaAftActTaken = json['eq_sta_aft_act_taken'];
  }
  String? _eqStaAftActTaken;
  EqStaAftActTaken copyWith({
    String? eqStaAftActTaken,
  }) =>
      EqStaAftActTaken(
        eqStaAftActTaken: eqStaAftActTaken ?? _eqStaAftActTaken,
      );
  String? get eqStaAftActTaken => _eqStaAftActTaken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['eq_sta_aft_act_taken'] = _eqStaAftActTaken;
    return map;
  }
}

/// dist_off_or_act_cen : "Neyveli"

DistOffOrActCen distOffOrActCenFromJson(String str) =>
    DistOffOrActCen.fromJson(json.decode(str));
String distOffOrActCenToJson(DistOffOrActCen data) =>
    json.encode(data.toJson());

class DistOffOrActCen {
  DistOffOrActCen({
    String? distOffOrActCen,
  }) {
    _distOffOrActCen = distOffOrActCen;
  }

  DistOffOrActCen.fromJson(dynamic json) {
    _distOffOrActCen = json['dist_off_or_act_cen'];
  }
  String? _distOffOrActCen;
  DistOffOrActCen copyWith({
    String? distOffOrActCen,
  }) =>
      DistOffOrActCen(
        distOffOrActCen: distOffOrActCen ?? _distOffOrActCen,
      );
  String? get distOffOrActCen => _distOffOrActCen;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dist_off_or_act_cen'] = _distOffOrActCen;
    return map;
  }
}

/// sr_regional_office : "Neyveli"

SrRegionalOffice srRegionalOfficeFromJson(String str) =>
    SrRegionalOffice.fromJson(json.decode(str));
String srRegionalOfficeToJson(SrRegionalOffice data) =>
    json.encode(data.toJson());

class SrRegionalOffice {
  SrRegionalOffice({
    String? srRegionalOffice,
  }) {
    _srRegionalOffice = srRegionalOffice;
  }

  SrRegionalOffice.fromJson(dynamic json) {
    _srRegionalOffice = json['sr_regional_office'];
  }
  String? _srRegionalOffice;
  SrRegionalOffice copyWith({
    String? srRegionalOffice,
  }) =>
      SrRegionalOffice(
        srRegionalOffice: srRegionalOffice ?? _srRegionalOffice,
      );
  String? get srRegionalOffice => _srRegionalOffice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_regional_office'] = _srRegionalOffice;
    return map;
  }
}

/// sr_designaion : "Chairman & Managing Director"

SrDesignaion srDesignaionFromJson(String str) =>
    SrDesignaion.fromJson(json.decode(str));
String srDesignaionToJson(SrDesignaion data) => json.encode(data.toJson());

class SrDesignaion {
  SrDesignaion({
    String? srDesignaion,
  }) {
    _srDesignaion = srDesignaion;
  }

  SrDesignaion.fromJson(dynamic json) {
    _srDesignaion = json['sr_designaion'];
  }
  String? _srDesignaion;
  SrDesignaion copyWith({
    String? srDesignaion,
  }) =>
      SrDesignaion(
        srDesignaion: srDesignaion ?? _srDesignaion,
      );
  String? get srDesignaion => _srDesignaion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_designaion'] = _srDesignaion;
    return map;
  }
}

/// fd_eq_sta_bsr : "On Road"

FdEqStaBsr fdEqStaBsrFromJson(String str) =>
    FdEqStaBsr.fromJson(json.decode(str));
String fdEqStaBsrToJson(FdEqStaBsr data) => json.encode(data.toJson());

class FdEqStaBsr {
  FdEqStaBsr({
    String? fdEqStaBsr,
  }) {
    _fdEqStaBsr = fdEqStaBsr;
  }

  FdEqStaBsr.fromJson(dynamic json) {
    _fdEqStaBsr = json['fd_eq_sta_bsr'];
  }
  String? _fdEqStaBsr;
  FdEqStaBsr copyWith({
    String? fdEqStaBsr,
  }) =>
      FdEqStaBsr(
        fdEqStaBsr: fdEqStaBsr ?? _fdEqStaBsr,
      );
  String? get fdEqStaBsr => _fdEqStaBsr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fd_eq_sta_bsr'] = _fdEqStaBsr;
    return map;
  }
}

/// eq_sr_equip_model : "BH100"

EqSrEquipModel eqSrEquipModelFromJson(String str) =>
    EqSrEquipModel.fromJson(json.decode(str));
String eqSrEquipModelToJson(EqSrEquipModel data) => json.encode(data.toJson());

class EqSrEquipModel {
  EqSrEquipModel({
    String? eqSrEquipModel,
  }) {
    _eqSrEquipModel = eqSrEquipModel;
  }

  EqSrEquipModel.fromJson(dynamic json) {
    _eqSrEquipModel = json['eq_sr_equip_model'];
  }
  String? _eqSrEquipModel;
  EqSrEquipModel copyWith({
    String? eqSrEquipModel,
  }) =>
      EqSrEquipModel(
        eqSrEquipModel: eqSrEquipModel ?? _eqSrEquipModel,
      );
  String? get eqSrEquipModel => _eqSrEquipModel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['eq_sr_equip_model'] = _eqSrEquipModel;
    return map;
  }
}

/// fd_sub_div : "Engine"

FdSubDiv fdSubDivFromJson(String str) => FdSubDiv.fromJson(json.decode(str));
String fdSubDivToJson(FdSubDiv data) => json.encode(data.toJson());

class FdSubDiv {
  FdSubDiv({
    String? fdSubDiv,
  }) {
    _fdSubDiv = fdSubDiv;
  }

  FdSubDiv.fromJson(dynamic json) {
    _fdSubDiv = json['fd_sub_div'];
  }
  String? _fdSubDiv;
  FdSubDiv copyWith({
    String? fdSubDiv,
  }) =>
      FdSubDiv(
        fdSubDiv: fdSubDiv ?? _fdSubDiv,
      );
  String? get fdSubDiv => _fdSubDiv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fd_sub_div'] = _fdSubDiv;
    return map;
  }
}

/// fail_de_failure_investigation : "Completed"

FailDeFailureInvestigation failDeFailureInvestigationFromJson(String str) =>
    FailDeFailureInvestigation.fromJson(json.decode(str));
String failDeFailureInvestigationToJson(FailDeFailureInvestigation data) =>
    json.encode(data.toJson());

class FailDeFailureInvestigation {
  FailDeFailureInvestigation({
    String? failDeFailureInvestigation,
  }) {
    _failDeFailureInvestigation = failDeFailureInvestigation;
  }

  FailDeFailureInvestigation.fromJson(dynamic json) {
    _failDeFailureInvestigation = json['fail_de_failure_investigation'];
  }
  String? _failDeFailureInvestigation;
  FailDeFailureInvestigation copyWith({
    String? failDeFailureInvestigation,
  }) =>
      FailDeFailureInvestigation(
        failDeFailureInvestigation:
            failDeFailureInvestigation ?? _failDeFailureInvestigation,
      );
  String? get failDeFailureInvestigation => _failDeFailureInvestigation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fail_de_failure_investigation'] = _failDeFailureInvestigation;
    return map;
  }
}

/// fail_de_sap_noti_type : "ZW"

FailDeSapNotiType failDeSapNotiTypeFromJson(String str) =>
    FailDeSapNotiType.fromJson(json.decode(str));
String failDeSapNotiTypeToJson(FailDeSapNotiType data) =>
    json.encode(data.toJson());

class FailDeSapNotiType {
  FailDeSapNotiType({
    String? failDeSapNotiType,
  }) {
    _failDeSapNotiType = failDeSapNotiType;
  }

  FailDeSapNotiType.fromJson(dynamic json) {
    _failDeSapNotiType = json['fail_de_sap_noti_type'];
  }
  String? _failDeSapNotiType;
  FailDeSapNotiType copyWith({
    String? failDeSapNotiType,
  }) =>
      FailDeSapNotiType(
        failDeSapNotiType: failDeSapNotiType ?? _failDeSapNotiType,
      );
  String? get failDeSapNotiType => _failDeSapNotiType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fail_de_sap_noti_type'] = _failDeSapNotiType;
    return map;
  }
}

/// fail_de_part_pertains_to : "Responsible Agency_._Customer"

FailDePartPertainsTo failDePartPertainsToFromJson(String str) =>
    FailDePartPertainsTo.fromJson(json.decode(str));
String failDePartPertainsToToJson(FailDePartPertainsTo data) =>
    json.encode(data.toJson());

class FailDePartPertainsTo {
  FailDePartPertainsTo({
    String? failDePartPertainsTo,
  }) {
    _failDePartPertainsTo = failDePartPertainsTo;
  }

  FailDePartPertainsTo.fromJson(dynamic json) {
    _failDePartPertainsTo = json['fail_de_part_pertains_to'];
  }
  String? _failDePartPertainsTo;
  FailDePartPertainsTo copyWith({
    String? failDePartPertainsTo,
  }) =>
      FailDePartPertainsTo(
        failDePartPertainsTo: failDePartPertainsTo ?? _failDePartPertainsTo,
      );
  String? get failDePartPertainsTo => _failDePartPertainsTo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fail_de_part_pertains_to'] = _failDePartPertainsTo;
    return map;
  }
}

/// fail_de_failure_on_account_of : "BEML"

FailDeFailureOnAccountOf failDeFailureOnAccountOfFromJson(String str) =>
    FailDeFailureOnAccountOf.fromJson(json.decode(str));
String failDeFailureOnAccountOfToJson(FailDeFailureOnAccountOf data) =>
    json.encode(data.toJson());

class FailDeFailureOnAccountOf {
  FailDeFailureOnAccountOf({
    String? failDeFailureOnAccountOf,
  }) {
    _failDeFailureOnAccountOf = failDeFailureOnAccountOf;
  }

  FailDeFailureOnAccountOf.fromJson(dynamic json) {
    _failDeFailureOnAccountOf = json['fail_de_failure_on_account_of'];
  }
  String? _failDeFailureOnAccountOf;
  FailDeFailureOnAccountOf copyWith({
    String? failDeFailureOnAccountOf,
  }) =>
      FailDeFailureOnAccountOf(
        failDeFailureOnAccountOf:
            failDeFailureOnAccountOf ?? _failDeFailureOnAccountOf,
      );
  String? get failDeFailureOnAccountOf => _failDeFailureOnAccountOf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fail_de_failure_on_account_of'] = _failDeFailureOnAccountOf;
    return map;
  }
}

/// genchk_hi_volt_ele_system : "OK"

GenchkHiVoltEleSystem genchkHiVoltEleSystemFromJson(String str) =>
    GenchkHiVoltEleSystem.fromJson(json.decode(str));
String genchkHiVoltEleSystemToJson(GenchkHiVoltEleSystem data) =>
    json.encode(data.toJson());

class GenchkHiVoltEleSystem {
  GenchkHiVoltEleSystem({
    String? genchkHiVoltEleSystem,
  }) {
    _genchkHiVoltEleSystem = genchkHiVoltEleSystem;
  }

  GenchkHiVoltEleSystem.fromJson(dynamic json) {
    _genchkHiVoltEleSystem = json['genchk_hi_volt_ele_system'];
  }
  String? _genchkHiVoltEleSystem;
  GenchkHiVoltEleSystem copyWith({
    String? genchkHiVoltEleSystem,
  }) =>
      GenchkHiVoltEleSystem(
        genchkHiVoltEleSystem: genchkHiVoltEleSystem ?? _genchkHiVoltEleSystem,
      );
  String? get genchkHiVoltEleSystem => _genchkHiVoltEleSystem;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_hi_volt_ele_system'] = _genchkHiVoltEleSystem;
    return map;
  }
}

/// genchk_auto_fire_protection : "OK"

GenchkAutoFireProtection genchkAutoFireProtectionFromJson(String str) =>
    GenchkAutoFireProtection.fromJson(json.decode(str));
String genchkAutoFireProtectionToJson(GenchkAutoFireProtection data) =>
    json.encode(data.toJson());

class GenchkAutoFireProtection {
  GenchkAutoFireProtection({
    String? genchkAutoFireProtection,
  }) {
    _genchkAutoFireProtection = genchkAutoFireProtection;
  }

  GenchkAutoFireProtection.fromJson(dynamic json) {
    _genchkAutoFireProtection = json['genchk_auto_fire_protection'];
  }
  String? _genchkAutoFireProtection;
  GenchkAutoFireProtection copyWith({
    String? genchkAutoFireProtection,
  }) =>
      GenchkAutoFireProtection(
        genchkAutoFireProtection:
            genchkAutoFireProtection ?? _genchkAutoFireProtection,
      );
  String? get genchkAutoFireProtection => _genchkAutoFireProtection;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_auto_fire_protection'] = _genchkAutoFireProtection;
    return map;
  }
}

/// genchk_air_conditionn : "OK"

GenchkAirConditionn genchkAirConditionnFromJson(String str) =>
    GenchkAirConditionn.fromJson(json.decode(str));
String genchkAirConditionnToJson(GenchkAirConditionn data) =>
    json.encode(data.toJson());

class GenchkAirConditionn {
  GenchkAirConditionn({
    String? genchkAirConditionn,
  }) {
    _genchkAirConditionn = genchkAirConditionn;
  }

  GenchkAirConditionn.fromJson(dynamic json) {
    _genchkAirConditionn = json['genchk_air_conditionn'];
  }
  String? _genchkAirConditionn;
  GenchkAirConditionn copyWith({
    String? genchkAirConditionn,
  }) =>
      GenchkAirConditionn(
        genchkAirConditionn: genchkAirConditionn ?? _genchkAirConditionn,
      );
  String? get genchkAirConditionn => _genchkAirConditionn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_air_conditionn'] = _genchkAirConditionn;
    return map;
  }
}

/// genchk_auto_lubrication : "OK"

GenchkAutoLubrication genchkAutoLubricationFromJson(String str) =>
    GenchkAutoLubrication.fromJson(json.decode(str));
String genchkAutoLubricationToJson(GenchkAutoLubrication data) =>
    json.encode(data.toJson());

class GenchkAutoLubrication {
  GenchkAutoLubrication({
    String? genchkAutoLubrication,
  }) {
    _genchkAutoLubrication = genchkAutoLubrication;
  }

  GenchkAutoLubrication.fromJson(dynamic json) {
    _genchkAutoLubrication = json['genchk_auto_lubrication'];
  }
  String? _genchkAutoLubrication;
  GenchkAutoLubrication copyWith({
    String? genchkAutoLubrication,
  }) =>
      GenchkAutoLubrication(
        genchkAutoLubrication: genchkAutoLubrication ?? _genchkAutoLubrication,
      );
  String? get genchkAutoLubrication => _genchkAutoLubrication;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_auto_lubrication'] = _genchkAutoLubrication;
    return map;
  }
}

/// genchk_structure : "OK"

GenchkStructure genchkStructureFromJson(String str) =>
    GenchkStructure.fromJson(json.decode(str));
String genchkStructureToJson(GenchkStructure data) =>
    json.encode(data.toJson());

class GenchkStructure {
  GenchkStructure({
    String? genchkStructure,
  }) {
    _genchkStructure = genchkStructure;
  }

  GenchkStructure.fromJson(dynamic json) {
    _genchkStructure = json['genchk_structure'];
  }
  String? _genchkStructure;
  GenchkStructure copyWith({
    String? genchkStructure,
  }) =>
      GenchkStructure(
        genchkStructure: genchkStructure ?? _genchkStructure,
      );
  String? get genchkStructure => _genchkStructure;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_structure'] = _genchkStructure;
    return map;
  }
}

/// genchk_oil_cooler : "OK"

GenchkOilCooler genchkOilCoolerFromJson(String str) =>
    GenchkOilCooler.fromJson(json.decode(str));
String genchkOilCoolerToJson(GenchkOilCooler data) =>
    json.encode(data.toJson());

class GenchkOilCooler {
  GenchkOilCooler({
    String? genchkOilCooler,
  }) {
    _genchkOilCooler = genchkOilCooler;
  }

  GenchkOilCooler.fromJson(dynamic json) {
    _genchkOilCooler = json['genchk_oil_cooler'];
  }
  String? _genchkOilCooler;
  GenchkOilCooler copyWith({
    String? genchkOilCooler,
  }) =>
      GenchkOilCooler(
        genchkOilCooler: genchkOilCooler ?? _genchkOilCooler,
      );
  String? get genchkOilCooler => _genchkOilCooler;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_oil_cooler'] = _genchkOilCooler;
    return map;
  }
}

/// genchk_pumps : "OK"

GenchkPumps genchkPumpsFromJson(String str) =>
    GenchkPumps.fromJson(json.decode(str));
String genchkPumpsToJson(GenchkPumps data) => json.encode(data.toJson());

class GenchkPumps {
  GenchkPumps({
    String? genchkPumps,
  }) {
    _genchkPumps = genchkPumps;
  }

  GenchkPumps.fromJson(dynamic json) {
    _genchkPumps = json['genchk_pumps'];
  }
  String? _genchkPumps;
  GenchkPumps copyWith({
    String? genchkPumps,
  }) =>
      GenchkPumps(
        genchkPumps: genchkPumps ?? _genchkPumps,
      );
  String? get genchkPumps => _genchkPumps;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_pumps'] = _genchkPumps;
    return map;
  }
}

/// genchk_suspension : "OK"

GenchkSuspension genchkSuspensionFromJson(String str) =>
    GenchkSuspension.fromJson(json.decode(str));
String genchkSuspensionToJson(GenchkSuspension data) =>
    json.encode(data.toJson());

class GenchkSuspension {
  GenchkSuspension({
    String? genchkSuspension,
  }) {
    _genchkSuspension = genchkSuspension;
  }

  GenchkSuspension.fromJson(dynamic json) {
    _genchkSuspension = json['genchk_suspension'];
  }
  String? _genchkSuspension;
  GenchkSuspension copyWith({
    String? genchkSuspension,
  }) =>
      GenchkSuspension(
        genchkSuspension: genchkSuspension ?? _genchkSuspension,
      );
  String? get genchkSuspension => _genchkSuspension;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_suspension'] = _genchkSuspension;
    return map;
  }
}

/// genchk_cylinders : "OK"

GenchkCylinders genchkCylindersFromJson(String str) =>
    GenchkCylinders.fromJson(json.decode(str));
String genchkCylindersToJson(GenchkCylinders data) =>
    json.encode(data.toJson());

class GenchkCylinders {
  GenchkCylinders({
    String? genchkCylinders,
  }) {
    _genchkCylinders = genchkCylinders;
  }

  GenchkCylinders.fromJson(dynamic json) {
    _genchkCylinders = json['genchk_cylinders'];
  }
  String? _genchkCylinders;
  GenchkCylinders copyWith({
    String? genchkCylinders,
  }) =>
      GenchkCylinders(
        genchkCylinders: genchkCylinders ?? _genchkCylinders,
      );
  String? get genchkCylinders => _genchkCylinders;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_cylinders'] = _genchkCylinders;
    return map;
  }
}

/// genchk_hydraulic : "Applicable"

GenchkHydraulic genchkHydraulicFromJson(String str) =>
    GenchkHydraulic.fromJson(json.decode(str));
String genchkHydraulicToJson(GenchkHydraulic data) =>
    json.encode(data.toJson());

class GenchkHydraulic {
  GenchkHydraulic({
    String? genchkHydraulic,
  }) {
    _genchkHydraulic = genchkHydraulic;
  }

  GenchkHydraulic.fromJson(dynamic json) {
    _genchkHydraulic = json['genchk_hydraulic'];
  }
  String? _genchkHydraulic;
  GenchkHydraulic copyWith({
    String? genchkHydraulic,
  }) =>
      GenchkHydraulic(
        genchkHydraulic: genchkHydraulic ?? _genchkHydraulic,
      );
  String? get genchkHydraulic => _genchkHydraulic;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_hydraulic'] = _genchkHydraulic;
    return map;
  }
}

/// genchk_battery_voltage : "OK"

GenchkBatteryVoltage genchkBatteryVoltageFromJson(String str) =>
    GenchkBatteryVoltage.fromJson(json.decode(str));
String genchkBatteryVoltageToJson(GenchkBatteryVoltage data) =>
    json.encode(data.toJson());

class GenchkBatteryVoltage {
  GenchkBatteryVoltage({
    String? genchkBatteryVoltage,
  }) {
    _genchkBatteryVoltage = genchkBatteryVoltage;
  }

  GenchkBatteryVoltage.fromJson(dynamic json) {
    _genchkBatteryVoltage = json['genchk_battery_voltage'];
  }
  String? _genchkBatteryVoltage;
  GenchkBatteryVoltage copyWith({
    String? genchkBatteryVoltage,
  }) =>
      GenchkBatteryVoltage(
        genchkBatteryVoltage: genchkBatteryVoltage ?? _genchkBatteryVoltage,
      );
  String? get genchkBatteryVoltage => _genchkBatteryVoltage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_battery_voltage'] = _genchkBatteryVoltage;
    return map;
  }
}

/// genchk_auto_electrical_system : "OK"

GenchkAutoElectricalSystem genchkAutoElectricalSystemFromJson(String str) =>
    GenchkAutoElectricalSystem.fromJson(json.decode(str));
String genchkAutoElectricalSystemToJson(GenchkAutoElectricalSystem data) =>
    json.encode(data.toJson());

class GenchkAutoElectricalSystem {
  GenchkAutoElectricalSystem({
    String? genchkAutoElectricalSystem,
  }) {
    _genchkAutoElectricalSystem = genchkAutoElectricalSystem;
  }

  GenchkAutoElectricalSystem.fromJson(dynamic json) {
    _genchkAutoElectricalSystem = json['genchk_auto_electrical_system'];
  }
  String? _genchkAutoElectricalSystem;
  GenchkAutoElectricalSystem copyWith({
    String? genchkAutoElectricalSystem,
  }) =>
      GenchkAutoElectricalSystem(
        genchkAutoElectricalSystem:
            genchkAutoElectricalSystem ?? _genchkAutoElectricalSystem,
      );
  String? get genchkAutoElectricalSystem => _genchkAutoElectricalSystem;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_auto_electrical_system'] = _genchkAutoElectricalSystem;
    return map;
  }
}

/// genchk_field_switch : "OK"

GenchkFieldSwitch genchkFieldSwitchFromJson(String str) =>
    GenchkFieldSwitch.fromJson(json.decode(str));
String genchkFieldSwitchToJson(GenchkFieldSwitch data) =>
    json.encode(data.toJson());

class GenchkFieldSwitch {
  GenchkFieldSwitch({
    String? genchkFieldSwitch,
  }) {
    _genchkFieldSwitch = genchkFieldSwitch;
  }

  GenchkFieldSwitch.fromJson(dynamic json) {
    _genchkFieldSwitch = json['genchk_field_switch'];
  }
  String? _genchkFieldSwitch;
  GenchkFieldSwitch copyWith({
    String? genchkFieldSwitch,
  }) =>
      GenchkFieldSwitch(
        genchkFieldSwitch: genchkFieldSwitch ?? _genchkFieldSwitch,
      );
  String? get genchkFieldSwitch => _genchkFieldSwitch;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_field_switch'] = _genchkFieldSwitch;
    return map;
  }
}

/// genchk_transformer : "OK"

GenchkTransformer genchkTransformerFromJson(String str) =>
    GenchkTransformer.fromJson(json.decode(str));
String genchkTransformerToJson(GenchkTransformer data) =>
    json.encode(data.toJson());

class GenchkTransformer {
  GenchkTransformer({
    String? genchkTransformer,
  }) {
    _genchkTransformer = genchkTransformer;
  }

  GenchkTransformer.fromJson(dynamic json) {
    _genchkTransformer = json['genchk_transformer'];
  }
  String? _genchkTransformer;
  GenchkTransformer copyWith({
    String? genchkTransformer,
  }) =>
      GenchkTransformer(
        genchkTransformer: genchkTransformer ?? _genchkTransformer,
      );
  String? get genchkTransformer => _genchkTransformer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_transformer'] = _genchkTransformer;
    return map;
  }
}

/// genchk_motor : "OK"

GenchkMotor genchkMotorFromJson(String str) =>
    GenchkMotor.fromJson(json.decode(str));
String genchkMotorToJson(GenchkMotor data) => json.encode(data.toJson());

class GenchkMotor {
  GenchkMotor({
    String? genchkMotor,
  }) {
    _genchkMotor = genchkMotor;
  }

  GenchkMotor.fromJson(dynamic json) {
    _genchkMotor = json['genchk_motor'];
  }
  String? _genchkMotor;
  GenchkMotor copyWith({
    String? genchkMotor,
  }) =>
      GenchkMotor(
        genchkMotor: genchkMotor ?? _genchkMotor,
      );
  String? get genchkMotor => _genchkMotor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_motor'] = _genchkMotor;
    return map;
  }
}

/// genchk_electrical : "Applicable"

GenchkElectrical genchkElectricalFromJson(String str) =>
    GenchkElectrical.fromJson(json.decode(str));
String genchkElectricalToJson(GenchkElectrical data) =>
    json.encode(data.toJson());

class GenchkElectrical {
  GenchkElectrical({
    String? genchkElectrical,
  }) {
    _genchkElectrical = genchkElectrical;
  }

  GenchkElectrical.fromJson(dynamic json) {
    _genchkElectrical = json['genchk_electrical'];
  }
  String? _genchkElectrical;
  GenchkElectrical copyWith({
    String? genchkElectrical,
  }) =>
      GenchkElectrical(
        genchkElectrical: genchkElectrical ?? _genchkElectrical,
      );
  String? get genchkElectrical => _genchkElectrical;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_electrical'] = _genchkElectrical;
    return map;
  }
}

/// genchk_air_pressure : "OK"

GenchkAirPressure genchkAirPressureFromJson(String str) =>
    GenchkAirPressure.fromJson(json.decode(str));
String genchkAirPressureToJson(GenchkAirPressure data) =>
    json.encode(data.toJson());

class GenchkAirPressure {
  GenchkAirPressure({
    String? genchkAirPressure,
  }) {
    _genchkAirPressure = genchkAirPressure;
  }

  GenchkAirPressure.fromJson(dynamic json) {
    _genchkAirPressure = json['genchk_air_pressure'];
  }
  String? _genchkAirPressure;
  GenchkAirPressure copyWith({
    String? genchkAirPressure,
  }) =>
      GenchkAirPressure(
        genchkAirPressure: genchkAirPressure ?? _genchkAirPressure,
      );
  String? get genchkAirPressure => _genchkAirPressure;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_air_pressure'] = _genchkAirPressure;
    return map;
  }
}

/// genchk_brake : "Applicable"

GenchkBrake genchkBrakeFromJson(String str) =>
    GenchkBrake.fromJson(json.decode(str));
String genchkBrakeToJson(GenchkBrake data) => json.encode(data.toJson());

class GenchkBrake {
  GenchkBrake({
    String? genchkBrake,
  }) {
    _genchkBrake = genchkBrake;
  }

  GenchkBrake.fromJson(dynamic json) {
    _genchkBrake = json['genchk_brake'];
  }
  String? _genchkBrake;
  GenchkBrake copyWith({
    String? genchkBrake,
  }) =>
      GenchkBrake(
        genchkBrake: genchkBrake ?? _genchkBrake,
      );
  String? get genchkBrake => _genchkBrake;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_brake'] = _genchkBrake;
    return map;
  }
}

/// genchk_transmission : "Applicable"

GenchkTransmission genchkTransmissionFromJson(String str) =>
    GenchkTransmission.fromJson(json.decode(str));
String genchkTransmissionToJson(GenchkTransmission data) =>
    json.encode(data.toJson());

class GenchkTransmission {
  GenchkTransmission({
    String? genchkTransmission,
  }) {
    _genchkTransmission = genchkTransmission;
  }

  GenchkTransmission.fromJson(dynamic json) {
    _genchkTransmission = json['genchk_transmission'];
  }
  String? _genchkTransmission;
  GenchkTransmission copyWith({
    String? genchkTransmission,
  }) =>
      GenchkTransmission(
        genchkTransmission: genchkTransmission ?? _genchkTransmission,
      );
  String? get genchkTransmission => _genchkTransmission;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_transmission'] = _genchkTransmission;
    return map;
  }
}

/// genchk_coolant_temperature : "OK"

GenchkCoolantTemperature genchkCoolantTemperatureFromJson(String str) =>
    GenchkCoolantTemperature.fromJson(json.decode(str));
String genchkCoolantTemperatureToJson(GenchkCoolantTemperature data) =>
    json.encode(data.toJson());

class GenchkCoolantTemperature {
  GenchkCoolantTemperature({
    String? genchkCoolantTemperature,
  }) {
    _genchkCoolantTemperature = genchkCoolantTemperature;
  }

  GenchkCoolantTemperature.fromJson(dynamic json) {
    _genchkCoolantTemperature = json['genchk_coolant_temperature'];
  }
  String? _genchkCoolantTemperature;
  GenchkCoolantTemperature copyWith({
    String? genchkCoolantTemperature,
  }) =>
      GenchkCoolantTemperature(
        genchkCoolantTemperature:
            genchkCoolantTemperature ?? _genchkCoolantTemperature,
      );
  String? get genchkCoolantTemperature => _genchkCoolantTemperature;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_coolant_temperature'] = _genchkCoolantTemperature;
    return map;
  }
}

/// genchk_oil_temperature : "OK"

GenchkOilTemperature genchkOilTemperatureFromJson(String str) =>
    GenchkOilTemperature.fromJson(json.decode(str));
String genchkOilTemperatureToJson(GenchkOilTemperature data) =>
    json.encode(data.toJson());

class GenchkOilTemperature {
  GenchkOilTemperature({
    String? genchkOilTemperature,
  }) {
    _genchkOilTemperature = genchkOilTemperature;
  }

  GenchkOilTemperature.fromJson(dynamic json) {
    _genchkOilTemperature = json['genchk_oil_temperature'];
  }
  String? _genchkOilTemperature;
  GenchkOilTemperature copyWith({
    String? genchkOilTemperature,
  }) =>
      GenchkOilTemperature(
        genchkOilTemperature: genchkOilTemperature ?? _genchkOilTemperature,
      );
  String? get genchkOilTemperature => _genchkOilTemperature;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_oil_temperature'] = _genchkOilTemperature;
    return map;
  }
}

/// genchk_oil_pressure : "OK"

GenchkOilPressure genchkOilPressureFromJson(String str) =>
    GenchkOilPressure.fromJson(json.decode(str));
String genchkOilPressureToJson(GenchkOilPressure data) =>
    json.encode(data.toJson());

class GenchkOilPressure {
  GenchkOilPressure({
    String? genchkOilPressure,
  }) {
    _genchkOilPressure = genchkOilPressure;
  }

  GenchkOilPressure.fromJson(dynamic json) {
    _genchkOilPressure = json['genchk_oil_pressure'];
  }
  String? _genchkOilPressure;
  GenchkOilPressure copyWith({
    String? genchkOilPressure,
  }) =>
      GenchkOilPressure(
        genchkOilPressure: genchkOilPressure ?? _genchkOilPressure,
      );
  String? get genchkOilPressure => _genchkOilPressure;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_oil_pressure'] = _genchkOilPressure;
    return map;
  }
}

/// genchk_engine : "Applicable"

GenchkEngine genchkEngineFromJson(String str) =>
    GenchkEngine.fromJson(json.decode(str));
String genchkEngineToJson(GenchkEngine data) => json.encode(data.toJson());

class GenchkEngine {
  GenchkEngine({
    String? genchkEngine,
  }) {
    _genchkEngine = genchkEngine;
  }

  GenchkEngine.fromJson(dynamic json) {
    _genchkEngine = json['genchk_engine'];
  }
  String? _genchkEngine;
  GenchkEngine copyWith({
    String? genchkEngine,
  }) =>
      GenchkEngine(
        genchkEngine: genchkEngine ?? _genchkEngine,
      );
  String? get genchkEngine => _genchkEngine;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['genchk_engine'] = _genchkEngine;
    return map;
  }
}

/// type_of_conrt : "GPCC"

TypeOfConrt typeOfConrtFromJson(String str) =>
    TypeOfConrt.fromJson(json.decode(str));
String typeOfConrtToJson(TypeOfConrt data) => json.encode(data.toJson());

class TypeOfConrt {
  TypeOfConrt({
    String? typeOfConrt,
  }) {
    _typeOfConrt = typeOfConrt;
  }

  TypeOfConrt.fromJson(dynamic json) {
    _typeOfConrt = json['type_of_conrt'];
  }
  String? _typeOfConrt;
  TypeOfConrt copyWith({
    String? typeOfConrt,
  }) =>
      TypeOfConrt(
        typeOfConrt: typeOfConrt ?? _typeOfConrt,
      );
  String? get typeOfConrt => _typeOfConrt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type_of_conrt'] = _typeOfConrt;
    return map;
  }
}

/// sr_equip_status : "On Road"

SrEquipStatus srEquipStatusFromJson(String str) =>
    SrEquipStatus.fromJson(json.decode(str));
String srEquipStatusToJson(SrEquipStatus data) => json.encode(data.toJson());

class SrEquipStatus {
  SrEquipStatus({
    String? srEquipStatus,
  }) {
    _srEquipStatus = srEquipStatus;
  }

  SrEquipStatus.fromJson(dynamic json) {
    _srEquipStatus = json['sr_equip_status'];
  }
  String? _srEquipStatus;
  SrEquipStatus copyWith({
    String? srEquipStatus,
  }) =>
      SrEquipStatus(
        srEquipStatus: srEquipStatus ?? _srEquipStatus,
      );
  String? get srEquipStatus => _srEquipStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_equip_status'] = _srEquipStatus;
    return map;
  }
}

/// sr_replace_action : "From BEML Stock"

SrReplaceAction srReplaceActionFromJson(String str) =>
    SrReplaceAction.fromJson(json.decode(str));
String srReplaceActionToJson(SrReplaceAction data) =>
    json.encode(data.toJson());

class SrReplaceAction {
  SrReplaceAction({
    String? srReplaceAction,
  }) {
    _srReplaceAction = srReplaceAction;
  }

  SrReplaceAction.fromJson(dynamic json) {
    _srReplaceAction = json['sr_replace_action'];
  }
  String? _srReplaceAction;
  SrReplaceAction copyWith({
    String? srReplaceAction,
  }) =>
      SrReplaceAction(
        srReplaceAction: srReplaceAction ?? _srReplaceAction,
      );
  String? get srReplaceAction => _srReplaceAction;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_replace_action'] = _srReplaceAction;
    return map;
  }
}

/// sr_action_two : "Required"

SrActionTwo srActionTwoFromJson(String str) =>
    SrActionTwo.fromJson(json.decode(str));
String srActionTwoToJson(SrActionTwo data) => json.encode(data.toJson());

class SrActionTwo {
  SrActionTwo({
    String? srActionTwo,
  }) {
    _srActionTwo = srActionTwo;
  }

  SrActionTwo.fromJson(dynamic json) {
    _srActionTwo = json['sr_action_two'];
  }
  String? _srActionTwo;
  SrActionTwo copyWith({
    String? srActionTwo,
  }) =>
      SrActionTwo(
        srActionTwo: srActionTwo ?? _srActionTwo,
      );
  String? get srActionTwo => _srActionTwo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_action_two'] = _srActionTwo;
    return map;
  }
}

/// sr_action_one : "To be replaced"

SrActionOne srActionOneFromJson(String str) =>
    SrActionOne.fromJson(json.decode(str));
String srActionOneToJson(SrActionOne data) => json.encode(data.toJson());

class SrActionOne {
  SrActionOne({
    String? srActionOne,
  }) {
    _srActionOne = srActionOne;
  }

  SrActionOne.fromJson(dynamic json) {
    _srActionOne = json['sr_action_one'];
  }
  String? _srActionOne;
  SrActionOne copyWith({
    String? srActionOne,
  }) =>
      SrActionOne(
        srActionOne: srActionOne ?? _srActionOne,
      );
  String? get srActionOne => _srActionOne;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_action_one'] = _srActionOne;
    return map;
  }
}

/// sr_ticket_type : "PRE-DELIVERY"

SrTicketType srTicketTypeFromJson(String str) =>
    SrTicketType.fromJson(json.decode(str));
String srTicketTypeToJson(SrTicketType data) => json.encode(data.toJson());

class SrTicketType {
  SrTicketType({
    String? srTicketType,
  }) {
    _srTicketType = srTicketType;
  }

  SrTicketType.fromJson(dynamic json) {
    _srTicketType = json['sr_ticket_type'];
  }
  String? _srTicketType;
  SrTicketType copyWith({
    String? srTicketType,
  }) =>
      SrTicketType(
        srTicketType: srTicketType ?? _srTicketType,
      );
  String? get srTicketType => _srTicketType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_ticket_type'] = _srTicketType;
    return map;
  }
}

/// sr_war_status : "Warranty"

SrWarStatus srWarStatusFromJson(String str) =>
    SrWarStatus.fromJson(json.decode(str));
String srWarStatusToJson(SrWarStatus data) => json.encode(data.toJson());

class SrWarStatus {
  SrWarStatus({
    String? srWarStatus,
  }) {
    _srWarStatus = srWarStatus;
  }

  SrWarStatus.fromJson(dynamic json) {
    _srWarStatus = json['sr_war_status'];
  }
  String? _srWarStatus;
  SrWarStatus copyWith({
    String? srWarStatus,
  }) =>
      SrWarStatus(
        srWarStatus: srWarStatus ?? _srWarStatus,
      );
  String? get srWarStatus => _srWarStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_war_status'] = _srWarStatus;
    return map;
  }
}

/// sr_system_affected : "Machine tools Electrical System____Solenoid coils"

SrSystemAffected srSystemAffectedFromJson(String str) =>
    SrSystemAffected.fromJson(json.decode(str));
String srSystemAffectedToJson(SrSystemAffected data) =>
    json.encode(data.toJson());

class SrSystemAffected {
  SrSystemAffected({
    String? srSystemAffected,
  }) {
    _srSystemAffected = srSystemAffected;
  }

  SrSystemAffected.fromJson(dynamic json) {
    _srSystemAffected = json['sr_system_affected'];
  }
  String? _srSystemAffected;
  SrSystemAffected copyWith({
    String? srSystemAffected,
  }) =>
      SrSystemAffected(
        srSystemAffected: srSystemAffected ?? _srSystemAffected,
      );
  String? get srSystemAffected => _srSystemAffected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_system_affected'] = _srSystemAffected;
    return map;
  }
}

/// hdnTaxType : "individual"

HdnTaxType hdnTaxTypeFromJson(String str) =>
    HdnTaxType.fromJson(json.decode(str));
String hdnTaxTypeToJson(HdnTaxType data) => json.encode(data.toJson());

class HdnTaxType {
  HdnTaxType({
    String? hdnTaxType,
  }) {
    _hdnTaxType = hdnTaxType;
  }

  HdnTaxType.fromJson(dynamic json) {
    _hdnTaxType = json['hdnTaxType'];
  }
  String? _hdnTaxType;
  HdnTaxType copyWith({
    String? hdnTaxType,
  }) =>
      HdnTaxType(
        hdnTaxType: hdnTaxType ?? _hdnTaxType,
      );
  String? get hdnTaxType => _hdnTaxType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hdnTaxType'] = _hdnTaxType;
    return map;
  }
}
