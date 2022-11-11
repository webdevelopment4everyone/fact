import 'dart:convert';

/// statuscode : 1
/// data : {"hdnTaxType":[{"hdnTaxType":"individual"},{"hdnTaxType":"group"}],"sr_system_affected":[{"sr_system_affected":"Machine tools Electrical System____Solenoid coils"}],"sr_war_status":[{"sr_war_status":"Warranty"},{"sr_war_status":"Contract"},{"sr_war_status":"Outside Warranty"}],"sr_ticket_type":[{"sr_ticket_type":"PRE-DELIVERY"},{"sr_ticket_type":"ERECTION AND COMMISSIONING"},{"sr_ticket_type":"PERIODICAL MAINTENANCE"},{"sr_ticket_type":"PREVENTIVE MAINTENANCE"},{"sr_ticket_type":"BREAKDOWN"},{"sr_ticket_type":"GENERAL INSPECTION"},{"sr_ticket_type":"INSTALLATION OF SUB ASSEMBLY FITMENT"},{"sr_ticket_type":"SERVICE FOR SPARES PURCHASED"},{"sr_ticket_type":"DESIGN MODIFICATION"}],"sr_action_one":[{"sr_action_one":"To be replaced"},{"sr_action_one":"Replaced"},{"sr_action_one":"To be Repaired"},{"sr_action_one":"Repaired"}],"sr_action_two":[{"sr_action_two":"Required"},{"sr_action_two":"Not Required"},{"sr_action_two":"Required"},{"sr_action_two":"Not Required"}],"sr_replace_action":[{"sr_replace_action":"From BEML Stock"},{"sr_replace_action":"From Vendor Stock"},{"sr_replace_action":"From Customer Stock"}],"sr_equip_status":[{"sr_equip_status":"On Road"},{"sr_equip_status":"Running with Problem"},{"sr_equip_status":"Off Road"}],"type_of_conrt":[{"type_of_conrt":"GPCC"},{"type_of_conrt":"COSTCAP"},{"type_of_conrt":"FMC"},{"type_of_conrt":"MARC"},{"type_of_conrt":"AMC"}],"genchk_engine":[{"genchk_engine":"Applicable"},{"genchk_engine":"Not Applicable"}],"genchk_oil_pressure":[{"genchk_oil_pressure":"OK"},{"genchk_oil_pressure":"NOT OK"}],"genchk_oil_temperature":[{"genchk_oil_temperature":"OK"},{"genchk_oil_temperature":"NOT OK"}],"genchk_coolant_temperature":[{"genchk_coolant_temperature":"OK"},{"genchk_coolant_temperature":"NOT OK"}],"genchk_transmission":[{"genchk_transmission":"Applicable"},{"genchk_transmission":"Not Applicable"}],"genchk_brake":[{"genchk_brake":"Applicable"},{"genchk_brake":"Not Applicable"}],"genchk_air_pressure":[{"genchk_air_pressure":"OK"},{"genchk_air_pressure":"NOT OK"},{"genchk_air_pressure":"NA"}],"genchk_electrical":[{"genchk_electrical":"Applicable"},{"genchk_electrical":"Not Applicable"}],"genchk_motor":[{"genchk_motor":"OK"},{"genchk_motor":"NOT OK"},{"genchk_motor":"NA"}],"genchk_transformer":[{"genchk_transformer":"OK"},{"genchk_transformer":"NOT Ok"},{"genchk_transformer":"NA"}],"genchk_field_switch":[{"genchk_field_switch":"OK"},{"genchk_field_switch":"NOT OK"},{"genchk_field_switch":"NA"}],"genchk_auto_electrical_system":[{"genchk_auto_electrical_system":"OK"},{"genchk_auto_electrical_system":"NOT OK"},{"genchk_auto_electrical_system":"NA"}],"genchk_battery_voltage":[{"genchk_battery_voltage":"OK"},{"genchk_battery_voltage":"NOT OK"},{"genchk_battery_voltage":"NA"}],"genchk_hydraulic":[{"genchk_hydraulic":"Applicable"},{"genchk_hydraulic":"Not Applicable"}],"genchk_cylinders":[{"genchk_cylinders":"OK"},{"genchk_cylinders":"NOT OK"},{"genchk_cylinders":"NA"}],"genchk_suspension":[{"genchk_suspension":"OK"},{"genchk_suspension":"NOT OK"},{"genchk_suspension":"NA"}],"genchk_pumps":[{"genchk_pumps":"OK"},{"genchk_pumps":"NOT OK"},{"genchk_pumps":"NA"}],"genchk_oil_cooler":[{"genchk_oil_cooler":"OK"},{"genchk_oil_cooler":"NOT OK"},{"genchk_oil_cooler":"NA"}],"genchk_structure":[{"genchk_structure":"OK"},{"genchk_structure":"NOT OK"}],"genchk_auto_lubrication":[{"genchk_auto_lubrication":"OK"},{"genchk_auto_lubrication":"NOT OK"},{"genchk_auto_lubrication":"NA"}],"genchk_air_conditionn":[{"genchk_air_conditionn":"OK"},{"genchk_air_conditionn":"NOT OK"},{"genchk_air_conditionn":"NA"}],"genchk_auto_fire_protection":[{"genchk_auto_fire_protection":"OK"},{"genchk_auto_fire_protection":"NOT OK"},{"genchk_auto_fire_protection":"NA"}],"genchk_hi_volt_ele_system":[{"genchk_hi_volt_ele_system":"OK"},{"genchk_hi_volt_ele_system":"NOT OK"},{"genchk_hi_volt_ele_system":"NA"}],"fail_de_failure_on_account_of":[{"fail_de_failure_on_account_of":"BEML"},{"fail_de_failure_on_account_of":"CUSTOMER"}],"fail_de_part_pertains_to":[{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"}],"fail_de_sap_noti_type":[{"fail_de_sap_noti_type":"ZW"},{"fail_de_sap_noti_type":"ZJ"},{"fail_de_sap_noti_type":"ZC"},{"fail_de_sap_noti_type":"ZF"},{"fail_de_sap_noti_type":"ZH"},{"fail_de_sap_noti_type":"ZO"},{"fail_de_sap_noti_type":"ZE"},{"fail_de_sap_noti_type":"ZB"},{"fail_de_sap_noti_type":"Z3"},{"fail_de_sap_noti_type":"Z2"},{"fail_de_sap_noti_type":"Z4"}],"fail_de_failure_investigation":[{"fail_de_failure_investigation":"Completed"},{"fail_de_failure_investigation":"In-process"},{"fail_de_failure_investigation":"On Hold"}],"fd_sub_div":[{"fd_sub_div":"Engine"},{"fd_sub_div":"Truck"},{"fd_sub_div":"H&P"},{"fd_sub_div":"EM"}],"eq_sr_equip_model":[{"eq_sr_equip_model":"BH100"},{"eq_sr_equip_model":"BWS70"},{"eq_sr_equip_model":"BG825"},{"eq_sr_equip_model":"BH100"},{"eq_sr_equip_model":"BWS70"},{"eq_sr_equip_model":"BG825"}],"fd_eq_sta_bsr":[{"fd_eq_sta_bsr":"On Road"},{"fd_eq_sta_bsr":"Running with Problem"},{"fd_eq_sta_bsr":"Off Road"}],"sr_designaion":[{"sr_designaion":"Chairman & Managing Director"},{"sr_designaion":"Director(Mining & Construction Business)"},{"sr_designaion":"Director(Defence Business)"},{"sr_designaion":"Director"},{"sr_designaion":"Executive Director"},{"sr_designaion":"Executive Director"},{"sr_designaion":"General Manager"},{"sr_designaion":"Deputy General Manager"},{"sr_designaion":"Assistant General Manager"},{"sr_designaion":"Senior Manager"},{"sr_designaion":"Manager"},{"sr_designaion":"Assistant Manager"},{"sr_designaion":"Engineer"},{"sr_designaion":"Assistant Engineer"},{"sr_designaion":"Senior Supervisor-S-6"},{"sr_designaion":"Senior Supervisor-S-5"},{"sr_designaion":"Senior Supervisor-S-4"},{"sr_designaion":"Supervisor- S-3"},{"sr_designaion":"Joint Supervisior-S-2"},{"sr_designaion":"Deputy Supervisor-S-1"},{"sr_designaion":"Master Skilled Technician-Gr.-E"},{"sr_designaion":"High Skilled Technician-Gr.-D"},{"sr_designaion":"Senior Technician-Gr.-C"},{"sr_designaion":"Technician-Gr.-B"},{"sr_designaion":"Helper- Gr-A"}],"sr_regional_office":[{"sr_regional_office":"Neyveli"},{"sr_regional_office":"Sambalpur"},{"sr_regional_office":"Kolkata"},{"sr_regional_office":"Dhanbad"},{"sr_regional_office":"Bangalore"},{"sr_regional_office":"Hyderabad"},{"sr_regional_office":"New Delhi"},{"sr_regional_office":"Nagpur"},{"sr_regional_office":"Bilaspur"},{"sr_regional_office":"Mumbai"},{"sr_regional_office":"Ranchi"},{"sr_regional_office":"Singrauli"}],"dist_off_or_act_cen":[{"dist_off_or_act_cen":"Neyveli"},{"dist_off_or_act_cen":"Sambalpur"},{"dist_off_or_act_cen":"Kolkata"},{"dist_off_or_act_cen":"Dhanbad"},{"dist_off_or_act_cen":"Bangalore"},{"dist_off_or_act_cen":"Hyderabad"},{"dist_off_or_act_cen":"New Delhi"},{"dist_off_or_act_cen":"Nagpur"},{"dist_off_or_act_cen":"Chennai"},{"dist_off_or_act_cen":"Bhubaneshwar"},{"dist_off_or_act_cen":"Asansol"},{"dist_off_or_act_cen":"Guwahati"},{"dist_off_or_act_cen":"Hospet"},{"dist_off_or_act_cen":"Ramagundam"},{"dist_off_or_act_cen":"Bacheli"},{"dist_off_or_act_cen":"Kothagudem"},{"dist_off_or_act_cen":"Jammu"},{"dist_off_or_act_cen":"Leh"},{"dist_off_or_act_cen":"Chandrapur"},{"dist_off_or_act_cen":"Bhilai"},{"dist_off_or_act_cen":"Ahmedabad"},{"dist_off_or_act_cen":"Udaipur"},{"dist_off_or_act_cen":"Kochi"},{"dist_off_or_act_cen":"Itanagar"},{"dist_off_or_act_cen":"Silapathar"},{"dist_off_or_act_cen":"Vishakapatnam"},{"dist_off_or_act_cen":"Bhopal"},{"dist_off_or_act_cen":"Maihar"},{"dist_off_or_act_cen":"Goa"},{"dist_off_or_act_cen":"Pune"}],"eq_sta_aft_act_taken":[{"eq_sta_aft_act_taken":"On Road"},{"eq_sta_aft_act_taken":"Running with Problem"},{"eq_sta_aft_act_taken":"Off Road"}],"off_on_account_of":[{"off_on_account_of":"BEML"},{"off_on_account_of":"CUSTOMER"}],"fail_de_type_of_damage":[{"fail_de_type_of_damage":"Colony Carpentry Cause of Damage_._Termite attack"},{"fail_de_type_of_damage":"Colony Carpentry Cause of Damage_._Due to age of wood"},{"fail_de_type_of_damage":"Colony Carpentry Cause of Damage_._Due to wind (glass broken)"},{"fail_de_type_of_damage":"Cause of damage - Air compressor lines_._Earth moving eqpt damage pipe"},{"fail_de_type_of_damage":"Cause of damage - Air compressor lines_._Rusted pipe open"},{"fail_de_type_of_damage":"Cause of damage - Air compressor lines_._Valve kept open"},{"fail_de_type_of_damage":"Cause of damage - Air compressor lines_._Compressor not loading"},{"fail_de_type_of_damage":"Cause of damage - Air compressor lines_._Overload"},{"fail_de_type_of_damage":"Crane Maintenance cause of damage_._Overload"},{"fail_de_type_of_damage":"Crane Maintenance cause of damage_._Long usage"},{"fail_de_type_of_damage":"Crane Maintenance cause of damage_._Repeated operation w/o break"},{"fail_de_type_of_damage":"Crane Maintenance cause of damage_._Load Slipped from hook"},{"fail_de_type_of_damage":"Crane Maintenance cause of damage_._Hook block swang and hit"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Short circuit"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Overload"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Carbon deposition"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Loose contact"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Accident"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Mechanical Jam"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Insulation weak"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Cable cut due to heavy part falling"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Wrong Operation"},{"fail_de_type_of_damage":"Colony Electrical Cause of Damage_._Short circuit"},{"fail_de_type_of_damage":"Colony Electrical Cause of Damage_._Electrical Equipment fault"},{"fail_de_type_of_damage":"Colony Electrical Cause of Damage_._Due to age of wire"},{"fail_de_type_of_damage":"Colony Electrical Cause of Damage_._Overload"},{"fail_de_type_of_damage":"Colony Electrical Cause of Damage_._Due to Wind and rain"},{"fail_de_type_of_damage":"Machine tool Cause of damage Electronics_._Overload"},{"fail_de_type_of_damage":"Machine tool Cause of damage Electronics_._Control Circuit faulty"},{"fail_de_type_of_damage":"Machine tool Cause of damage Electronics_._Panel cooling"},{"fail_de_type_of_damage":"Machine tool Cause of damage Electronics_._Module Junction high temperature"},{"fail_de_type_of_damage":"High tension causes_._Carbonization"},{"fail_de_type_of_damage":"High tension causes_._Dusty"},{"fail_de_type_of_damage":"High tension causes_._Due to earth moving equipment"},{"fail_de_type_of_damage":"High tension causes_._Due to insulation weak"},{"fail_de_type_of_damage":"High tension causes_._Current transformer short"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Overload"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Short circuit"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Roof leakage"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Loose connection"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Wrong cable choice"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Wrong connection"},{"fail_de_type_of_damage":"Low tension Causes_._Overload"},{"fail_de_type_of_damage":"Low tension Causes_._Carbonization"},{"fail_de_type_of_damage":"Low tension Causes_._Short circuit"},{"fail_de_type_of_damage":"Colony Masonary work Cause of Damage_._Due to age"},{"fail_de_type_of_damage":"Colony Masonary work Cause of Damage_._Falling of heavy part"},{"fail_de_type_of_damage":"Colony Masonary work Cause of Damage_._Due to taking up of Major repair"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Mis-alignment"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Normal wearout"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Lack of lubrication"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Over pressure"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Overspeed"},{"fail_de_type_of_damage":"Causes for damages/ failure_._wrong assembly"},{"fail_de_type_of_damage":"Causes for damages/ failure_._wrong operation/ setting"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Material defect"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Manufacturing defect"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Design defect"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Limit crossed / override"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive heat"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Sensor failure"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Improper tolerance in assy"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive vibration"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive run-out"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Use of un-standard material"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Foundation is loose"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Foundation bolts are loose"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive moisture"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive dust"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Daily cleaning not done"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Daily lubrication not done"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Daily checks not done"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Wipers condition is not ok"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Malfunctioning"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive backlash in drive"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Wrong sizing of pipe"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive flow rate"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Back-pressure / Restriction to flow"},{"fail_de_type_of_damage":"Causes for damages/ failure_._clogging of filters"},{"fail_de_type_of_damage":"Causes for damages/ failure_._use of wrong tooling"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Improper setting of blade clearance"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Wrong programming"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Wrong compensation"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Mannual lock not released"},{"fail_de_type_of_damage":"Cause of damage - Telephone cable maint_._Lightening voltage from cable"},{"fail_de_type_of_damage":"Cause of damage - Telephone cable maint_._High voltage induction"},{"fail_de_type_of_damage":"Cause of damage - Telephone cable maint_._Due to forest fire"},{"fail_de_type_of_damage":"Cause of damage - Telephone cable maint_._Theft of cable"},{"fail_de_type_of_damage":"Cause of damage - Telephone cable maint_._over head drop wire cut"},{"fail_de_type_of_damage":"Cause of damage -UPS maintenance_._Load short circuit"},{"fail_de_type_of_damage":"Cause of damage -UPS maintenance_._Overload"},{"fail_de_type_of_damage":"Cause of damage -UPS maintenance_._Component failure in PCB"},{"fail_de_type_of_damage":"Cause of damage -UPS maintenance_._AC Ripple voltage"},{"fail_de_type_of_damage":"Colony Water Works Cause of Damage_._Heavy equipment operation in the area"},{"fail_de_type_of_damage":"Colony Water Works Cause of Damage_._Due to Rust"},{"fail_de_type_of_damage":"Colony Water Works Cause of Damage_._Due to sediments in pipe"},{"fail_de_type_of_damage":"REVALIDATION_._REVALIDATION DUE TO LONG STORAGE IN MEO"},{"fail_de_type_of_damage":"REVALIDATION_._REVALIDATION DUE TO LONG STORAGE IN DIVI"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Defects & Spoilages - Operators Fault"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Materials Fault"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Tooling"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Planning"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Drawing"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Inspection"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Sub-Contract"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Manufactured Items"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Suppliers Fault"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Damage Caused In Transit & Handling"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Storage Faults"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Supervision"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Parts Lost"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Progress Fault"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Accidents"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Defects & Spoilage - Others"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._UNDER INVESTIGATION"},{"fail_de_type_of_damage":"Causes_._Lubrication Inadequate"},{"fail_de_type_of_damage":"Causes_._Material Deficiency"},{"fail_de_type_of_damage":"Causes_._Oil Contamination"},{"fail_de_type_of_damage":"Causes_._Air Leakage"},{"fail_de_type_of_damage":"Causes_._Manufacturing Defect"},{"fail_de_type_of_damage":"Causes_._Misalignment"},{"fail_de_type_of_damage":"Causes_._Over Heating"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Engineering/design"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Procurement"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Material"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production control"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Storage"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Shipping"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Maintenance"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Repair"},{"fail_de_type_of_damage":"Beml CS cause Codes_._NORMAL"},{"fail_de_type_of_damage":"Beml CS cause Codes_._LUBRICATION INADEQUATE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._MATERIAL DEFICIENCY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OVERLOADING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._GROUND CONDITION POOR"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OPERATION FAULTY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._MANUFACTURING DEFECT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._MISALIGNMENT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._APPLICATION IMPROPER"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL CONTAMINATED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._HEAT TREATMENT INADEQUATE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._CORROSION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._INSTALLATION IMPROPER"},{"fail_de_type_of_damage":"Beml CS cause Codes_._MOUNTING BOLTS LOOSE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._DESIGN DEFICIENCY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._SHOCK LOADING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._NUTS & BOLTS LOOSE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._ASSEMBLY FAULT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL AERATED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._WRONG GRADE OIL"},{"fail_de_type_of_damage":"Beml CS cause Codes_._CAVITATION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._VIBRATION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._AIR LEAKAGE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OVERHEATING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._WELDING POOR"},{"fail_de_type_of_damage":"Beml CS cause Codes_._PRESSURE EXCESSIVE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OPERATIONAL SPEED MORE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BACK LASH IMPROPER"},{"fail_de_type_of_damage":"Beml CS cause Codes_._GEARS MISMATCHING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._COOLANT INSUFFICIENT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._CLIMATIC CONDITIONS ADVERSE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._VALVE STICKING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OVER TIGHTENING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._SUSPENSION NOT CHARGED PROPERLY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._FOREIGN MATERIAL PRESENCE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._GOVERNOR STICKING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OVER INFLATION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._UNDER INFLATION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BRAKE OVERRIDING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL LEAKAGE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL FILTER CHOCKED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL LINES RESTRICTED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL DRILLING CLOGGED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL LEVEL TOO HIGH"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL LEVEL TOO LOW"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL COOLER CLOGGED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._VIBRATION DAMPER FAULTY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._UNDER TIGHTENING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._EXCESSIVE SURFACE PRESSURE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BEARING BORE OUT OF ALIGNMENT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._CLEARANCES INADEQUATE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL VISCOSITY TOO HIGH"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL VISCOSITY TOO LOW"},{"fail_de_type_of_damage":"Beml CS cause Codes_._LINKAGE JAMMED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BREATHER CHOCKED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._CLUTCH PRESSURE LOW"},{"fail_de_type_of_damage":"Beml CS cause Codes_._COOLANT CONTAMINATED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._TUBES CLOGGED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._ARMATURE COIL SHORT CIRCUITED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BATTERY OVER CHARGED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BATTERY UNDER CHARGED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._DRIVE BELT LOOSE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._FIELD COIL SHORT CIRCUITED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._WIRING SHORT CIRCUITED/BURNT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._WIRING FAULTY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._END FITTINGS POORLY CRIMPED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._HOSE RUBBING AGAINST STRUCTURE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._AGING/LONG STORAGE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BEARING PRELOAD"},{"fail_de_type_of_damage":"Beml CS cause Codes_._MODIFICATION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._ANY OTHER"},{"fail_de_type_of_damage":"Maintenance Causes_._Cause 1"},{"fail_de_type_of_damage":"Maintenance Causes_._Cause 2"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Design"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Development"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production planning"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production/machine"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production/personnel"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Quality inspection"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Inspection planning"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Implementing inspection"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Distribution"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Sales"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Service"}],"fail_de_system_affected":[{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ENGINE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._TORQUE CONVERTOR"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._MAIN CLUTCH"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._PTO ASSY"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._DRIVE LINE/PROPELLER SHAFT/UJ ASSY/INTER"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._TRANSMISSION"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._FINAL DRIVE/TRAVEL DRIVE/DIFFERENTIAL/RE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._STRUCTURAL"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._DUMP BODY/BOWL"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._CHASSIS/MAIN FRAME"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._UNDER CARRIAGE/TRACK GROUP"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._WORK EQUIPMENT/BLADE/BUCKET"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._MAIN HYDRAULIC SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._PILOT HYDRAULIC SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._STEERING SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._BRAKE SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._SUSPENSION & HOIST"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._WHEEL/TYRE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._EQUALISER BAR"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._FRONT AXLE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._HYD HOSES & PIPINGS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._SEALS & O-RINGS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._CABIN"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._FENDERS & COVERS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._HYDRAULIC CYLINDERS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._HYDRAULIC PUMPS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._HYDRAULIC CONTROL VALVES"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._TANKS(HYDRAULIC/FUEL)"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._CONTROL LINKAGES"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._EQUIPMENT MONITORING SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._FUEL SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._EMS MODULE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ECU"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._SWIVEL JOINT"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._OPTIONAL ATTACHMENTS(RIPPER, ROCK BREAKE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._SWING SYSTEM (SWING MACHINERY, SWING CIR"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._SWING CIRCLE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._HIC SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._AIR SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._COOLING SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._EXHAUST SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._AIR CONDITIONER (AC)SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._LUBRICATION SYSTEM/AUTO LUBE(ALS)"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._AUTO FIRE SUPPRESSION SYSTEM(AFPS)"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._COUNTER WEIGHT"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ELECTRICAL SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._INSTRUMENT PANEL/DASH BOARD GUAGES"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._OPERATOR SEAT"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ACCIDENT"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ACCESSORIES & OPTIONAL"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ALARM MODULES/AID"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ELECTRICAL PROPULSION"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._MOTORIZED WHEELS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._MAIN GENERATOR/ALTERNATOR"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._CONTROL CABINET"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ACCUMULATOR"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._RECTIFIERS/RESISTOR PANEL"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._JOYSTICK"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._MISCELLANEOUS/OTHERS"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 351"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 352"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 353"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 354"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 355"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 356"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 357"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 358"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 359"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 360"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 361"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 362"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 363"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 364"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 365"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 366"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 367"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 368"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 369"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 370"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 371"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 372"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 373"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 374"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 375"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 376"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 377"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 378"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 379"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 380"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 381"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 382"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 383"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 384"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 385"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 386"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 387"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 388"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 389"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 390"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 391"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 392"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 393"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 394"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 395"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 396"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 397"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 398"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 399"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 400"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 401"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 402"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 403"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 404"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 405"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 406"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 407"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 408"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 409"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 410"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 411"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 412"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 413"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 414"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 415"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 416"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 417"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 418"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 419"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 420"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 421"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 422"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 423"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 424"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 425"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 426"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 427"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 428"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 429"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 430"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 431"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 432"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 433"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 434"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 435"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 436"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 437"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 438"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 439"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 440"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 441"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 442"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 443"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 444"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 445"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 446"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 447"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 448"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 449"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 450"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 451"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 452"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 453"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 454"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 455"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 456"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 457"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 458"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 459"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 460"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 461"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 462"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 463"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 464"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 465"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 466"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 467"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 468"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 469"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 470"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 471"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 472"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 473"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 474"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 475"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 476"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 477"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 478"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 479"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 480"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 481"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 482"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 483"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 484"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 485"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 486"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 487"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 488"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 489"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 490"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 491"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 492"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 493"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 494"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 495"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 496"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 497"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 498"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 499"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 500"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 501"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 502"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 503"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 504"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 505"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 506"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 507"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 508"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 509"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 510"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 511"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 512"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 513"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 514"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 515"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 516"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 517"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 518"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 519"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 520"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 521"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 522"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 523"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 524"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 525"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 526"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 527"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 528"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 529"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 530"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 531"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 532"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 533"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 534"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 535"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 536"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 537"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 538"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 539"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 540"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 541"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 542"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 543"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 544"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 545"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 546"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 547"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 548"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 549"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 550"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 551"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 552"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 553"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 554"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 555"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 556"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 557"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 558"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 559"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 560"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 561"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 562"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 563"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 564"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 565"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 566"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 567"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 568"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 569"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 570"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 571"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 572"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 573"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 574"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 575"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 576"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 577"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 578"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 579"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 580"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 581"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 582"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 583"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 584"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 585"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 586"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 587"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 588"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 589"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 590"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 591"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 592"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 593"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 594"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 595"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 596"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 597"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 598"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 599"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 600"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 601"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 602"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 603"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 604"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 605"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 606"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 607"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 608"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 609"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 610"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 611"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 612"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 613"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 614"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 1"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 10"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 100"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 101"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 102"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 103"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 104"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 105"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 106"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 107"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 108"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 109"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 11"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 110"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 111"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 112"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 113"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 114"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 115"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 116"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 117"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 118"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 119"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 12"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 120"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 121"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 122"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 123"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 124"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 125"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 126"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 127"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 128"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 129"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 13"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 130"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 131"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 132"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 133"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 134"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 135"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 136"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 137"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 138"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 139"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 14"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 140"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 141"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 142"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 143"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 144"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 145"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 146"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 147"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 148"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 149"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 15"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 150"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 151"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 152"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 153"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 154"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 155"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 156"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 157"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 158"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 159"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 16"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 160"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 161"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 162"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 163"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 164"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 165"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 166"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 167"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 168"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 169"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 17"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 170"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 171"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 172"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 173"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 174"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 175"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 176"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 177"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 178"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 179"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 18"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 180"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 181"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 182"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 183"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 184"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 185"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 186"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 187"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 188"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 189"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 19"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 190"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 191"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 192"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 193"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 194"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 195"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 196"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 197"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 198"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 199"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 2"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 20"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 200"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 201"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 202"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 203"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 204"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 205"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 206"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 207"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 208"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 209"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 21"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 210"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 211"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 212"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 213"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 214"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 215"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 216"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 217"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 218"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 219"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 22"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 220"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 221"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 222"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 223"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 224"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 225"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 226"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 227"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 228"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 229"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 23"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 230"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 231"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 232"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 233"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 234"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 235"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 236"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 237"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 238"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 239"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 24"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 240"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 241"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 242"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 243"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 244"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 245"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 246"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 247"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 248"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 249"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 25"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 250"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 251"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 252"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 253"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 254"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 255"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 256"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 257"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 258"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 259"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 26"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 260"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 261"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 262"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 263"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 264"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 265"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 266"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 267"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 268"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 269"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 27"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 270"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 271"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 272"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 273"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 274"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 275"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 276"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 277"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 278"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 279"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 28"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 280"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 281"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 282"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 283"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 284"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 285"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 286"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 287"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 288"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 289"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 29"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 290"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 291"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 292"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 293"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 294"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 295"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 296"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 297"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 298"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 299"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 3"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 30"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 300"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 301"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 302"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 303"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 304"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 305"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 306"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 307"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 308"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 309"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 31"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 310"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 311"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 312"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 313"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 314"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 315"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 316"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 317"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 318"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 319"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 32"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 320"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 321"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 322"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 323"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 324"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 325"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 326"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 327"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 328"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 329"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 33"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 330"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 331"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 332"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 333"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 334"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 335"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 336"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 337"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 338"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 339"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 34"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 340"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 341"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 342"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 343"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 344"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 345"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 346"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 347"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 348"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 349"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 35"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 350"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 36"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 37"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 38"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 39"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 4"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 40"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 41"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 42"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 43"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 44"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 45"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 46"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 47"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 48"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 49"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 5"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 50"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 51"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 52"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 53"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 54"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 55"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 56"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 57"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 58"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 59"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 6"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 60"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 61"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 62"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 63"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 64"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 65"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 66"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 67"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 68"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 69"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 7"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 70"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 71"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 72"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 73"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 74"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 75"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 76"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 77"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 78"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 79"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 8"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 80"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 81"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 82"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 83"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 84"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 85"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 86"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 87"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 88"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 89"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 9"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 90"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 91"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 92"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 93"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 94"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 95"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 96"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 97"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 98"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 99"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 111"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 112"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 113"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 114"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 115"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 116"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 117"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 118"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 119"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 120"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 121"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 122"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 123"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 124"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 125"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 126"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 127"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 128"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 129"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 130"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 131"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 132"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 133"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 134"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 135"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 136"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 137"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 138"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 139"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 140"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 141"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 142"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 143"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 144"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 145"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 146"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 147"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 148"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 149"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 150"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 151"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 152"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 153"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 154"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 155"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 156"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 157"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 158"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 159"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 160"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 161"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 162"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 163"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 164"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 165"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 166"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 167"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 168"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 169"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 170"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 171"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 172"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 173"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 174"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 175"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 176"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 177"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 178"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 179"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 180"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 181"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 182"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 183"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 184"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 185"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 186"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 187"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 188"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 189"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 190"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 191"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 192"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 193"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 194"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 195"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 196"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 197"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 198"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 199"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 200"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 201"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 202"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 203"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 204"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 205"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 206"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 207"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 208"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 209"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 210"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 211"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 212"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 213"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 214"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 215"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 216"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 217"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 218"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 219"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 220"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 221"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 222"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 223"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 224"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 225"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 226"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 227"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 228"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 229"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 230"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 231"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 232"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 233"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 234"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 235"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 236"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 237"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 238"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 239"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 240"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 241"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 242"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 1"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 10"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 100"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 101"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 102"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 103"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 104"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 105"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 106"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 107"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 108"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 109"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 11"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 110"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 12"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 13"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 14"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 15"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 16"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 17"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 18"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 19"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 2"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 20"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 21"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 22"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 23"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 24"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 25"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 26"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 27"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 28"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 29"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 3"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 30"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 31"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 33"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 34"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 35"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 36"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 37"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 38"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 39"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 4"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 40"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 41"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 42"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 43"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 44"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 45"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 46"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 47"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 48"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 49"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 5"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 50"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 51"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 52"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 53"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 54"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 55"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 56"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 57"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 58"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 59"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 6"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 60"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 61"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 62"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 63"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 64"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 65"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 66"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 67"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 68"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 69"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 7"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 70"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 71"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 72"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 73"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 74"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 75"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 76"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 77"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 78"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 79"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 8"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 80"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 81"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 82"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 83"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 84"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 85"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 86"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 87"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 88"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 89"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 9"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 90"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 91"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 92"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 93"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 94"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 95"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 96"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 97"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 98"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 99"},{"fail_de_system_affected":"Machine tools Assy_._Toolclamping unit"},{"fail_de_system_affected":"Machine tools Assy_._Headstock"},{"fail_de_system_affected":"Machine tools Assy_._Tailstock"},{"fail_de_system_affected":"Machine tools Assy_._DrillHead"},{"fail_de_system_affected":"Machine tools Assy_._Milling Head"},{"fail_de_system_affected":"Machine tools Assy_._Feed gear-box"},{"fail_de_system_affected":"Machine tools Assy_._Spindle drive gear box"},{"fail_de_system_affected":"Machine tools Assy_._Apron"},{"fail_de_system_affected":"Machine tools Assy_._Turret assy"},{"fail_de_system_affected":"Machine tools Assy_._Cross slide"},{"fail_de_system_affected":"Machine tools Assy_._Compound rest"},{"fail_de_system_affected":"Machine tools Axis_._X-axis"},{"fail_de_system_affected":"Machine tools Axis_._Y-axis"},{"fail_de_system_affected":"Machine tools Axis_._Z-axis"},{"fail_de_system_affected":"Machine tools Axis_._B-axis"},{"fail_de_system_affected":"Machine tools Axis_._B-1axis"},{"fail_de_system_affected":"Machine tools Axis_._V-axis"},{"fail_de_system_affected":"Machine tools Axis_._W-axis"},{"fail_de_system_affected":"Machine tools Axis_._Robot-axis"},{"fail_de_system_affected":"Machine tools CNC-System_._Power supplies"},{"fail_de_system_affected":"Machine tools CNC-System_._Switch Mode Power supply"},{"fail_de_system_affected":"Machine tools CNC-System_._Mother Board"},{"fail_de_system_affected":"Machine tools CNC-System_._Memory cards /PCB"},{"fail_de_system_affected":"Machine tools CNC-System_._Memory Battery"},{"fail_de_system_affected":"Machine tools CNC-System_._Drive PCBs"},{"fail_de_system_affected":"Machine tools CNC-System_._Drive control PCB's"},{"fail_de_system_affected":"Machine tools CNC-System_._Drive Power modules"},{"fail_de_system_affected":"Machine tools CNC-System_._Power Cables"},{"fail_de_system_affected":"Machine tools CNC-System_._Data cable"},{"fail_de_system_affected":"Machine tools CNC-System_._Optical cable"},{"fail_de_system_affected":"Machine tools CNC-System_._End connectors"},{"fail_de_system_affected":"Machine tools CNC-Feed back devices_._Rotary Encoders"},{"fail_de_system_affected":"Machine tools CNC-Feed back devices_._Linear Scale"},{"fail_de_system_affected":"Machine tools CNC-Feed back devices_._Optical limit switches"},{"fail_de_system_affected":"Machine tools CNC-Feed back devices_._Proximity switches"},{"fail_de_system_affected":"Machine tools CNC-Feed back devices_._Feedback device cable"},{"fail_de_system_affected":"Machine tools Electrical System_._Control Cable"},{"fail_de_system_affected":"Machine tools Electrical System_._Circuit breaker in panel"},{"fail_de_system_affected":"Machine tools Electrical System_._Circuit Breakers"},{"fail_de_system_affected":"Machine tools Electrical System_._Contactor Control Circuit"},{"fail_de_system_affected":"Machine tools Electrical System_._Contactor main circuit"},{"fail_de_system_affected":"Machine tools Electrical System_._Contactors"},{"fail_de_system_affected":"Machine tools Electrical System_._Earthing"},{"fail_de_system_affected":"Machine tools Electrical System_._Limit switches"},{"fail_de_system_affected":"Machine tools Electrical System_._Motor"},{"fail_de_system_affected":"Machine tools Electrical System_._Power Cable"},{"fail_de_system_affected":"Machine tools Electrical System_._Proximity switch"},{"fail_de_system_affected":"Machine tools Electrical System_._Solenoid coils"},{"fail_de_system_affected":"Machine tools Electrical System_._Starter"},{"fail_de_system_affected":"Machine tools Electrical System_._Timers"},{"fail_de_system_affected":"Machine tools Electrical System_._Transformer"},{"fail_de_system_affected":"Machine tools Electrical System_._Rotary switch"},{"fail_de_system_affected":"Machine tools Electrical System_._Pressure switch"},{"fail_de_system_affected":"Machine tools Electrical System_._Mechanical stopper"},{"fail_de_system_affected":"Machine tools Electrical System_._Coil"},{"fail_de_system_affected":"Machine tools Electrical System_._Bus-bar"},{"fail_de_system_affected":"Machine tools Electrical System_._Electro Magnetic Clutch"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Pump"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Actuator/ Cylinder"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Ram"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Pressure Relief Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._D.C.Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Flow Control Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Brake Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Servo Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._NRV"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Sequence Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Throttle Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Pre-fil and exhaust Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Proportional Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Isolation Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Filter"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Pressure switch"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Pipe/Hose/Fitting"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Hydraulic oil"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._Limit switches"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._Proximity switch"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._Rotary switch"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._Pressure switch"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._Mechanical stopper"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._PLC program interlock"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 26"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 27"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 28"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 29"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 30"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 31"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 32"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 33"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 34"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 35"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 36"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 37"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 38"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 39"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 40"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 41"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 43"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 44"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 45"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 46"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 47"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 48"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 49"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 50"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 51"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 52"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 53"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 54"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 55"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 56"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 57"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 58"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 59"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 60"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 61"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 62"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 63"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 64"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 65"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 66"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 67"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 68"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 69"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 70"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 71"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 72"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 73"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 74"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 75"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 76"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 77"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 78"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 79"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 80"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 81"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 82"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 83"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 84"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 85"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 86"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 87"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 1"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 10"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 11"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 12"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 13"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 14"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 15"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 16"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 17"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 18"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 19"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 2"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 20"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 21"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 22"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 23"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 24"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 25"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 3"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 4"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 5"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 6"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 7"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 8"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 9"},{"fail_de_system_affected":"Initial 100 Hrs Service Dump Truck_._Initial 100 Hrs Service Dump Truck"},{"fail_de_system_affected":"Initial 250 Hrs Service Dump Truck_._Initial 250 Hrs Service Dump Truck"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 1"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 10"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 11"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 12"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 13"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 14"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 15"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 2"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 3"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 4"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 5"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 6"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 7"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 8"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 9"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 16"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 25"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 17"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 18"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 19"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 20"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 21"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 22"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 23"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 24"},{"fail_de_system_affected":"Maintenance Object Part_._Object part 1"},{"fail_de_system_affected":"Maintenance Object Part_._Object part 2"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-1"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-10"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-100"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-101"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-102"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-103"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-104"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-105"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-106"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-107"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-108"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-109"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-11"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-110"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-111"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-112"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-113"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-114"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-115"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-116"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-117"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-118"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-119"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-12"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-120"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-121"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-122"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-123"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-124"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-125"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-126"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-127"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-128"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-129"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-13"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-130"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-131"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-132"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-133"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-134"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-135"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-136"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-137"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-138"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-139"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-14"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-140"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-141"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-142"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-143"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-144"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-145"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-146"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-147"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-148"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-149"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-15"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-150"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-151"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-152"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-153"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-154"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-155"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-156"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-157"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-158"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-159"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-16"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-160"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-161"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-162"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-163"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-164"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-165"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-166"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-167"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-168"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-169"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-17"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-170"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-171"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-172"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-173"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-174"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-175"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-176"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-177"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-178"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-179"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-18"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-180"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-181"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-182"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-183"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-184"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-185"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-186"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-187"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-188"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-189"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-19"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-190"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-191"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-192"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-193"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-194"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-195"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-196"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-197"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-198"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-199"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-2"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-20"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-200"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-21"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-22"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-23"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-24"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-25"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-26"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-27"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-28"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-29"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-3"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-30"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-31"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-32"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-33"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-34"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-35"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-36"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-37"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-38"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-39"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-4"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-40"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-41"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-42"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-43"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-44"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-45"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-46"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-47"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-48"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-49"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-5"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-50"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-51"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-52"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-53"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-54"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-55"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-56"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-57"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-58"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-59"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-6"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-60"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-61"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-62"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-63"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-64"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-65"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-66"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-67"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-68"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-69"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-7"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-70"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-71"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-72"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-73"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-74"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-75"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-76"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-77"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-78"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-79"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-8"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-80"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-81"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-82"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-83"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-84"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-85"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-86"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-87"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-88"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-89"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-9"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-90"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-91"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-92"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-93"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-94"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-95"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-96"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-97"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-98"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-99"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-1"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-10"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-100"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-101"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-102"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-103"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-104"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-105"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-106"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-107"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-108"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-109"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-11"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-110"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-111"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-112"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-113"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-114"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-115"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-116"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-117"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-118"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-119"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-12"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-120"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-121"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-122"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-123"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-124"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-125"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-126"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-127"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-128"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-129"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-13"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-130"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-131"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-132"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-133"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-134"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-135"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-136"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-137"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-138"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-139"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-14"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-140"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-141"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-142"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-143"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-144"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-145"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-146"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-147"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-148"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-149"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-15"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-150"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-151"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-152"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-153"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-154"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-155"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-156"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-157"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-158"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-159"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-16"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-160"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-161"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-162"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-163"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-164"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-165"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-166"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-167"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-168"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-169"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-17"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-170"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-171"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-172"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-173"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-174"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-175"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-176"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-177"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-178"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-179"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-18"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-180"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-181"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-182"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-183"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-184"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-185"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-186"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-187"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-188"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-189"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-19"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-190"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-191"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-192"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-193"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-194"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-195"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-196"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-197"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-198"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-199"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-2"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-20"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-200"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-201"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-202"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-203"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-204"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-205"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-206"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-207"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-208"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-209"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-21"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-210"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-211"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-212"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-213"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-214"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-215"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-216"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-217"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-218"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-219"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-22"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-220"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-221"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-222"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-223"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-224"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-225"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-226"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-227"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-228"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-229"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-23"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-230"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-231"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-232"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-233"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-234"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-235"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-236"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-237"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-238"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-239"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-24"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-240"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-241"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-242"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-243"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-244"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-245"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-246"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-247"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-248"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-249"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-25"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-250"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-251"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-252"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-253"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-254"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-255"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-256"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-257"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-258"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-259"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-26"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-260"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-261"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-262"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-263"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-264"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-265"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-266"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-267"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-268"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-269"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-27"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-270"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-271"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-272"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-273"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-274"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-275"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-276"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-277"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-278"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-279"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-28"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-280"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-281"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-282"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-283"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-284"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-285"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-286"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-287"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-288"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-289"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-29"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-290"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-291"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-292"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-293"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-294"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-295"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-296"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-297"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-298"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-299"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-3"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-30"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-300"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-301"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-302"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-303"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-304"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-305"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-306"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-307"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-308"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-309"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-31"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-310"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-311"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-312"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-313"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-314"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-315"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-316"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-317"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-318"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-319"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-32"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-320"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-321"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-322"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-323"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-324"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-325"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-326"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-327"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-328"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-329"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-33"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-330"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-331"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-332"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-333"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-334"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-335"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-336"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-337"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-338"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-339"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-34"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-340"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-341"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-342"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-343"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-344"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-345"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-346"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-347"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-348"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-349"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-35"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-350"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-351"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-352"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-353"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-354"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-355"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-356"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-357"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-358"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-359"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-36"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-360"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-361"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-362"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-363"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-364"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-365"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-366"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-367"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-368"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-369"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-37"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-370"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-371"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-372"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-373"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-374"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-375"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-376"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-377"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-378"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-379"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-38"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-380"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-381"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-382"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-383"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-384"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-385"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-386"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-387"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-388"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-389"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-39"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-390"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-391"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-392"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-393"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-394"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-395"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-396"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-397"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-398"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-399"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-4"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-40"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-400"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-401"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-402"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-403"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-404"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-405"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-406"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-407"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-408"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-409"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-41"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-410"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-411"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-412"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-413"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-414"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-415"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-416"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-417"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-418"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-419"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-42"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-420"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-421"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-422"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-423"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-424"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-425"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-426"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-427"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-428"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-429"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-43"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-430"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-431"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-432"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-433"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-434"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-435"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-436"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-437"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-438"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-439"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-44"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-440"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-441"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-442"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-443"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-444"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-445"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-446"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-447"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-448"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-449"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-45"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-450"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-451"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-452"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-453"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-454"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-455"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-456"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-457"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-458"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-459"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-46"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-460"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-461"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-462"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-463"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-464"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-465"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-466"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-467"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-468"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-469"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-47"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-470"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-471"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-472"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-473"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-474"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-475"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-476"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-477"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-478"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-479"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-48"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-480"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-481"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-482"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-483"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-484"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-485"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-486"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-487"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-488"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-489"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-49"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-490"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-491"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-492"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-493"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-494"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-495"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-496"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-497"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-498"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-499"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-5"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-50"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-500"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-501"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-502"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-503"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-504"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-505"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-506"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-507"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-508"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-509"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-51"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-510"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-511"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-512"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-513"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-514"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-515"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-516"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-517"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-518"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-52"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-53"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-54"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-55"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-56"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-57"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-58"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-59"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-6"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-60"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-61"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-62"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-63"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-64"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-65"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-66"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-67"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-68"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-69"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-7"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-70"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-71"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-72"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-73"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-74"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-75"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-76"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-77"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-78"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-79"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-8"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-80"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-81"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-82"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-83"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-84"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-85"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-86"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-87"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-88"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-89"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-9"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-90"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-91"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-92"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-93"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-94"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-95"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-96"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-97"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-98"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-99"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-1"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-10"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-100"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-101"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-102"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-103"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-104"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-105"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-106"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-107"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-108"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-109"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-11"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-110"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-111"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-112"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-113"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-114"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-115"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-116"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-117"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-118"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-119"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-12"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-120"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-121"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-122"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-123"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-124"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-125"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-126"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-127"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-128"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-129"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-13"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-130"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-131"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-132"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-133"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-134"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-14"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-15"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-16"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-17"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-18"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-19"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-2"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-20"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-21"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-22"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-23"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-24"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-25"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-26"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-27"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-28"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-29"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-3"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-30"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-31"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-32"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-33"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-34"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-35"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-36"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-37"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-38"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-39"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-4"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-40"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-41"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-42"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-43"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-44"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-45"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-46"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-47"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-48"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-49"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-5"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-50"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-51"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-52"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-53"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-54"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-55"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-56"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-57"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-58"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-59"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-6"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-60"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-61"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-62"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-63"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-64"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-65"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-66"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-67"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-68"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-69"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-7"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-70"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-71"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-72"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-73"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-74"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-75"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-76"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-77"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-78"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-79"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-8"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-80"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-81"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-82"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-83"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-84"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-85"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-86"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-87"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-88"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-89"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-9"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-90"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-91"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-92"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-93"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-94"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-95"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-96"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-97"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-98"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-99"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-1"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-10"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-11"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-12"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-13"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-14"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-15"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-16"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-17"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-18"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-19"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-2"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-20"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-21"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-22"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-23"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-24"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-25"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-26"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-27"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-28"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-29"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-3"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-30"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-31"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-32"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-33"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-34"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-35"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-36"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-4"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-5"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-6"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-7"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-8"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-9"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-1"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-10"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-11"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-2"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-3"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-4"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-5"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-6"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-7"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-8"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-9"},{"fail_de_system_affected":"Type - VI Quarter_._Quarter no-1"}],"fail_de_parts_affected":[{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._INITIAL 50 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._INITIAL 250 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 250 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 500 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 1000 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 2000 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._ENGINE MAINTENANCE"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._CONDITION BASED MONITORING"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._PREVENTIVE MAINTENANCE"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._OTHERS"},{"fail_de_parts_affected":"ACCIDENT_._ACCIDENT"},{"fail_de_parts_affected":"ENGINE FAILURE_._BLOCK BURST"},{"fail_de_parts_affected":"ENGINE FAILURE_._VALVE DROP"},{"fail_de_parts_affected":"ENGINE FAILURE_._INJECTOR FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._FIP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._FEED PUMP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._WATER PUMP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._COOLING SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._EXHAUST SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._LUBRICATION SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._CRANK SHAFT FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._CONNECTING ROD FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._THRUST WASHER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._MUFFLER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._TURBO CHARGER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._AIR FILTER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._ENGINE BLOW-BY"},{"fail_de_parts_affected":"ENGINE FAILURE_._FUEL SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._LEAKAGES"},{"fail_de_parts_affected":"ENGINE FAILURE_._OTHERS"},{"fail_de_parts_affected":"ENGINE FAILURE_._COOLANT LEAKAGE"},{"fail_de_parts_affected":"ENGINE FAILURE_._COOLANT MIXING WITH ENGINE OIL"},{"fail_de_parts_affected":"ENGINE FAILURE_._TAPPET GASKET LEAK"},{"fail_de_parts_affected":"ENGINE FAILURE_._OIL CONSUMPTION MORE"},{"fail_de_parts_affected":"ENGINE FAILURE_._OVERHEATING"},{"fail_de_parts_affected":"ENGINE FAILURE_._CAM FOLLOWER"},{"fail_de_parts_affected":"ENGINE FAILURE_._ROCKER ARM"},{"fail_de_parts_affected":"ENGINE FAILURE_._OUTPUT SHAFT"},{"fail_de_parts_affected":"ENGINE FAILURE_._SELF STARTER"},{"fail_de_parts_affected":"ENGINE FAILURE_._SHUT OFF  COCK"},{"fail_de_parts_affected":"ENGINE FAILURE_._WATER MIXING WITH ENGINE OIL"},{"fail_de_parts_affected":"ENGINE FAILURE_._AIR INLET SYSTEM(ENGINE)"},{"fail_de_parts_affected":"ENGINE FAILURE_._COOLING SYSTEM(ENGINE)"},{"fail_de_parts_affected":"ENGINE FAILURE_._EXHAUST SYSTEM(ENGINE)"},{"fail_de_parts_affected":"ENGINE FAILURE_._LUBRICATION SYSTEM(ENGINE)"},{"fail_de_parts_affected":"ENGINE FAILURE_._FUEL SYSTEM (ENGINE)"},{"fail_de_parts_affected":"ENGINE FAILURE_._THRUST WASHER/BEARING"},{"fail_de_parts_affected":"ENGINE FAILURE_._AIR FILTER"},{"fail_de_parts_affected":"ENGINE FAILURE_._OIL LEAKAGES"},{"fail_de_parts_affected":"ENGINE FAILURE_._ENGINE ALTERNATOR"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._SHAFT SEAL FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._BEARING FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._TURBINE/IMPELLER FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._STATOR FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._SCAVENGING PUMP"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._RELIEF/REGULATOR VALVE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._OUTPUT FLANGE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._OTHERS"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._MAIN CONTROL VALVE"},{"fail_de_parts_affected":"UJ ASSEMBLY_._REAR DRIVE SHAFT SHEARED"},{"fail_de_parts_affected":"UJ ASSEMBLY_._FRONT  DRIVE SHAFT DAMAGED"},{"fail_de_parts_affected":"UJ ASSEMBLY_._FRONT DRIVE SHAFT SPIDER MOUNTING BOLTS"},{"fail_de_parts_affected":"UJ ASSEMBLY_._REAR DRIVE SHAFT SPIDER MOUNTING BOLTS S"},{"fail_de_parts_affected":"UJ ASSEMBLY_._FRONT DRIVE SHAFT CROSS BEARING FAILED"},{"fail_de_parts_affected":"UJ ASSEMBLY_._REAR DRIVE SHAFT CROSS BEARING FAILED"},{"fail_de_parts_affected":"UJ ASSEMBLY_._OTHERS"},{"fail_de_parts_affected":"TRANSMISSION_._INPUT/OUTPUT SHAFT SEAL FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._CONTROL VALVE FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._CLUTCH SEAL FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PISTON JAM"},{"fail_de_parts_affected":"TRANSMISSION_._BEARING FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSFER CASE FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PLANETARY FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._RING GEAR FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PCMV FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION CONTROLLER FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._SENSOR FAILURES"},{"fail_de_parts_affected":"TRANSMISSION_._FAULTY WIRING"},{"fail_de_parts_affected":"TRANSMISSION_._OTHERS"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION JOYSTICK FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TPS CABLE FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._SHIFT TOWER FAILURES"},{"fail_de_parts_affected":"TRANSMISSION_._SHAFT FAILURES"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION PUMP FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION SPEED SENSOR"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION DIP STICK"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION FILTER CLOGGING"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION LOCK UP SOLENOID"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION TEMPERATURE"},{"fail_de_parts_affected":"TRANSMISSION_._PTO FAILURES"},{"fail_de_parts_affected":"TRANSMISSION_._OIL LEAKAGE"},{"fail_de_parts_affected":"TRANSMISSION_._ OTHERS"},{"fail_de_parts_affected":"STEERING_._STEERING CLUTCH"},{"fail_de_parts_affected":"STEERING_._HUB/CAGE FAILURE"},{"fail_de_parts_affected":"STEERING_._SEAL LEAKAGE"},{"fail_de_parts_affected":"STEERING_._S-PIPE LEAKAGE"},{"fail_de_parts_affected":"STEERING_._STEERING CONTROL VALVE"},{"fail_de_parts_affected":"STEERING_._PROPORTIONAL VALVE"},{"fail_de_parts_affected":"STEERING_._STEERING LINKAGE"},{"fail_de_parts_affected":"STEERING_._OTHERS"},{"fail_de_parts_affected":"STEERING_._STEERING CYLINDER FAILURE"},{"fail_de_parts_affected":"STEERING_._STEERING PUMP FAILURE"},{"fail_de_parts_affected":"STEERING_._TIE ROD FAILURE"},{"fail_de_parts_affected":"STEERING_._TIE ROD EYE FAILURE"},{"fail_de_parts_affected":"STEERING_._SWIVEL JOINT FAILURE"},{"fail_de_parts_affected":"STEERING_._STEERING CONTROL UNIT"},{"fail_de_parts_affected":"STEERING_._STEERING WHEEL ROTATING FREE"},{"fail_de_parts_affected":"STEERING_._STEERING TUBE"},{"fail_de_parts_affected":"BRAKE_._BRAKE BAND FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE BOOSTER FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE VALVE FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE LINKAGE FAILURE"},{"fail_de_parts_affected":"BRAKE_._OTHERS"},{"fail_de_parts_affected":"BRAKE_._DUAL BRAKE VALVE"},{"fail_de_parts_affected":"BRAKE_._FRONT BRAKE WORN OUT"},{"fail_de_parts_affected":"BRAKE_._FRONT BRAKE JAM / NOT RELEASING"},{"fail_de_parts_affected":"BRAKE_._BRAKE HEAD FAILURE"},{"fail_de_parts_affected":"BRAKE_._PARKING BRAKE"},{"fail_de_parts_affected":"BRAKE_._OIL LEAKAGE FROM BRAKE HEAD"},{"fail_de_parts_affected":"BRAKE_._BRAKE CHAMBER FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE HOSE"},{"fail_de_parts_affected":"BRAKE_._PARKING BRAKE LINER WORN OUT"},{"fail_de_parts_affected":"BRAKE_._PARKING BRAKE DISC WORN OUT"},{"fail_de_parts_affected":"BRAKE_._PARKING BRAKE SOLENOID FAILURE"},{"fail_de_parts_affected":"BRAKE_._DISC OVERHEATING"},{"fail_de_parts_affected":"BRAKE_._BRAKE MANIFOLD FAILURE"},{"fail_de_parts_affected":"BRAKE_._RETARDER BRAKE"},{"fail_de_parts_affected":"BRAKE_._SERVICE BRAKE"},{"fail_de_parts_affected":"FINAL DRIVE_._FLANGE & PINION"},{"fail_de_parts_affected":"FINAL DRIVE_._2ND PINION FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._OIL SEAL FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._BEARING FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._FLOATING SEAL FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._SPROCKET FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._HUB FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._LEAKAGES"},{"fail_de_parts_affected":"FINAL DRIVE_._SPROCKET SHAFT FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._FINAL DRIVE PLANETORY GEAR FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._RING GEAR, SUN GEAR FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._TANDEM DRIVE LEAKAGE"},{"fail_de_parts_affected":"FINAL DRIVE_._TANDEM DRIVE CASE"},{"fail_de_parts_affected":"FINAL DRIVE_._DRAIN PLUG"},{"fail_de_parts_affected":"FINAL DRIVE_._PRELOADING"},{"fail_de_parts_affected":"FINAL DRIVE_._DIFFERENTIAL MOUNTING BOLTS"},{"fail_de_parts_affected":"FINAL DRIVE_._REAR BRAKE MOUNTING BOLTS"},{"fail_de_parts_affected":"FINAL DRIVE_._OTHERS"},{"fail_de_parts_affected":"UNDER CARRIAGE_._TRACK SHOE FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._TRACK LINK FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._LINK BUSHING FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._MASTER LINK / BOLT FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._MASTER PIN FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._TRACK ROLLER FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._CARRIER ROLLER FAILURE'"},{"fail_de_parts_affected":"UNDER CARRIAGE_._IDLER FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._TRACK TENSIONING- LOOSE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._GREASE CYLINDER SEAL FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._OTHERS"},{"fail_de_parts_affected":"MAIN FRAME_._MAIN FRAME CRACK"},{"fail_de_parts_affected":"MAIN FRAME_._TRACK FRAME FAILURE"},{"fail_de_parts_affected":"MAIN FRAME_._DIAGONAL BRACE FAILURE"},{"fail_de_parts_affected":"MAIN FRAME_._TRUNNION FAILURE"},{"fail_de_parts_affected":"MAIN FRAME_._TRUNNION CAP BOLT FAILURE"},{"fail_de_parts_affected":"MAIN FRAME_._OTHERS"},{"fail_de_parts_affected":"BLADE_._PREMATURE WEAR OF BLADE"},{"fail_de_parts_affected":"BLADE_._CRACK ON PARENT MATERIAL"},{"fail_de_parts_affected":"BLADE_._CUTTING EDGE & END BIT FAILURE"},{"fail_de_parts_affected":"BLADE_._BRACE ASSY FAILURE"},{"fail_de_parts_affected":"BLADE_._BLADE NOT ROTATING"},{"fail_de_parts_affected":"BLADE_._OTHERS"},{"fail_de_parts_affected":"MAIN CLUTCH_._MAIN CLUTCH"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._MAIN PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._MAIN CLUTCH PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._T/C PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._TANDEM PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._SWING PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._LEAKAGE FROM PUMP"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._SHAFT SEAL FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._BOOSTER PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._PILOT PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._AERATION OF PUMP"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._CONTROL VALVE SPOOL JAM"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._MAIN RELIEF VALVE FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._PILOT RELIEF VALVE FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._MANIFOLD BLOCK FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._ACCUMULATOR FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._ACCUMULATOR PRESSURE LOW"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HYDRAULIC JOYSTICK FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HYDRAULIC PUMP HOUSING CRACK"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HYDRAULIC PUMP SHAFT FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HOSE FAILURE AT CRIMPING AREA"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HOSE PUNCTURE / LEAKAGE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._O-RING FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._OIL LEAKAGE FROM FILTER ASSY"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._OIL LEAKAGE FROM TANK SIGHT GAUGE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._PUNCTURE / OIL LEAKAGE FROM TUBE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._CROSS OVER RELIEF VALVE FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HYDRALIC OIL MIXING WITH FINAL DRIVE OIL"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._OTHERS"},{"fail_de_parts_affected":"HOSES PIPINGS_._HOSES HOSES & PIPINGS PIPINGS"},{"fail_de_parts_affected":"SEALS O-RINGS_._SEALS SEALS & O-RINGS O-RINGS"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION SEAL LEAKAGE"},{"fail_de_parts_affected":"SUSPENSION_._LEAKAGE FROM HOIST CYLINDER"},{"fail_de_parts_affected":"SUSPENSION_._HOIST CONTROL VALVE FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._SCORING MARKS ON CYLINDER"},{"fail_de_parts_affected":"SUSPENSION_._STEERING RELIEF VALVE FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._HOIST PRESSURE LOW"},{"fail_de_parts_affected":"SUSPENSION_._HOIST DOWN PROBLEM"},{"fail_de_parts_affected":"SUSPENSION_._HOIST AIR  CYLINDER FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._CHECK VALVE"},{"fail_de_parts_affected":"SUSPENSION_._COUNTER BALANCE VALVE"},{"fail_de_parts_affected":"SUSPENSION_._FRONT SUSPENSION LEAKAGE"},{"fail_de_parts_affected":"SUSPENSION_._FRONT SUSPENSION SCORING MARKS ON CYLIND"},{"fail_de_parts_affected":"SUSPENSION_._REAR SUSPENSION LEAKAGE"},{"fail_de_parts_affected":"SUSPENSION_._REAR SUSPENSION SCORING MARKS ON CYLINDE"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION CHARGING VALVE FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION GAS CHARGING LOW"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION OIL CHARGING LOW"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION MOUNTING PIN FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION MOUNTING  BOLTS FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._OTHERS"},{"fail_de_parts_affected":"DRIVELINE_._DRIVELINE"},{"fail_de_parts_affected":"AXLE ASSY_._FRONT LH HUB BEARING FAILURE"},{"fail_de_parts_affected":"AXLE ASSY_._FRONT HUB GREASE LEAKAGE"},{"fail_de_parts_affected":"AXLE ASSY_._FRONT BRAKE DISC MOUNTING BOLTS"},{"fail_de_parts_affected":"AXLE ASSY_._PRELOADING"},{"fail_de_parts_affected":"AXLE ASSY_._LH AND RH STEERING  ARM FAILURE"},{"fail_de_parts_affected":"AXLE ASSY_._OTHERS"},{"fail_de_parts_affected":"DIFFERENTIAL ASSY_._DIFFERENTIAL ASSY"},{"fail_de_parts_affected":"TYRES_._BURST"},{"fail_de_parts_affected":"TYRES_._WORN OUT"},{"fail_de_parts_affected":"TYRES_._AIR POCKET FORMATION"},{"fail_de_parts_affected":"TYRES_._SPACER"},{"fail_de_parts_affected":"TYRES_._O RING FAILURE"},{"fail_de_parts_affected":"TYRES_._AIR LEAKAGES"},{"fail_de_parts_affected":"TYRES_._WHEEL RIM"},{"fail_de_parts_affected":"TYRES_._TYRE EXTENSION HOSE"},{"fail_de_parts_affected":"TYRES_._TYRE VALVE"},{"fail_de_parts_affected":"TYRES_._WEDGE BAND"},{"fail_de_parts_affected":"TYRES_._OTHERS"},{"fail_de_parts_affected":"CABIN_._CABIN FAN FAILURE"},{"fail_de_parts_affected":"CABIN_._CABIN GLASS BROKEN"},{"fail_de_parts_affected":"CABIN_._CABIN VIBRATION MORE"},{"fail_de_parts_affected":"CABIN_._CABIN BEADING CAME OUT"},{"fail_de_parts_affected":"CABIN_._CABIN DOOR LOCK BROKEN"},{"fail_de_parts_affected":"CABIN_._WIPER MOTOR NOT WORKING"},{"fail_de_parts_affected":"CABIN_._CABIN JERK MORE"},{"fail_de_parts_affected":"CABIN_._CABIN DOOR NOT OPENING"},{"fail_de_parts_affected":"CABIN_._OPERATOR SEAT NOT MOVING FORWARD / REVER"},{"fail_de_parts_affected":"CABIN_._OPERATOR SEAT NOT LIFTING / LOWERING"},{"fail_de_parts_affected":"CABIN_._OPERATOR SEAT REXIN DAMAGED"},{"fail_de_parts_affected":"CABIN_._POWER WINDOW NOT WORKING"},{"fail_de_parts_affected":"CABIN_._CABIN DOOR GLASS RATTLING / BROKEN"},{"fail_de_parts_affected":"CABIN_._OTHERS"},{"fail_de_parts_affected":"FENDERS COVERS_._FENDERS FENDERS & COVERS COVERS"},{"fail_de_parts_affected":"TRAVEL DRIVE_._TRAVEL DRIVE"},{"fail_de_parts_affected":"CYLINDER_._BLADE LIFT CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._TILT CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._BOOM CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._ARM CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._BUCKET CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._DUMP CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._STEERING CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._HOIST CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._CLAMP CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._SLIDER CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._DRAWBAR SHIFT CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._BLADE SHIFT CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._LEANING CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._SCARIFIER CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._DOZER BLADE CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._LEAKAGES"},{"fail_de_parts_affected":"CYLINDER_._OTHERS"},{"fail_de_parts_affected":"SWIVEL JOINT_._SWIVEL JOINT"},{"fail_de_parts_affected":"SWING CIRCLE_._CIRCLE REVERSE GEAR FAILURE"},{"fail_de_parts_affected":"SWING CIRCLE_._CIRCLE SUPPORT FAILURE"},{"fail_de_parts_affected":"SWING CIRCLE_._CRG SHAFT GOT FILURE"},{"fail_de_parts_affected":"SWING CIRCLE_._CRG JOINT BROKEN"},{"fail_de_parts_affected":"SWING CIRCLE_._HYDRAULIC OIL LEAKAGE FROM CRG ASSY"},{"fail_de_parts_affected":"SWING CIRCLE_._SWING CIRCLE CRACKED"},{"fail_de_parts_affected":"SWING CIRCLE_._CIRCLE REVERSE GEAR TEETH DAMAGED"},{"fail_de_parts_affected":"SWING CIRCLE_._CUTTING EDGE WORN OUT"},{"fail_de_parts_affected":"SWING CIRCLE_._CUTTING EDGE BROKEN / FAILURE"},{"fail_de_parts_affected":"SWING CIRCLE_._O-RING FAILURE"},{"fail_de_parts_affected":"SWING CIRCLE_._LEAKAGES"},{"fail_de_parts_affected":"SWING CIRCLE_._OTHERS"},{"fail_de_parts_affected":"SWING MACHINERY_._SWING MACHINERY"},{"fail_de_parts_affected":"HIC SYSTEM_._SWING CIRCLE"},{"fail_de_parts_affected":"AIR SYSTEM_._HIC SYSTEM"},{"fail_de_parts_affected":"AIR SYSTEM_._AIR PRESSURE LOW"},{"fail_de_parts_affected":"AIR SYSTEM_._AIR NOT BUILDING"},{"fail_de_parts_affected":"AIR SYSTEM_._GRADUATED HAND CONTROL VALVE LEAKING / F"},{"fail_de_parts_affected":"AIR SYSTEM_._AIR HORN NOT WORKING"},{"fail_de_parts_affected":"AIR SYSTEM_._AIR CYLINDER FAILURE"},{"fail_de_parts_affected":"AIR SYSTEM_._LIMIT & QUICK RELEASE VALVE FAILURE"},{"fail_de_parts_affected":"AIR SYSTEM_._PRESSURE DIFFERENTIAL SWITCH FAILURE"},{"fail_de_parts_affected":"AIR SYSTEM_._RELAY EMERGENCY VALVE"},{"fail_de_parts_affected":"AIR SYSTEM_._RELAY VALVE"},{"fail_de_parts_affected":"AIR SYSTEM_._BRAKE VALVE"},{"fail_de_parts_affected":"AIR SYSTEM_._BOOSTER PUMP"},{"fail_de_parts_affected":"AIR SYSTEM_._RELAY SWITCH"},{"fail_de_parts_affected":"AIR SYSTEM_._OTHERS"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._TRANSMISSION OIL COOLER PUNCTURE"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._BRAKE OIL COOLER PUNCTURE"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._HOSE FAILURE"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._OIL LEAKAGE"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._OTHERS"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._EXHAUST PIVOT SEAL LEAK"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._EXHAUST TUBE  PUNCTURE / CRACK"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._EXHAUST BOX VIBRATION PROBLEM"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._COMPRESSOR FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._CLUTCH FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._RECEIVER-DRIER FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._CONDENSER COIL FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._CONDENSER MOTOR FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._SUCTION & DELIVERY HOSE FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._EXPANSION VALVE FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._EVAPORATOR COIL FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._EVAPORATOR MOTOR FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._THERMOSTAT SWITCH FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._SPEED SELECTOR FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._LOUVER ASSY FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._COMPRESSOR MOUNTING BRACKET FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._V-BELT FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._OTHERS"},{"fail_de_parts_affected":"AUTO FIRE SUPRESSION SYSTEM_._AUTO LUB SYSTEM"},{"fail_de_parts_affected":"ELECTRICAL SYSTEM_._ELECTRICAL SYSTEM"},{"fail_de_parts_affected":"OTHERS_._WIRING SHORT CIRCUIT"},{"fail_de_parts_affected":"OTHERS_._FUSE BLOWN"},{"fail_de_parts_affected":"OTHERS_._MCB FAILURE"},{"fail_de_parts_affected":"OTHERS_._SELF STARTER FAILURE"},{"fail_de_parts_affected":"OTHERS_._ALTERNATOR FAILURE"},{"fail_de_parts_affected":"OTHERS_._BATTERY RELAY FAILURE"},{"fail_de_parts_affected":"OTHERS_._BATTERY FAILURE"},{"fail_de_parts_affected":"OTHERS_._KEY SWITCH FAILURE"},{"fail_de_parts_affected":"OTHERS_._ENGINE PROTECTION UNIT FAILURE"},{"fail_de_parts_affected":"OTHERS_._SHUT OFF SOLENOID FAILURE"},{"fail_de_parts_affected":"OTHERS_._SENSOR / SWITCH FAILURE"},{"fail_de_parts_affected":"OTHERS_._HEAD LIGHT FAILURE"},{"fail_de_parts_affected":"OTHERS_._FOG LAMP FAILURE"},{"fail_de_parts_affected":"OTHERS_._SMART ALARM FAILURE"},{"fail_de_parts_affected":"OTHERS_._EMS MODULE FAILURE"},{"fail_de_parts_affected":"OTHERS_._NEUTRAL START SWITCH FAILURE"},{"fail_de_parts_affected":"OTHERS_._REVERSE SIGNAL SWITCH FAILURE"},{"fail_de_parts_affected":"OTHERS_._BACKUP ALARM NOT WORKING"},{"fail_de_parts_affected":"OTHERS_._TURN SIGNAL INDICATOR NOT WORKING"},{"fail_de_parts_affected":"OTHERS_._TURN SIGNAL SWITCH NOT WORKING"},{"fail_de_parts_affected":"OTHERS_._EMERGENCY STEERING MOTOR FAIL"},{"fail_de_parts_affected":"OTHERS_._MURPHY SYSTEM DISPLAY NOT WORKING"},{"fail_de_parts_affected":"OTHERS_._MURPHY I/O MODULE FAILURE"},{"fail_de_parts_affected":"OTHERS_._MURPHY SENSOR / SENDER FAILURE"},{"fail_de_parts_affected":"OTHERS_._WATER TEMPERATURE GUAGE"},{"fail_de_parts_affected":"OTHERS_._ENGINE OIL PRESSURE"},{"fail_de_parts_affected":"OTHERS_._ENGINE OIL TEMPERATURE"},{"fail_de_parts_affected":"OTHERS_._TRANSMISSION OIL PRESSURE"},{"fail_de_parts_affected":"OTHERS_._TRANSMISSION OIL TEMPERATURE"},{"fail_de_parts_affected":"OTHERS_._ENGINE WIRE HARNESS"},{"fail_de_parts_affected":"OTHERS_._EQUIPMENT WIRE HARNESS"},{"fail_de_parts_affected":"OTHERS_._OTHERS"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._PANEL PLATE CRACK"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._TACHOHOURMETER  / CABLE FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._PRESSURE GUAGE FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._TEMPERATURE GUAGE FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._AMMETER FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._VOLTMETER FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._RUN IDLE SWITCH FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._START / STOP SWITCH FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._TOGGLE SWITCH FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._FUEL GAUGE FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._ALL GAUGES GLOWING"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._INDICATOR LIGHTS NOT WORKING"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._WARNING CLUSTER"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._SWITCH FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._HOIST/HOLD/DOWN SWITCH NOT WORKING"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._EMERGENCY STEERING SWITCH FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._PARKING BRAKE / DUMP BRAKE SWITCH NOT WO"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._OTHERS"},{"fail_de_parts_affected":"PTO ASSY_._BEARING FAILURE"},{"fail_de_parts_affected":"PTO ASSY_._LUBRICATION TUBE FAILURE"},{"fail_de_parts_affected":"PTO ASSY_._GEAR FAILURE"},{"fail_de_parts_affected":"PTO ASSY_._LEAKAGE"},{"fail_de_parts_affected":"PTO ASSY_._OTHERS"}],"tck_det_purpose":[{"tck_det_purpose":"REHABILITATION"},{"tck_det_purpose":"OVERHAUL"},{"tck_det_purpose":"UPGRADTION"},{"tck_det_purpose":"PARTS REQUIREMNT"},{"tck_det_purpose":"EQUIPMENT HEALTH CHECK UP"},{"tck_det_purpose":"WARRANTY CLAIM FOR SUB ASSEMBLY / OTHER SPARE PARTS"},{"tck_det_purpose":"INSPECTION OF REJECTED SPARES"}],"mt_major_aggrts":[{"mt_major_aggrts":"Engine"},{"mt_major_aggrts":"Transmission"},{"mt_major_aggrts":"Final Drive"},{"mt_major_aggrts":"Differential"},{"mt_major_aggrts":"Motor"},{"mt_major_aggrts":"Others"}],"mt_pdical_maint_type":[{"mt_pdical_maint_type":"Every 250 hrs"},{"mt_pdical_maint_type":"Every 500 Hrs"},{"mt_pdical_maint_type":"Every 750 Hrs"},{"mt_pdical_maint_type":"Every 1000 Hrs"},{"mt_pdical_maint_type":"Every 1250 Hrs"},{"mt_pdical_maint_type":"Every 1500 Hrs"},{"mt_pdical_maint_type":"Every 2000 Hrs"},{"mt_pdical_maint_type":"Every 1000 KM"}],"mod_of_sub_ambly":[{"mod_of_sub_ambly":"EG Engine"},{"mod_of_sub_ambly":"PCMV Transmission"},{"mod_of_sub_ambly":"Regular"},{"mod_of_sub_ambly":"ATGEMS Transmission"},{"mod_of_sub_ambly":"ALLISION Transmission"},{"mod_of_sub_ambly":"AVTEC Transmission"},{"mod_of_sub_ambly":"EG Transmission"},{"mod_of_sub_ambly":"Not Applicable"}],"war_claim_dte":[{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"},{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"}],"sad_line_status":[{"sad_line_status":"Damage"},{"sad_line_status":"Malfunctioning"},{"sad_line_status":"Not Working"},{"sad_line_status":"Shortage"}],"sad_line_event":[{"sad_line_event":"During Transit"},{"sad_line_event":"During Installation/Commissioning"},{"sad_line_event":"Damage on Customer Account"},{"sad_line_event":"Missing"},{"sad_line_event":"Short shipped from division"},{"sad_line_event":"Theft under BEML custody"},{"sad_line_event":"Theft under Customer custody"}],"ecd_can_be_com":[{"ecd_can_be_com":"Yes"},{"ecd_can_be_com":"No"}],"sad_war_start_con":[{"sad_war_start_con":"Date of Receipt at Customer site"},{"sad_war_start_con":"Date of commissioning/Fitment"},{"sad_war_start_con":"Date of Invoice/Billing"}],"sad_type_of_sub_ass":[{"sad_type_of_sub_ass":"New"},{"sad_type_of_sub_ass":"Recon"},{"sad_type_of_sub_ass":"Repair"}],"sad_war_term":[{"sad_war_term":"Month Or HMR/KM"},{"sad_war_term":"Month And HMR/KM"},{"sad_war_term":"Only Month"},{"sad_war_term":"Only HMR/KM"}],"sad_war_term_app":[{"sad_war_term_app":"YES"},{"sad_war_term_app":"NO"}],"sad_su_ass_srp":[{"sad_su_ass_srp":"Engine"},{"sad_su_ass_srp":"Transmission"},{"sad_su_ass_srp":"Final Drive"},{"sad_su_ass_srp":"Hydraulic Pump"},{"sad_su_ass_srp":"Motor"}],"sad_su_ass_mod_srp":[{"sad_su_ass_mod_srp":"BH100"}],"at_sais":[{"at_sais":"Completed"},{"at_sais":"Not Completed"}],"at_on_account_of":[{"at_on_account_of":"BEML"},{"at_on_account_of":"CUSTOMER"}],"at_dm_status":[{"at_dm_status":"Completed"},{"at_dm_status":"Not Completed"}],"dmd_system":[{"dmd_system":"a"},{"dmd_system":"b"}],"war_warable":[{"war_warable":"Yes"},{"war_warable":"No"}],"eq_sta_aft_act_t_sub":[{"eq_sta_aft_act_t_sub":"Not Working"},{"eq_sta_aft_act_t_sub":"Working with Problem"},{"eq_sta_aft_act_t_sub":"Working"}],"vendor_item":[{"vendor_item":"AFDSS"},{"vendor_item":"Auto Lube"},{"vendor_item":"Engine"},{"vendor_item":"AC"}],"at_brkdn_sr_req":[{"at_brkdn_sr_req":"Yes"},{"at_brkdn_sr_req":"No"}],"genchk_oil_pre_tr":[{"genchk_oil_pre_tr":"OK"},{"genchk_oil_pre_tr":"NOT OK"}],"genchk_oil_tr_tem":[{"genchk_oil_tr_tem":"OK"},{"genchk_oil_tr_tem":"NOT OK"}],"genchk_brk_oil_tem":[{"genchk_brk_oil_tem":"OK"},{"genchk_brk_oil_tem":"NOT OK"},{"genchk_brk_oil_tem":"NA"}],"at_copm":[{"at_copm":"Completed"},{"at_copm":"Not Completed"}],"lid_msr":[{"lid_msr":"Customer"},{"lid_msr":"BEML"}],"lid_line_event":[{"lid_line_event":"Damage in Transit"},{"lid_line_event":"Damage during Installation/Commissioning"},{"lid_line_event":"Damage from Customer side"},{"lid_line_event":"Shortage in Consignment"}],"sad_valid_sl_no":[{"sad_valid_sl_no":"Yes"},{"sad_valid_sl_no":"No"}],"sad_sel_ag_name":[{"sad_sel_ag_name":"Engine"},{"sad_sel_ag_name":"Transmission"},{"sad_sel_ag_name":"Final Drive"},{"sad_sel_ag_name":"Differential"},{"sad_sel_ag_name":"Motor"},{"sad_sel_ag_name":"Others"}]}
/// statusMessage : "Successfully Fetched Data"

UpdateModelOfPickList updateModelOfPickListFromJson(String str) =>
    UpdateModelOfPickList.fromJson(json.decode(str));
String updateModelOfPickListToJson(UpdateModelOfPickList data) =>
    json.encode(data.toJson());

class UpdateModelOfPickList {
  UpdateModelOfPickList({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  UpdateModelOfPickList.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  UpdateModelOfPickList copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      UpdateModelOfPickList(
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
/// sr_action_two : [{"sr_action_two":"Required"},{"sr_action_two":"Not Required"},{"sr_action_two":"Required"},{"sr_action_two":"Not Required"}]
/// sr_replace_action : [{"sr_replace_action":"From BEML Stock"},{"sr_replace_action":"From Vendor Stock"},{"sr_replace_action":"From Customer Stock"}]
/// sr_equip_status : [{"sr_equip_status":"On Road"},{"sr_equip_status":"Running with Problem"},{"sr_equip_status":"Off Road"}]
/// type_of_conrt : [{"type_of_conrt":"GPCC"},{"type_of_conrt":"COSTCAP"},{"type_of_conrt":"FMC"},{"type_of_conrt":"MARC"},{"type_of_conrt":"AMC"}]
/// genchk_engine : [{"genchk_engine":"Applicable"},{"genchk_engine":"Not Applicable"}]
/// genchk_oil_pressure : [{"genchk_oil_pressure":"OK"},{"genchk_oil_pressure":"NOT OK"}]
/// genchk_oil_temperature : [{"genchk_oil_temperature":"OK"},{"genchk_oil_temperature":"NOT OK"}]
/// genchk_coolant_temperature : [{"genchk_coolant_temperature":"OK"},{"genchk_coolant_temperature":"NOT OK"}]
/// genchk_transmission : [{"genchk_transmission":"Applicable"},{"genchk_transmission":"Not Applicable"}]
/// genchk_brake : [{"genchk_brake":"Applicable"},{"genchk_brake":"Not Applicable"}]
/// genchk_air_pressure : [{"genchk_air_pressure":"OK"},{"genchk_air_pressure":"NOT OK"},{"genchk_air_pressure":"NA"}]
/// genchk_electrical : [{"genchk_electrical":"Applicable"},{"genchk_electrical":"Not Applicable"}]
/// genchk_motor : [{"genchk_motor":"OK"},{"genchk_motor":"NOT OK"},{"genchk_motor":"NA"}]
/// genchk_transformer : [{"genchk_transformer":"OK"},{"genchk_transformer":"NOT Ok"},{"genchk_transformer":"NA"}]
/// genchk_field_switch : [{"genchk_field_switch":"OK"},{"genchk_field_switch":"NOT OK"},{"genchk_field_switch":"NA"}]
/// genchk_auto_electrical_system : [{"genchk_auto_electrical_system":"OK"},{"genchk_auto_electrical_system":"NOT OK"},{"genchk_auto_electrical_system":"NA"}]
/// genchk_battery_voltage : [{"genchk_battery_voltage":"OK"},{"genchk_battery_voltage":"NOT OK"},{"genchk_battery_voltage":"NA"}]
/// genchk_hydraulic : [{"genchk_hydraulic":"Applicable"},{"genchk_hydraulic":"Not Applicable"}]
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
/// fail_de_part_pertains_to : [{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Customer"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - EM Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - H & P Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - R & D"},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Truck Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Engine Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._BEML - Rail & Metro Divn."},{"fail_de_part_pertains_to":"Responsible Agency_._ALLISON"},{"fail_de_part_pertains_to":"Responsible Agency_._BRAKES INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._CIL / CDSS"},{"fail_de_part_pertains_to":"Responsible Agency_._CEAT Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._GHATKE PATIL"},{"fail_de_part_pertains_to":"Responsible Agency_._GUINTY - ITALY"},{"fail_de_part_pertains_to":"Responsible Agency_._HM-PPD"},{"fail_de_part_pertains_to":"Responsible Agency_._KOMATSU Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._LINCOLN INDIA"},{"fail_de_part_pertains_to":"Responsible Agency_._MICHELIN"},{"fail_de_part_pertains_to":"Responsible Agency_._OTHERS"},{"fail_de_part_pertains_to":"Responsible Agency_._TVS Ltd"},{"fail_de_part_pertains_to":"Responsible Agency_._Usha Telehoist Ltd"}]
/// fail_de_sap_noti_type : [{"fail_de_sap_noti_type":"ZW"},{"fail_de_sap_noti_type":"ZJ"},{"fail_de_sap_noti_type":"ZC"},{"fail_de_sap_noti_type":"ZF"},{"fail_de_sap_noti_type":"ZH"},{"fail_de_sap_noti_type":"ZO"},{"fail_de_sap_noti_type":"ZE"},{"fail_de_sap_noti_type":"ZB"},{"fail_de_sap_noti_type":"Z3"},{"fail_de_sap_noti_type":"Z2"},{"fail_de_sap_noti_type":"Z4"}]
/// fail_de_failure_investigation : [{"fail_de_failure_investigation":"Completed"},{"fail_de_failure_investigation":"In-process"},{"fail_de_failure_investigation":"On Hold"}]
/// fd_sub_div : [{"fd_sub_div":"Engine"},{"fd_sub_div":"Truck"},{"fd_sub_div":"H&P"},{"fd_sub_div":"EM"}]
/// eq_sr_equip_model : [{"eq_sr_equip_model":"BH100"},{"eq_sr_equip_model":"BWS70"},{"eq_sr_equip_model":"BG825"},{"eq_sr_equip_model":"BH100"},{"eq_sr_equip_model":"BWS70"},{"eq_sr_equip_model":"BG825"}]
/// fd_eq_sta_bsr : [{"fd_eq_sta_bsr":"On Road"},{"fd_eq_sta_bsr":"Running with Problem"},{"fd_eq_sta_bsr":"Off Road"}]
/// sr_designaion : [{"sr_designaion":"Chairman & Managing Director"},{"sr_designaion":"Director(Mining & Construction Business)"},{"sr_designaion":"Director(Defence Business)"},{"sr_designaion":"Director"},{"sr_designaion":"Executive Director"},{"sr_designaion":"Executive Director"},{"sr_designaion":"General Manager"},{"sr_designaion":"Deputy General Manager"},{"sr_designaion":"Assistant General Manager"},{"sr_designaion":"Senior Manager"},{"sr_designaion":"Manager"},{"sr_designaion":"Assistant Manager"},{"sr_designaion":"Engineer"},{"sr_designaion":"Assistant Engineer"},{"sr_designaion":"Senior Supervisor-S-6"},{"sr_designaion":"Senior Supervisor-S-5"},{"sr_designaion":"Senior Supervisor-S-4"},{"sr_designaion":"Supervisor- S-3"},{"sr_designaion":"Joint Supervisior-S-2"},{"sr_designaion":"Deputy Supervisor-S-1"},{"sr_designaion":"Master Skilled Technician-Gr.-E"},{"sr_designaion":"High Skilled Technician-Gr.-D"},{"sr_designaion":"Senior Technician-Gr.-C"},{"sr_designaion":"Technician-Gr.-B"},{"sr_designaion":"Helper- Gr-A"}]
/// sr_regional_office : [{"sr_regional_office":"Neyveli"},{"sr_regional_office":"Sambalpur"},{"sr_regional_office":"Kolkata"},{"sr_regional_office":"Dhanbad"},{"sr_regional_office":"Bangalore"},{"sr_regional_office":"Hyderabad"},{"sr_regional_office":"New Delhi"},{"sr_regional_office":"Nagpur"},{"sr_regional_office":"Bilaspur"},{"sr_regional_office":"Mumbai"},{"sr_regional_office":"Ranchi"},{"sr_regional_office":"Singrauli"}]
/// dist_off_or_act_cen : [{"dist_off_or_act_cen":"Neyveli"},{"dist_off_or_act_cen":"Sambalpur"},{"dist_off_or_act_cen":"Kolkata"},{"dist_off_or_act_cen":"Dhanbad"},{"dist_off_or_act_cen":"Bangalore"},{"dist_off_or_act_cen":"Hyderabad"},{"dist_off_or_act_cen":"New Delhi"},{"dist_off_or_act_cen":"Nagpur"},{"dist_off_or_act_cen":"Chennai"},{"dist_off_or_act_cen":"Bhubaneshwar"},{"dist_off_or_act_cen":"Asansol"},{"dist_off_or_act_cen":"Guwahati"},{"dist_off_or_act_cen":"Hospet"},{"dist_off_or_act_cen":"Ramagundam"},{"dist_off_or_act_cen":"Bacheli"},{"dist_off_or_act_cen":"Kothagudem"},{"dist_off_or_act_cen":"Jammu"},{"dist_off_or_act_cen":"Leh"},{"dist_off_or_act_cen":"Chandrapur"},{"dist_off_or_act_cen":"Bhilai"},{"dist_off_or_act_cen":"Ahmedabad"},{"dist_off_or_act_cen":"Udaipur"},{"dist_off_or_act_cen":"Kochi"},{"dist_off_or_act_cen":"Itanagar"},{"dist_off_or_act_cen":"Silapathar"},{"dist_off_or_act_cen":"Vishakapatnam"},{"dist_off_or_act_cen":"Bhopal"},{"dist_off_or_act_cen":"Maihar"},{"dist_off_or_act_cen":"Goa"},{"dist_off_or_act_cen":"Pune"}]
/// eq_sta_aft_act_taken : [{"eq_sta_aft_act_taken":"On Road"},{"eq_sta_aft_act_taken":"Running with Problem"},{"eq_sta_aft_act_taken":"Off Road"}]
/// off_on_account_of : [{"off_on_account_of":"BEML"},{"off_on_account_of":"CUSTOMER"}]
/// fail_de_type_of_damage : [{"fail_de_type_of_damage":"Colony Carpentry Cause of Damage_._Termite attack"},{"fail_de_type_of_damage":"Colony Carpentry Cause of Damage_._Due to age of wood"},{"fail_de_type_of_damage":"Colony Carpentry Cause of Damage_._Due to wind (glass broken)"},{"fail_de_type_of_damage":"Cause of damage - Air compressor lines_._Earth moving eqpt damage pipe"},{"fail_de_type_of_damage":"Cause of damage - Air compressor lines_._Rusted pipe open"},{"fail_de_type_of_damage":"Cause of damage - Air compressor lines_._Valve kept open"},{"fail_de_type_of_damage":"Cause of damage - Air compressor lines_._Compressor not loading"},{"fail_de_type_of_damage":"Cause of damage - Air compressor lines_._Overload"},{"fail_de_type_of_damage":"Crane Maintenance cause of damage_._Overload"},{"fail_de_type_of_damage":"Crane Maintenance cause of damage_._Long usage"},{"fail_de_type_of_damage":"Crane Maintenance cause of damage_._Repeated operation w/o break"},{"fail_de_type_of_damage":"Crane Maintenance cause of damage_._Load Slipped from hook"},{"fail_de_type_of_damage":"Crane Maintenance cause of damage_._Hook block swang and hit"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Short circuit"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Overload"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Carbon deposition"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Loose contact"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Accident"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Mechanical Jam"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Insulation weak"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Cable cut due to heavy part falling"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Wrong Operation"},{"fail_de_type_of_damage":"Colony Electrical Cause of Damage_._Short circuit"},{"fail_de_type_of_damage":"Colony Electrical Cause of Damage_._Electrical Equipment fault"},{"fail_de_type_of_damage":"Colony Electrical Cause of Damage_._Due to age of wire"},{"fail_de_type_of_damage":"Colony Electrical Cause of Damage_._Overload"},{"fail_de_type_of_damage":"Colony Electrical Cause of Damage_._Due to Wind and rain"},{"fail_de_type_of_damage":"Machine tool Cause of damage Electronics_._Overload"},{"fail_de_type_of_damage":"Machine tool Cause of damage Electronics_._Control Circuit faulty"},{"fail_de_type_of_damage":"Machine tool Cause of damage Electronics_._Panel cooling"},{"fail_de_type_of_damage":"Machine tool Cause of damage Electronics_._Module Junction high temperature"},{"fail_de_type_of_damage":"High tension causes_._Carbonization"},{"fail_de_type_of_damage":"High tension causes_._Dusty"},{"fail_de_type_of_damage":"High tension causes_._Due to earth moving equipment"},{"fail_de_type_of_damage":"High tension causes_._Due to insulation weak"},{"fail_de_type_of_damage":"High tension causes_._Current transformer short"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Overload"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Short circuit"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Roof leakage"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Loose connection"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Wrong cable choice"},{"fail_de_type_of_damage":"Low tension BBT Cause of damage_._Wrong connection"},{"fail_de_type_of_damage":"Low tension Causes_._Overload"},{"fail_de_type_of_damage":"Low tension Causes_._Carbonization"},{"fail_de_type_of_damage":"Low tension Causes_._Short circuit"},{"fail_de_type_of_damage":"Colony Masonary work Cause of Damage_._Due to age"},{"fail_de_type_of_damage":"Colony Masonary work Cause of Damage_._Falling of heavy part"},{"fail_de_type_of_damage":"Colony Masonary work Cause of Damage_._Due to taking up of Major repair"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Mis-alignment"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Normal wearout"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Lack of lubrication"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Over pressure"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Overspeed"},{"fail_de_type_of_damage":"Causes for damages/ failure_._wrong assembly"},{"fail_de_type_of_damage":"Causes for damages/ failure_._wrong operation/ setting"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Material defect"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Manufacturing defect"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Design defect"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Limit crossed / override"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive heat"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Sensor failure"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Improper tolerance in assy"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive vibration"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive run-out"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Use of un-standard material"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Foundation is loose"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Foundation bolts are loose"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive moisture"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive dust"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Daily cleaning not done"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Daily lubrication not done"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Daily checks not done"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Wipers condition is not ok"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Malfunctioning"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive backlash in drive"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Wrong sizing of pipe"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Excessive flow rate"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Back-pressure / Restriction to flow"},{"fail_de_type_of_damage":"Causes for damages/ failure_._clogging of filters"},{"fail_de_type_of_damage":"Causes for damages/ failure_._use of wrong tooling"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Improper setting of blade clearance"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Wrong programming"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Wrong compensation"},{"fail_de_type_of_damage":"Causes for damages/ failure_._Mannual lock not released"},{"fail_de_type_of_damage":"Cause of damage - Telephone cable maint_._Lightening voltage from cable"},{"fail_de_type_of_damage":"Cause of damage - Telephone cable maint_._High voltage induction"},{"fail_de_type_of_damage":"Cause of damage - Telephone cable maint_._Due to forest fire"},{"fail_de_type_of_damage":"Cause of damage - Telephone cable maint_._Theft of cable"},{"fail_de_type_of_damage":"Cause of damage - Telephone cable maint_._over head drop wire cut"},{"fail_de_type_of_damage":"Cause of damage -UPS maintenance_._Load short circuit"},{"fail_de_type_of_damage":"Cause of damage -UPS maintenance_._Overload"},{"fail_de_type_of_damage":"Cause of damage -UPS maintenance_._Component failure in PCB"},{"fail_de_type_of_damage":"Cause of damage -UPS maintenance_._AC Ripple voltage"},{"fail_de_type_of_damage":"Colony Water Works Cause of Damage_._Heavy equipment operation in the area"},{"fail_de_type_of_damage":"Colony Water Works Cause of Damage_._Due to Rust"},{"fail_de_type_of_damage":"Colony Water Works Cause of Damage_._Due to sediments in pipe"},{"fail_de_type_of_damage":"REVALIDATION_._REVALIDATION DUE TO LONG STORAGE IN MEO"},{"fail_de_type_of_damage":"REVALIDATION_._REVALIDATION DUE TO LONG STORAGE IN DIVI"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Defects & Spoilages - Operators Fault"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Materials Fault"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Tooling"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Planning"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Drawing"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Inspection"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Sub-Contract"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Manufactured Items"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Suppliers Fault"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Damage Caused In Transit & Handling"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Storage Faults"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Faulty Supervision"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Parts Lost"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Progress Fault"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Accidents"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._Defects & Spoilage - Others"},{"fail_de_type_of_damage":"REASONS FOR REJECTION_._UNDER INVESTIGATION"},{"fail_de_type_of_damage":"Causes_._Lubrication Inadequate"},{"fail_de_type_of_damage":"Causes_._Material Deficiency"},{"fail_de_type_of_damage":"Causes_._Oil Contamination"},{"fail_de_type_of_damage":"Causes_._Air Leakage"},{"fail_de_type_of_damage":"Causes_._Manufacturing Defect"},{"fail_de_type_of_damage":"Causes_._Misalignment"},{"fail_de_type_of_damage":"Causes_._Over Heating"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Engineering/design"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Procurement"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Material"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production control"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Storage"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Shipping"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Maintenance"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Repair"},{"fail_de_type_of_damage":"Beml CS cause Codes_._NORMAL"},{"fail_de_type_of_damage":"Beml CS cause Codes_._LUBRICATION INADEQUATE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._MATERIAL DEFICIENCY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OVERLOADING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._GROUND CONDITION POOR"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OPERATION FAULTY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._MANUFACTURING DEFECT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._MISALIGNMENT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._APPLICATION IMPROPER"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL CONTAMINATED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._HEAT TREATMENT INADEQUATE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._CORROSION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._INSTALLATION IMPROPER"},{"fail_de_type_of_damage":"Beml CS cause Codes_._MOUNTING BOLTS LOOSE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._DESIGN DEFICIENCY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._SHOCK LOADING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._NUTS & BOLTS LOOSE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._ASSEMBLY FAULT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL AERATED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._WRONG GRADE OIL"},{"fail_de_type_of_damage":"Beml CS cause Codes_._CAVITATION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._VIBRATION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._AIR LEAKAGE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OVERHEATING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._WELDING POOR"},{"fail_de_type_of_damage":"Beml CS cause Codes_._PRESSURE EXCESSIVE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OPERATIONAL SPEED MORE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BACK LASH IMPROPER"},{"fail_de_type_of_damage":"Beml CS cause Codes_._GEARS MISMATCHING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._COOLANT INSUFFICIENT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._CLIMATIC CONDITIONS ADVERSE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._VALVE STICKING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OVER TIGHTENING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._SUSPENSION NOT CHARGED PROPERLY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._FOREIGN MATERIAL PRESENCE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._GOVERNOR STICKING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OVER INFLATION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._UNDER INFLATION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BRAKE OVERRIDING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL LEAKAGE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL FILTER CHOCKED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL LINES RESTRICTED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL DRILLING CLOGGED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL LEVEL TOO HIGH"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL LEVEL TOO LOW"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL COOLER CLOGGED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._VIBRATION DAMPER FAULTY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._UNDER TIGHTENING"},{"fail_de_type_of_damage":"Beml CS cause Codes_._EXCESSIVE SURFACE PRESSURE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BEARING BORE OUT OF ALIGNMENT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._CLEARANCES INADEQUATE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL VISCOSITY TOO HIGH"},{"fail_de_type_of_damage":"Beml CS cause Codes_._OIL VISCOSITY TOO LOW"},{"fail_de_type_of_damage":"Beml CS cause Codes_._LINKAGE JAMMED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BREATHER CHOCKED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._CLUTCH PRESSURE LOW"},{"fail_de_type_of_damage":"Beml CS cause Codes_._COOLANT CONTAMINATED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._TUBES CLOGGED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._ARMATURE COIL SHORT CIRCUITED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BATTERY OVER CHARGED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BATTERY UNDER CHARGED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._DRIVE BELT LOOSE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._FIELD COIL SHORT CIRCUITED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._WIRING SHORT CIRCUITED/BURNT"},{"fail_de_type_of_damage":"Beml CS cause Codes_._WIRING FAULTY"},{"fail_de_type_of_damage":"Beml CS cause Codes_._END FITTINGS POORLY CRIMPED"},{"fail_de_type_of_damage":"Beml CS cause Codes_._HOSE RUBBING AGAINST STRUCTURE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._AGING/LONG STORAGE"},{"fail_de_type_of_damage":"Beml CS cause Codes_._BEARING PRELOAD"},{"fail_de_type_of_damage":"Beml CS cause Codes_._MODIFICATION"},{"fail_de_type_of_damage":"Beml CS cause Codes_._ANY OTHER"},{"fail_de_type_of_damage":"Maintenance Causes_._Cause 1"},{"fail_de_type_of_damage":"Maintenance Causes_._Cause 2"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Design"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Development"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production planning"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production/machine"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Production/personnel"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Quality inspection"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Inspection planning"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Implementing inspection"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Distribution"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Sales"},{"fail_de_type_of_damage":"Problem Causes, Defect Causes_._Service"}]
/// fail_de_system_affected : [{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ENGINE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._TORQUE CONVERTOR"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._MAIN CLUTCH"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._PTO ASSY"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._DRIVE LINE/PROPELLER SHAFT/UJ ASSY/INTER"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._TRANSMISSION"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._FINAL DRIVE/TRAVEL DRIVE/DIFFERENTIAL/RE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._STRUCTURAL"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._DUMP BODY/BOWL"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._CHASSIS/MAIN FRAME"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._UNDER CARRIAGE/TRACK GROUP"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._WORK EQUIPMENT/BLADE/BUCKET"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._MAIN HYDRAULIC SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._PILOT HYDRAULIC SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._STEERING SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._BRAKE SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._SUSPENSION & HOIST"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._WHEEL/TYRE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._EQUALISER BAR"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._FRONT AXLE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._HYD HOSES & PIPINGS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._SEALS & O-RINGS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._CABIN"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._FENDERS & COVERS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._HYDRAULIC CYLINDERS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._HYDRAULIC PUMPS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._HYDRAULIC CONTROL VALVES"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._TANKS(HYDRAULIC/FUEL)"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._CONTROL LINKAGES"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._EQUIPMENT MONITORING SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._FUEL SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._EMS MODULE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ECU"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._SWIVEL JOINT"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._OPTIONAL ATTACHMENTS(RIPPER, ROCK BREAKE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._SWING SYSTEM (SWING MACHINERY, SWING CIR"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._SWING CIRCLE"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._HIC SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._AIR SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._COOLING SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._EXHAUST SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._AIR CONDITIONER (AC)SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._LUBRICATION SYSTEM/AUTO LUBE(ALS)"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._AUTO FIRE SUPPRESSION SYSTEM(AFPS)"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._COUNTER WEIGHT"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ELECTRICAL SYSTEM"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._INSTRUMENT PANEL/DASH BOARD GUAGES"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._OPERATOR SEAT"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ACCIDENT"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ACCESSORIES & OPTIONAL"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ALARM MODULES/AID"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ELECTRICAL PROPULSION"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._MOTORIZED WHEELS"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._MAIN GENERATOR/ALTERNATOR"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._CONTROL CABINET"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._ACCUMULATOR"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._RECTIFIERS/RESISTOR PANEL"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._JOYSTICK"},{"fail_de_system_affected":"MAJOR ASSY/SYSTEMS FOR OBJECT PART_._MISCELLANEOUS/OTHERS"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 351"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 352"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 353"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 354"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 355"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 356"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 357"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 358"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 359"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 360"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 361"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 362"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 363"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 364"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 365"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 366"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 367"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 368"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 369"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 370"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 371"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 372"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 373"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 374"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 375"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 376"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 377"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 378"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 379"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 380"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 381"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 382"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 383"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 384"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 385"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 386"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 387"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 388"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 389"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 390"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 391"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 392"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 393"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 394"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 395"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 396"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 397"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 398"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 399"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 400"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 401"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 402"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 403"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 404"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 405"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 406"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 407"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 408"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 409"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 410"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 411"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 412"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 413"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 414"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 415"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 416"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 417"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 418"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 419"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 420"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 421"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 422"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 423"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 424"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 425"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 426"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 427"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 428"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 429"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 430"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 431"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 432"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 433"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 434"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 435"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 436"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 437"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 438"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 439"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 440"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 441"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 442"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 443"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 444"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 445"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 446"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 447"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 448"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 449"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 450"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 451"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 452"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 453"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 454"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 455"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 456"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 457"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 458"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 459"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 460"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 461"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 462"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 463"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 464"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 465"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 466"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 467"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 468"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 469"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 470"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 471"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 472"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 473"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 474"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 475"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 476"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 477"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 478"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 479"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 480"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 481"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 482"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 483"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 484"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 485"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 486"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 487"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 488"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 489"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 490"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 491"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 492"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 493"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 494"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 495"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 496"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 497"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 498"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 499"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 500"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 501"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 502"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 503"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 504"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 505"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 506"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 507"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 508"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 509"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 510"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 511"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 512"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 513"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 514"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 515"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 516"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 517"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 518"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 519"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 520"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 521"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 522"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 523"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 524"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 525"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 526"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 527"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 528"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 529"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 530"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 531"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 532"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 533"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 534"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 535"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 536"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 537"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 538"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 539"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 540"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 541"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 542"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 543"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 544"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 545"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 546"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 547"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 548"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 549"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 550"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 551"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 552"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 553"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 554"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 555"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 556"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 557"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 558"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 559"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 560"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 561"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 562"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 563"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 564"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 565"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 566"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 567"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 568"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 569"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 570"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 571"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 572"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 573"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 574"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 575"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 576"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 577"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 578"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 579"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 580"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 581"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 582"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 583"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 584"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 585"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 586"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 587"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 588"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 589"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 590"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 591"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 592"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 593"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 594"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 595"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 596"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 597"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 598"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 599"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 600"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 601"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 602"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 603"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 604"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 605"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 606"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 607"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 608"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 609"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 610"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 611"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 612"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 613"},{"fail_de_system_affected":"A Type Flats_._Quarter no-A - 614"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 1"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 10"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 100"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 101"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 102"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 103"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 104"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 105"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 106"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 107"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 108"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 109"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 11"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 110"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 111"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 112"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 113"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 114"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 115"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 116"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 117"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 118"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 119"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 12"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 120"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 121"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 122"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 123"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 124"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 125"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 126"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 127"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 128"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 129"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 13"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 130"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 131"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 132"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 133"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 134"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 135"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 136"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 137"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 138"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 139"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 14"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 140"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 141"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 142"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 143"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 144"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 145"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 146"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 147"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 148"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 149"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 15"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 150"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 151"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 152"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 153"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 154"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 155"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 156"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 157"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 158"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 159"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 16"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 160"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 161"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 162"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 163"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 164"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 165"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 166"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 167"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 168"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 169"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 17"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 170"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 171"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 172"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 173"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 174"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 175"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 176"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 177"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 178"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 179"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 18"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 180"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 181"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 182"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 183"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 184"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 185"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 186"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 187"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 188"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 189"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 19"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 190"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 191"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 192"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 193"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 194"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 195"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 196"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 197"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 198"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 199"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 2"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 20"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 200"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 201"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 202"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 203"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 204"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 205"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 206"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 207"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 208"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 209"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 21"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 210"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 211"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 212"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 213"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 214"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 215"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 216"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 217"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 218"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 219"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 22"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 220"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 221"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 222"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 223"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 224"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 225"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 226"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 227"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 228"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 229"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 23"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 230"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 231"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 232"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 233"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 234"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 235"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 236"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 237"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 238"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 239"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 24"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 240"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 241"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 242"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 243"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 244"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 245"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 246"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 247"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 248"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 249"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 25"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 250"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 251"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 252"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 253"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 254"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 255"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 256"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 257"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 258"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 259"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 26"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 260"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 261"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 262"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 263"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 264"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 265"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 266"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 267"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 268"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 269"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 27"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 270"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 271"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 272"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 273"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 274"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 275"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 276"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 277"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 278"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 279"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 28"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 280"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 281"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 282"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 283"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 284"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 285"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 286"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 287"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 288"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 289"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 29"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 290"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 291"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 292"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 293"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 294"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 295"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 296"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 297"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 298"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 299"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 3"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 30"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 300"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 301"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 302"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 303"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 304"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 305"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 306"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 307"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 308"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 309"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 31"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 310"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 311"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 312"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 313"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 314"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 315"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 316"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 317"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 318"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 319"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 32"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 320"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 321"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 322"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 323"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 324"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 325"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 326"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 327"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 328"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 329"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 33"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 330"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 331"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 332"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 333"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 334"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 335"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 336"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 337"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 338"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 339"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 34"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 340"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 341"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 342"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 343"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 344"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 345"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 346"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 347"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 348"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 349"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 35"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 350"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 36"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 37"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 38"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 39"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 4"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 40"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 41"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 42"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 43"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 44"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 45"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 46"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 47"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 48"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 49"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 5"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 50"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 51"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 52"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 53"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 54"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 55"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 56"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 57"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 58"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 59"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 6"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 60"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 61"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 62"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 63"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 64"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 65"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 66"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 67"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 68"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 69"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 7"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 70"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 71"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 72"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 73"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 74"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 75"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 76"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 77"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 78"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 79"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 8"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 80"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 81"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 82"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 83"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 84"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 85"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 86"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 87"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 88"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 89"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 9"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 90"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 91"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 92"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 93"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 94"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 95"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 96"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 97"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 98"},{"fail_de_system_affected":"A Type Quarter_._Quarter no-A - 99"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 111"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 112"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 113"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 114"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 115"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 116"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 117"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 118"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 119"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 120"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 121"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 122"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 123"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 124"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 125"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 126"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 127"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 128"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 129"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 130"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 131"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 132"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 133"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 134"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 135"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 136"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 137"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 138"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 139"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 140"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 141"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 142"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 143"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 144"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 145"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 146"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 147"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 148"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 149"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 150"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 151"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 152"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 153"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 154"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 155"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 156"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 157"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 158"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 159"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 160"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 161"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 162"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 163"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 164"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 165"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 166"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 167"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 168"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 169"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 170"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 171"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 172"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 173"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 174"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 175"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 176"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 177"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 178"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 179"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 180"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 181"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 182"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 183"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 184"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 185"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 186"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 187"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 188"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 189"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 190"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 191"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 192"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 193"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 194"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 195"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 196"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 197"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 198"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 199"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 200"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 201"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 202"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 203"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 204"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 205"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 206"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 207"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 208"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 209"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 210"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 211"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 212"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 213"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 214"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 215"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 216"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 217"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 218"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 219"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 220"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 221"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 222"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 223"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 224"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 225"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 226"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 227"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 228"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 229"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 230"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 231"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 232"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 233"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 234"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 235"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 236"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 237"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 238"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 239"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 240"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 241"},{"fail_de_system_affected":"B Type Quarter Flats_._Quarter no-B - 242"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 1"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 10"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 100"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 101"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 102"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 103"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 104"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 105"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 106"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 107"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 108"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 109"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 11"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 110"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 12"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 13"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 14"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 15"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 16"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 17"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 18"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 19"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 2"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 20"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 21"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 22"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 23"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 24"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 25"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 26"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 27"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 28"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 29"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 3"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 30"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 31"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 33"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 34"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 35"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 36"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 37"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 38"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 39"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 4"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 40"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 41"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 42"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 43"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 44"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 45"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 46"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 47"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 48"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 49"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 5"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 50"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 51"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 52"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 53"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 54"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 55"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 56"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 57"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 58"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 59"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 6"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 60"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 61"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 62"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 63"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 64"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 65"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 66"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 67"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 68"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 69"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 7"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 70"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 71"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 72"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 73"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 74"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 75"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 76"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 77"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 78"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 79"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 8"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 80"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 81"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 82"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 83"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 84"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 85"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 86"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 87"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 88"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 89"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 9"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 90"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 91"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 92"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 93"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 94"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 95"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 96"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 97"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 98"},{"fail_de_system_affected":"B Type Quarter_._Quarter no-B - 99"},{"fail_de_system_affected":"Machine tools Assy_._Toolclamping unit"},{"fail_de_system_affected":"Machine tools Assy_._Headstock"},{"fail_de_system_affected":"Machine tools Assy_._Tailstock"},{"fail_de_system_affected":"Machine tools Assy_._DrillHead"},{"fail_de_system_affected":"Machine tools Assy_._Milling Head"},{"fail_de_system_affected":"Machine tools Assy_._Feed gear-box"},{"fail_de_system_affected":"Machine tools Assy_._Spindle drive gear box"},{"fail_de_system_affected":"Machine tools Assy_._Apron"},{"fail_de_system_affected":"Machine tools Assy_._Turret assy"},{"fail_de_system_affected":"Machine tools Assy_._Cross slide"},{"fail_de_system_affected":"Machine tools Assy_._Compound rest"},{"fail_de_system_affected":"Machine tools Axis_._X-axis"},{"fail_de_system_affected":"Machine tools Axis_._Y-axis"},{"fail_de_system_affected":"Machine tools Axis_._Z-axis"},{"fail_de_system_affected":"Machine tools Axis_._B-axis"},{"fail_de_system_affected":"Machine tools Axis_._B-1axis"},{"fail_de_system_affected":"Machine tools Axis_._V-axis"},{"fail_de_system_affected":"Machine tools Axis_._W-axis"},{"fail_de_system_affected":"Machine tools Axis_._Robot-axis"},{"fail_de_system_affected":"Machine tools CNC-System_._Power supplies"},{"fail_de_system_affected":"Machine tools CNC-System_._Switch Mode Power supply"},{"fail_de_system_affected":"Machine tools CNC-System_._Mother Board"},{"fail_de_system_affected":"Machine tools CNC-System_._Memory cards /PCB"},{"fail_de_system_affected":"Machine tools CNC-System_._Memory Battery"},{"fail_de_system_affected":"Machine tools CNC-System_._Drive PCBs"},{"fail_de_system_affected":"Machine tools CNC-System_._Drive control PCB's"},{"fail_de_system_affected":"Machine tools CNC-System_._Drive Power modules"},{"fail_de_system_affected":"Machine tools CNC-System_._Power Cables"},{"fail_de_system_affected":"Machine tools CNC-System_._Data cable"},{"fail_de_system_affected":"Machine tools CNC-System_._Optical cable"},{"fail_de_system_affected":"Machine tools CNC-System_._End connectors"},{"fail_de_system_affected":"Machine tools CNC-Feed back devices_._Rotary Encoders"},{"fail_de_system_affected":"Machine tools CNC-Feed back devices_._Linear Scale"},{"fail_de_system_affected":"Machine tools CNC-Feed back devices_._Optical limit switches"},{"fail_de_system_affected":"Machine tools CNC-Feed back devices_._Proximity switches"},{"fail_de_system_affected":"Machine tools CNC-Feed back devices_._Feedback device cable"},{"fail_de_system_affected":"Machine tools Electrical System_._Control Cable"},{"fail_de_system_affected":"Machine tools Electrical System_._Circuit breaker in panel"},{"fail_de_system_affected":"Machine tools Electrical System_._Circuit Breakers"},{"fail_de_system_affected":"Machine tools Electrical System_._Contactor Control Circuit"},{"fail_de_system_affected":"Machine tools Electrical System_._Contactor main circuit"},{"fail_de_system_affected":"Machine tools Electrical System_._Contactors"},{"fail_de_system_affected":"Machine tools Electrical System_._Earthing"},{"fail_de_system_affected":"Machine tools Electrical System_._Limit switches"},{"fail_de_system_affected":"Machine tools Electrical System_._Motor"},{"fail_de_system_affected":"Machine tools Electrical System_._Power Cable"},{"fail_de_system_affected":"Machine tools Electrical System_._Proximity switch"},{"fail_de_system_affected":"Machine tools Electrical System_._Solenoid coils"},{"fail_de_system_affected":"Machine tools Electrical System_._Starter"},{"fail_de_system_affected":"Machine tools Electrical System_._Timers"},{"fail_de_system_affected":"Machine tools Electrical System_._Transformer"},{"fail_de_system_affected":"Machine tools Electrical System_._Rotary switch"},{"fail_de_system_affected":"Machine tools Electrical System_._Pressure switch"},{"fail_de_system_affected":"Machine tools Electrical System_._Mechanical stopper"},{"fail_de_system_affected":"Machine tools Electrical System_._Coil"},{"fail_de_system_affected":"Machine tools Electrical System_._Bus-bar"},{"fail_de_system_affected":"Machine tools Electrical System_._Electro Magnetic Clutch"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Pump"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Actuator/ Cylinder"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Ram"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Pressure Relief Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._D.C.Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Flow Control Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Brake Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Servo Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._NRV"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Sequence Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Throttle Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Pre-fil and exhaust Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Proportional Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Isolation Valve"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Filter"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Pressure switch"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Pipe/Hose/Fitting"},{"fail_de_system_affected":"Hydraulics / Pneumatic System_._Hydraulic oil"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._Limit switches"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._Proximity switch"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._Rotary switch"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._Pressure switch"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._Mechanical stopper"},{"fail_de_system_affected":"Machine tools Safety Interlocks_._PLC program interlock"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 26"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 27"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 28"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 29"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 30"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 31"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 32"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 33"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 34"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 35"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 36"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 37"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 38"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 39"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 40"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 41"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 43"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 44"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 45"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 46"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 47"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 48"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 49"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 50"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 51"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 52"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 53"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 54"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 55"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 56"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 57"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 58"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 59"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 60"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 61"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 62"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 63"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 64"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 65"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 66"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 67"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 68"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 69"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 70"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 71"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 72"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 73"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 74"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 75"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 76"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 77"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 78"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 79"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 80"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 81"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 82"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 83"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 84"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 85"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 86"},{"fail_de_system_affected":"C Type Flats_._Quarter no-C - 87"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 1"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 10"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 11"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 12"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 13"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 14"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 15"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 16"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 17"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 18"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 19"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 2"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 20"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 21"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 22"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 23"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 24"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 25"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 3"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 4"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 5"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 6"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 7"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 8"},{"fail_de_system_affected":"C Type Quarters_._Quarter no-C - 9"},{"fail_de_system_affected":"Initial 100 Hrs Service Dump Truck_._Initial 100 Hrs Service Dump Truck"},{"fail_de_system_affected":"Initial 250 Hrs Service Dump Truck_._Initial 250 Hrs Service Dump Truck"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 1"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 10"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 11"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 12"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 13"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 14"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 15"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 2"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 3"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 4"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 5"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 6"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 7"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 8"},{"fail_de_system_affected":"D Type Quarters_._Quarter no-D - 9"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 16"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 25"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 17"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 18"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 19"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 20"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 21"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 22"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 23"},{"fail_de_system_affected":"D Type Quarter (New)_._Quarter no-D - 24"},{"fail_de_system_affected":"Maintenance Object Part_._Object part 1"},{"fail_de_system_affected":"Maintenance Object Part_._Object part 2"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-1"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-10"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-100"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-101"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-102"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-103"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-104"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-105"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-106"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-107"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-108"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-109"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-11"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-110"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-111"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-112"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-113"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-114"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-115"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-116"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-117"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-118"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-119"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-12"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-120"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-121"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-122"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-123"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-124"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-125"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-126"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-127"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-128"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-129"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-13"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-130"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-131"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-132"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-133"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-134"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-135"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-136"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-137"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-138"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-139"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-14"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-140"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-141"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-142"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-143"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-144"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-145"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-146"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-147"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-148"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-149"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-15"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-150"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-151"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-152"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-153"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-154"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-155"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-156"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-157"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-158"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-159"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-16"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-160"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-161"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-162"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-163"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-164"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-165"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-166"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-167"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-168"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-169"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-17"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-170"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-171"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-172"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-173"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-174"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-175"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-176"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-177"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-178"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-179"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-18"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-180"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-181"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-182"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-183"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-184"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-185"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-186"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-187"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-188"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-189"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-19"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-190"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-191"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-192"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-193"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-194"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-195"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-196"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-197"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-198"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-199"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-2"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-20"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-200"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-21"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-22"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-23"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-24"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-25"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-26"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-27"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-28"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-29"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-3"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-30"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-31"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-32"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-33"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-34"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-35"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-36"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-37"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-38"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-39"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-4"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-40"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-41"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-42"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-43"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-44"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-45"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-46"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-47"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-48"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-49"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-5"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-50"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-51"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-52"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-53"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-54"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-55"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-56"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-57"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-58"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-59"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-6"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-60"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-61"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-62"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-63"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-64"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-65"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-66"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-67"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-68"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-69"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-7"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-70"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-71"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-72"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-73"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-74"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-75"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-76"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-77"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-78"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-79"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-8"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-80"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-81"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-82"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-83"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-84"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-85"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-86"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-87"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-88"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-89"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-9"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-90"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-91"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-92"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-93"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-94"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-95"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-96"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-97"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-98"},{"fail_de_system_affected":"Type I Quarters_._Quarter no-99"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-1"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-10"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-100"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-101"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-102"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-103"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-104"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-105"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-106"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-107"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-108"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-109"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-11"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-110"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-111"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-112"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-113"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-114"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-115"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-116"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-117"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-118"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-119"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-12"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-120"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-121"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-122"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-123"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-124"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-125"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-126"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-127"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-128"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-129"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-13"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-130"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-131"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-132"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-133"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-134"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-135"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-136"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-137"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-138"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-139"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-14"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-140"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-141"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-142"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-143"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-144"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-145"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-146"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-147"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-148"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-149"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-15"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-150"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-151"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-152"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-153"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-154"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-155"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-156"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-157"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-158"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-159"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-16"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-160"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-161"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-162"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-163"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-164"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-165"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-166"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-167"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-168"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-169"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-17"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-170"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-171"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-172"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-173"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-174"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-175"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-176"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-177"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-178"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-179"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-18"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-180"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-181"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-182"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-183"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-184"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-185"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-186"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-187"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-188"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-189"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-19"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-190"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-191"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-192"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-193"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-194"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-195"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-196"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-197"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-198"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-199"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-2"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-20"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-200"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-201"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-202"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-203"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-204"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-205"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-206"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-207"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-208"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-209"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-21"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-210"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-211"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-212"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-213"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-214"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-215"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-216"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-217"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-218"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-219"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-22"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-220"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-221"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-222"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-223"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-224"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-225"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-226"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-227"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-228"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-229"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-23"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-230"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-231"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-232"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-233"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-234"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-235"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-236"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-237"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-238"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-239"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-24"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-240"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-241"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-242"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-243"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-244"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-245"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-246"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-247"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-248"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-249"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-25"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-250"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-251"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-252"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-253"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-254"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-255"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-256"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-257"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-258"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-259"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-26"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-260"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-261"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-262"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-263"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-264"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-265"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-266"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-267"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-268"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-269"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-27"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-270"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-271"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-272"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-273"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-274"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-275"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-276"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-277"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-278"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-279"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-28"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-280"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-281"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-282"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-283"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-284"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-285"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-286"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-287"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-288"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-289"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-29"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-290"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-291"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-292"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-293"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-294"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-295"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-296"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-297"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-298"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-299"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-3"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-30"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-300"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-301"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-302"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-303"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-304"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-305"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-306"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-307"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-308"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-309"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-31"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-310"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-311"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-312"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-313"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-314"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-315"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-316"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-317"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-318"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-319"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-32"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-320"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-321"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-322"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-323"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-324"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-325"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-326"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-327"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-328"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-329"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-33"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-330"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-331"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-332"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-333"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-334"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-335"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-336"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-337"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-338"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-339"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-34"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-340"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-341"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-342"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-343"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-344"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-345"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-346"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-347"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-348"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-349"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-35"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-350"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-351"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-352"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-353"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-354"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-355"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-356"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-357"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-358"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-359"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-36"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-360"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-361"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-362"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-363"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-364"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-365"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-366"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-367"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-368"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-369"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-37"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-370"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-371"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-372"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-373"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-374"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-375"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-376"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-377"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-378"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-379"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-38"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-380"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-381"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-382"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-383"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-384"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-385"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-386"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-387"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-388"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-389"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-39"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-390"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-391"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-392"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-393"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-394"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-395"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-396"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-397"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-398"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-399"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-4"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-40"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-400"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-401"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-402"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-403"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-404"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-405"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-406"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-407"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-408"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-409"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-41"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-410"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-411"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-412"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-413"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-414"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-415"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-416"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-417"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-418"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-419"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-42"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-420"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-421"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-422"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-423"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-424"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-425"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-426"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-427"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-428"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-429"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-43"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-430"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-431"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-432"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-433"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-434"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-435"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-436"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-437"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-438"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-439"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-44"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-440"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-441"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-442"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-443"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-444"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-445"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-446"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-447"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-448"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-449"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-45"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-450"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-451"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-452"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-453"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-454"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-455"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-456"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-457"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-458"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-459"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-46"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-460"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-461"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-462"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-463"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-464"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-465"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-466"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-467"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-468"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-469"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-47"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-470"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-471"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-472"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-473"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-474"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-475"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-476"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-477"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-478"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-479"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-48"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-480"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-481"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-482"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-483"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-484"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-485"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-486"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-487"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-488"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-489"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-49"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-490"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-491"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-492"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-493"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-494"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-495"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-496"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-497"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-498"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-499"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-5"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-50"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-500"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-501"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-502"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-503"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-504"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-505"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-506"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-507"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-508"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-509"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-51"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-510"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-511"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-512"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-513"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-514"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-515"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-516"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-517"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-518"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-52"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-53"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-54"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-55"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-56"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-57"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-58"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-59"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-6"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-60"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-61"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-62"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-63"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-64"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-65"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-66"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-67"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-68"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-69"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-7"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-70"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-71"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-72"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-73"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-74"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-75"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-76"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-77"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-78"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-79"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-8"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-80"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-81"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-82"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-83"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-84"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-85"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-86"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-87"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-88"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-89"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-9"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-90"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-91"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-92"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-93"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-94"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-95"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-96"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-97"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-98"},{"fail_de_system_affected":"Type II Quarters_._Quarter no-99"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-1"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-10"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-100"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-101"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-102"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-103"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-104"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-105"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-106"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-107"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-108"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-109"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-11"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-110"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-111"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-112"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-113"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-114"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-115"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-116"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-117"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-118"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-119"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-12"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-120"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-121"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-122"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-123"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-124"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-125"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-126"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-127"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-128"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-129"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-13"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-130"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-131"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-132"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-133"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-134"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-14"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-15"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-16"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-17"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-18"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-19"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-2"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-20"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-21"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-22"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-23"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-24"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-25"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-26"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-27"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-28"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-29"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-3"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-30"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-31"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-32"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-33"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-34"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-35"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-36"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-37"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-38"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-39"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-4"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-40"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-41"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-42"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-43"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-44"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-45"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-46"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-47"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-48"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-49"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-5"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-50"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-51"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-52"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-53"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-54"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-55"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-56"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-57"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-58"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-59"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-6"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-60"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-61"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-62"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-63"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-64"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-65"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-66"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-67"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-68"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-69"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-7"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-70"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-71"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-72"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-73"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-74"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-75"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-76"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-77"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-78"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-79"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-8"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-80"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-81"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-82"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-83"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-84"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-85"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-86"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-87"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-88"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-89"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-9"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-90"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-91"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-92"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-93"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-94"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-95"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-96"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-97"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-98"},{"fail_de_system_affected":"Type - III Quarter_._Quarter no-99"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-1"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-10"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-11"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-12"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-13"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-14"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-15"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-16"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-17"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-18"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-19"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-2"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-20"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-21"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-22"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-23"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-24"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-25"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-26"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-27"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-28"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-29"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-3"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-30"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-31"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-32"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-33"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-34"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-35"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-36"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-4"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-5"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-6"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-7"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-8"},{"fail_de_system_affected":"Type - IV Quarter_._Quarter no-9"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-1"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-10"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-11"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-2"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-3"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-4"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-5"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-6"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-7"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-8"},{"fail_de_system_affected":"Type - V Quarter_._Quarter no-9"},{"fail_de_system_affected":"Type - VI Quarter_._Quarter no-1"}]
/// fail_de_parts_affected : [{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._INITIAL 50 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._INITIAL 250 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 250 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 500 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 1000 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._EVERY 2000 HOURS"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._ENGINE MAINTENANCE"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._CONDITION BASED MONITORING"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._PREVENTIVE MAINTENANCE"},{"fail_de_parts_affected":"SCHEDULE MAINTENANCE_._OTHERS"},{"fail_de_parts_affected":"ACCIDENT_._ACCIDENT"},{"fail_de_parts_affected":"ENGINE FAILURE_._BLOCK BURST"},{"fail_de_parts_affected":"ENGINE FAILURE_._VALVE DROP"},{"fail_de_parts_affected":"ENGINE FAILURE_._INJECTOR FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._FIP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._FEED PUMP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._WATER PUMP FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._COOLING SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._EXHAUST SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._LUBRICATION SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._CRANK SHAFT FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._CONNECTING ROD FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._THRUST WASHER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._MUFFLER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._TURBO CHARGER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._AIR FILTER FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._ENGINE BLOW-BY"},{"fail_de_parts_affected":"ENGINE FAILURE_._FUEL SYSTEM FAILURE"},{"fail_de_parts_affected":"ENGINE FAILURE_._LEAKAGES"},{"fail_de_parts_affected":"ENGINE FAILURE_._OTHERS"},{"fail_de_parts_affected":"ENGINE FAILURE_._COOLANT LEAKAGE"},{"fail_de_parts_affected":"ENGINE FAILURE_._COOLANT MIXING WITH ENGINE OIL"},{"fail_de_parts_affected":"ENGINE FAILURE_._TAPPET GASKET LEAK"},{"fail_de_parts_affected":"ENGINE FAILURE_._OIL CONSUMPTION MORE"},{"fail_de_parts_affected":"ENGINE FAILURE_._OVERHEATING"},{"fail_de_parts_affected":"ENGINE FAILURE_._CAM FOLLOWER"},{"fail_de_parts_affected":"ENGINE FAILURE_._ROCKER ARM"},{"fail_de_parts_affected":"ENGINE FAILURE_._OUTPUT SHAFT"},{"fail_de_parts_affected":"ENGINE FAILURE_._SELF STARTER"},{"fail_de_parts_affected":"ENGINE FAILURE_._SHUT OFF  COCK"},{"fail_de_parts_affected":"ENGINE FAILURE_._WATER MIXING WITH ENGINE OIL"},{"fail_de_parts_affected":"ENGINE FAILURE_._AIR INLET SYSTEM(ENGINE)"},{"fail_de_parts_affected":"ENGINE FAILURE_._COOLING SYSTEM(ENGINE)"},{"fail_de_parts_affected":"ENGINE FAILURE_._EXHAUST SYSTEM(ENGINE)"},{"fail_de_parts_affected":"ENGINE FAILURE_._LUBRICATION SYSTEM(ENGINE)"},{"fail_de_parts_affected":"ENGINE FAILURE_._FUEL SYSTEM (ENGINE)"},{"fail_de_parts_affected":"ENGINE FAILURE_._THRUST WASHER/BEARING"},{"fail_de_parts_affected":"ENGINE FAILURE_._AIR FILTER"},{"fail_de_parts_affected":"ENGINE FAILURE_._OIL LEAKAGES"},{"fail_de_parts_affected":"ENGINE FAILURE_._ENGINE ALTERNATOR"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._SHAFT SEAL FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._BEARING FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._TURBINE/IMPELLER FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._STATOR FAILURE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._SCAVENGING PUMP"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._RELIEF/REGULATOR VALVE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._OUTPUT FLANGE"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._OTHERS"},{"fail_de_parts_affected":"TORQUE CONVERTER FAILURE_._MAIN CONTROL VALVE"},{"fail_de_parts_affected":"UJ ASSEMBLY_._REAR DRIVE SHAFT SHEARED"},{"fail_de_parts_affected":"UJ ASSEMBLY_._FRONT  DRIVE SHAFT DAMAGED"},{"fail_de_parts_affected":"UJ ASSEMBLY_._FRONT DRIVE SHAFT SPIDER MOUNTING BOLTS"},{"fail_de_parts_affected":"UJ ASSEMBLY_._REAR DRIVE SHAFT SPIDER MOUNTING BOLTS S"},{"fail_de_parts_affected":"UJ ASSEMBLY_._FRONT DRIVE SHAFT CROSS BEARING FAILED"},{"fail_de_parts_affected":"UJ ASSEMBLY_._REAR DRIVE SHAFT CROSS BEARING FAILED"},{"fail_de_parts_affected":"UJ ASSEMBLY_._OTHERS"},{"fail_de_parts_affected":"TRANSMISSION_._INPUT/OUTPUT SHAFT SEAL FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._CONTROL VALVE FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._CLUTCH SEAL FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PISTON JAM"},{"fail_de_parts_affected":"TRANSMISSION_._BEARING FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSFER CASE FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PLANETARY FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._RING GEAR FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._PCMV FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION CONTROLLER FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._SENSOR FAILURES"},{"fail_de_parts_affected":"TRANSMISSION_._FAULTY WIRING"},{"fail_de_parts_affected":"TRANSMISSION_._OTHERS"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION JOYSTICK FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TPS CABLE FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._SHIFT TOWER FAILURES"},{"fail_de_parts_affected":"TRANSMISSION_._SHAFT FAILURES"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION PUMP FAILURE"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION SPEED SENSOR"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION DIP STICK"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION FILTER CLOGGING"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION LOCK UP SOLENOID"},{"fail_de_parts_affected":"TRANSMISSION_._TRANSMISSION TEMPERATURE"},{"fail_de_parts_affected":"TRANSMISSION_._PTO FAILURES"},{"fail_de_parts_affected":"TRANSMISSION_._OIL LEAKAGE"},{"fail_de_parts_affected":"TRANSMISSION_._ OTHERS"},{"fail_de_parts_affected":"STEERING_._STEERING CLUTCH"},{"fail_de_parts_affected":"STEERING_._HUB/CAGE FAILURE"},{"fail_de_parts_affected":"STEERING_._SEAL LEAKAGE"},{"fail_de_parts_affected":"STEERING_._S-PIPE LEAKAGE"},{"fail_de_parts_affected":"STEERING_._STEERING CONTROL VALVE"},{"fail_de_parts_affected":"STEERING_._PROPORTIONAL VALVE"},{"fail_de_parts_affected":"STEERING_._STEERING LINKAGE"},{"fail_de_parts_affected":"STEERING_._OTHERS"},{"fail_de_parts_affected":"STEERING_._STEERING CYLINDER FAILURE"},{"fail_de_parts_affected":"STEERING_._STEERING PUMP FAILURE"},{"fail_de_parts_affected":"STEERING_._TIE ROD FAILURE"},{"fail_de_parts_affected":"STEERING_._TIE ROD EYE FAILURE"},{"fail_de_parts_affected":"STEERING_._SWIVEL JOINT FAILURE"},{"fail_de_parts_affected":"STEERING_._STEERING CONTROL UNIT"},{"fail_de_parts_affected":"STEERING_._STEERING WHEEL ROTATING FREE"},{"fail_de_parts_affected":"STEERING_._STEERING TUBE"},{"fail_de_parts_affected":"BRAKE_._BRAKE BAND FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE BOOSTER FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE VALVE FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE LINKAGE FAILURE"},{"fail_de_parts_affected":"BRAKE_._OTHERS"},{"fail_de_parts_affected":"BRAKE_._DUAL BRAKE VALVE"},{"fail_de_parts_affected":"BRAKE_._FRONT BRAKE WORN OUT"},{"fail_de_parts_affected":"BRAKE_._FRONT BRAKE JAM / NOT RELEASING"},{"fail_de_parts_affected":"BRAKE_._BRAKE HEAD FAILURE"},{"fail_de_parts_affected":"BRAKE_._PARKING BRAKE"},{"fail_de_parts_affected":"BRAKE_._OIL LEAKAGE FROM BRAKE HEAD"},{"fail_de_parts_affected":"BRAKE_._BRAKE CHAMBER FAILURE"},{"fail_de_parts_affected":"BRAKE_._BRAKE HOSE"},{"fail_de_parts_affected":"BRAKE_._PARKING BRAKE LINER WORN OUT"},{"fail_de_parts_affected":"BRAKE_._PARKING BRAKE DISC WORN OUT"},{"fail_de_parts_affected":"BRAKE_._PARKING BRAKE SOLENOID FAILURE"},{"fail_de_parts_affected":"BRAKE_._DISC OVERHEATING"},{"fail_de_parts_affected":"BRAKE_._BRAKE MANIFOLD FAILURE"},{"fail_de_parts_affected":"BRAKE_._RETARDER BRAKE"},{"fail_de_parts_affected":"BRAKE_._SERVICE BRAKE"},{"fail_de_parts_affected":"FINAL DRIVE_._FLANGE & PINION"},{"fail_de_parts_affected":"FINAL DRIVE_._2ND PINION FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._OIL SEAL FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._BEARING FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._FLOATING SEAL FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._SPROCKET FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._HUB FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._LEAKAGES"},{"fail_de_parts_affected":"FINAL DRIVE_._SPROCKET SHAFT FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._FINAL DRIVE PLANETORY GEAR FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._RING GEAR, SUN GEAR FAILURE"},{"fail_de_parts_affected":"FINAL DRIVE_._TANDEM DRIVE LEAKAGE"},{"fail_de_parts_affected":"FINAL DRIVE_._TANDEM DRIVE CASE"},{"fail_de_parts_affected":"FINAL DRIVE_._DRAIN PLUG"},{"fail_de_parts_affected":"FINAL DRIVE_._PRELOADING"},{"fail_de_parts_affected":"FINAL DRIVE_._DIFFERENTIAL MOUNTING BOLTS"},{"fail_de_parts_affected":"FINAL DRIVE_._REAR BRAKE MOUNTING BOLTS"},{"fail_de_parts_affected":"FINAL DRIVE_._OTHERS"},{"fail_de_parts_affected":"UNDER CARRIAGE_._TRACK SHOE FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._TRACK LINK FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._LINK BUSHING FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._MASTER LINK / BOLT FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._MASTER PIN FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._TRACK ROLLER FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._CARRIER ROLLER FAILURE'"},{"fail_de_parts_affected":"UNDER CARRIAGE_._IDLER FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._TRACK TENSIONING- LOOSE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._GREASE CYLINDER SEAL FAILURE"},{"fail_de_parts_affected":"UNDER CARRIAGE_._OTHERS"},{"fail_de_parts_affected":"MAIN FRAME_._MAIN FRAME CRACK"},{"fail_de_parts_affected":"MAIN FRAME_._TRACK FRAME FAILURE"},{"fail_de_parts_affected":"MAIN FRAME_._DIAGONAL BRACE FAILURE"},{"fail_de_parts_affected":"MAIN FRAME_._TRUNNION FAILURE"},{"fail_de_parts_affected":"MAIN FRAME_._TRUNNION CAP BOLT FAILURE"},{"fail_de_parts_affected":"MAIN FRAME_._OTHERS"},{"fail_de_parts_affected":"BLADE_._PREMATURE WEAR OF BLADE"},{"fail_de_parts_affected":"BLADE_._CRACK ON PARENT MATERIAL"},{"fail_de_parts_affected":"BLADE_._CUTTING EDGE & END BIT FAILURE"},{"fail_de_parts_affected":"BLADE_._BRACE ASSY FAILURE"},{"fail_de_parts_affected":"BLADE_._BLADE NOT ROTATING"},{"fail_de_parts_affected":"BLADE_._OTHERS"},{"fail_de_parts_affected":"MAIN CLUTCH_._MAIN CLUTCH"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._MAIN PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._MAIN CLUTCH PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._T/C PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._TANDEM PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._SWING PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._LEAKAGE FROM PUMP"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._SHAFT SEAL FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._BOOSTER PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._PILOT PUMP FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._AERATION OF PUMP"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._CONTROL VALVE SPOOL JAM"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._MAIN RELIEF VALVE FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._PILOT RELIEF VALVE FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._MANIFOLD BLOCK FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._ACCUMULATOR FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._ACCUMULATOR PRESSURE LOW"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HYDRAULIC JOYSTICK FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HYDRAULIC PUMP HOUSING CRACK"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HYDRAULIC PUMP SHAFT FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HOSE FAILURE AT CRIMPING AREA"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HOSE PUNCTURE / LEAKAGE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._O-RING FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._OIL LEAKAGE FROM FILTER ASSY"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._OIL LEAKAGE FROM TANK SIGHT GAUGE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._PUNCTURE / OIL LEAKAGE FROM TUBE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._CROSS OVER RELIEF VALVE FAILURE"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._HYDRALIC OIL MIXING WITH FINAL DRIVE OIL"},{"fail_de_parts_affected":"HYDRAULIC PUMPS_._OTHERS"},{"fail_de_parts_affected":"HOSES PIPINGS_._HOSES HOSES & PIPINGS PIPINGS"},{"fail_de_parts_affected":"SEALS O-RINGS_._SEALS SEALS & O-RINGS O-RINGS"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION SEAL LEAKAGE"},{"fail_de_parts_affected":"SUSPENSION_._LEAKAGE FROM HOIST CYLINDER"},{"fail_de_parts_affected":"SUSPENSION_._HOIST CONTROL VALVE FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._SCORING MARKS ON CYLINDER"},{"fail_de_parts_affected":"SUSPENSION_._STEERING RELIEF VALVE FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._HOIST PRESSURE LOW"},{"fail_de_parts_affected":"SUSPENSION_._HOIST DOWN PROBLEM"},{"fail_de_parts_affected":"SUSPENSION_._HOIST AIR  CYLINDER FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._CHECK VALVE"},{"fail_de_parts_affected":"SUSPENSION_._COUNTER BALANCE VALVE"},{"fail_de_parts_affected":"SUSPENSION_._FRONT SUSPENSION LEAKAGE"},{"fail_de_parts_affected":"SUSPENSION_._FRONT SUSPENSION SCORING MARKS ON CYLIND"},{"fail_de_parts_affected":"SUSPENSION_._REAR SUSPENSION LEAKAGE"},{"fail_de_parts_affected":"SUSPENSION_._REAR SUSPENSION SCORING MARKS ON CYLINDE"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION CHARGING VALVE FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION GAS CHARGING LOW"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION OIL CHARGING LOW"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION MOUNTING PIN FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._SUSPENSION MOUNTING  BOLTS FAILURE"},{"fail_de_parts_affected":"SUSPENSION_._OTHERS"},{"fail_de_parts_affected":"DRIVELINE_._DRIVELINE"},{"fail_de_parts_affected":"AXLE ASSY_._FRONT LH HUB BEARING FAILURE"},{"fail_de_parts_affected":"AXLE ASSY_._FRONT HUB GREASE LEAKAGE"},{"fail_de_parts_affected":"AXLE ASSY_._FRONT BRAKE DISC MOUNTING BOLTS"},{"fail_de_parts_affected":"AXLE ASSY_._PRELOADING"},{"fail_de_parts_affected":"AXLE ASSY_._LH AND RH STEERING  ARM FAILURE"},{"fail_de_parts_affected":"AXLE ASSY_._OTHERS"},{"fail_de_parts_affected":"DIFFERENTIAL ASSY_._DIFFERENTIAL ASSY"},{"fail_de_parts_affected":"TYRES_._BURST"},{"fail_de_parts_affected":"TYRES_._WORN OUT"},{"fail_de_parts_affected":"TYRES_._AIR POCKET FORMATION"},{"fail_de_parts_affected":"TYRES_._SPACER"},{"fail_de_parts_affected":"TYRES_._O RING FAILURE"},{"fail_de_parts_affected":"TYRES_._AIR LEAKAGES"},{"fail_de_parts_affected":"TYRES_._WHEEL RIM"},{"fail_de_parts_affected":"TYRES_._TYRE EXTENSION HOSE"},{"fail_de_parts_affected":"TYRES_._TYRE VALVE"},{"fail_de_parts_affected":"TYRES_._WEDGE BAND"},{"fail_de_parts_affected":"TYRES_._OTHERS"},{"fail_de_parts_affected":"CABIN_._CABIN FAN FAILURE"},{"fail_de_parts_affected":"CABIN_._CABIN GLASS BROKEN"},{"fail_de_parts_affected":"CABIN_._CABIN VIBRATION MORE"},{"fail_de_parts_affected":"CABIN_._CABIN BEADING CAME OUT"},{"fail_de_parts_affected":"CABIN_._CABIN DOOR LOCK BROKEN"},{"fail_de_parts_affected":"CABIN_._WIPER MOTOR NOT WORKING"},{"fail_de_parts_affected":"CABIN_._CABIN JERK MORE"},{"fail_de_parts_affected":"CABIN_._CABIN DOOR NOT OPENING"},{"fail_de_parts_affected":"CABIN_._OPERATOR SEAT NOT MOVING FORWARD / REVER"},{"fail_de_parts_affected":"CABIN_._OPERATOR SEAT NOT LIFTING / LOWERING"},{"fail_de_parts_affected":"CABIN_._OPERATOR SEAT REXIN DAMAGED"},{"fail_de_parts_affected":"CABIN_._POWER WINDOW NOT WORKING"},{"fail_de_parts_affected":"CABIN_._CABIN DOOR GLASS RATTLING / BROKEN"},{"fail_de_parts_affected":"CABIN_._OTHERS"},{"fail_de_parts_affected":"FENDERS COVERS_._FENDERS FENDERS & COVERS COVERS"},{"fail_de_parts_affected":"TRAVEL DRIVE_._TRAVEL DRIVE"},{"fail_de_parts_affected":"CYLINDER_._BLADE LIFT CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._TILT CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._BOOM CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._ARM CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._BUCKET CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._DUMP CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._STEERING CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._HOIST CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._CLAMP CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._SLIDER CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._DRAWBAR SHIFT CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._BLADE SHIFT CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._LEANING CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._SCARIFIER CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._DOZER BLADE CYLINDER"},{"fail_de_parts_affected":"CYLINDER_._LEAKAGES"},{"fail_de_parts_affected":"CYLINDER_._OTHERS"},{"fail_de_parts_affected":"SWIVEL JOINT_._SWIVEL JOINT"},{"fail_de_parts_affected":"SWING CIRCLE_._CIRCLE REVERSE GEAR FAILURE"},{"fail_de_parts_affected":"SWING CIRCLE_._CIRCLE SUPPORT FAILURE"},{"fail_de_parts_affected":"SWING CIRCLE_._CRG SHAFT GOT FILURE"},{"fail_de_parts_affected":"SWING CIRCLE_._CRG JOINT BROKEN"},{"fail_de_parts_affected":"SWING CIRCLE_._HYDRAULIC OIL LEAKAGE FROM CRG ASSY"},{"fail_de_parts_affected":"SWING CIRCLE_._SWING CIRCLE CRACKED"},{"fail_de_parts_affected":"SWING CIRCLE_._CIRCLE REVERSE GEAR TEETH DAMAGED"},{"fail_de_parts_affected":"SWING CIRCLE_._CUTTING EDGE WORN OUT"},{"fail_de_parts_affected":"SWING CIRCLE_._CUTTING EDGE BROKEN / FAILURE"},{"fail_de_parts_affected":"SWING CIRCLE_._O-RING FAILURE"},{"fail_de_parts_affected":"SWING CIRCLE_._LEAKAGES"},{"fail_de_parts_affected":"SWING CIRCLE_._OTHERS"},{"fail_de_parts_affected":"SWING MACHINERY_._SWING MACHINERY"},{"fail_de_parts_affected":"HIC SYSTEM_._SWING CIRCLE"},{"fail_de_parts_affected":"AIR SYSTEM_._HIC SYSTEM"},{"fail_de_parts_affected":"AIR SYSTEM_._AIR PRESSURE LOW"},{"fail_de_parts_affected":"AIR SYSTEM_._AIR NOT BUILDING"},{"fail_de_parts_affected":"AIR SYSTEM_._GRADUATED HAND CONTROL VALVE LEAKING / F"},{"fail_de_parts_affected":"AIR SYSTEM_._AIR HORN NOT WORKING"},{"fail_de_parts_affected":"AIR SYSTEM_._AIR CYLINDER FAILURE"},{"fail_de_parts_affected":"AIR SYSTEM_._LIMIT & QUICK RELEASE VALVE FAILURE"},{"fail_de_parts_affected":"AIR SYSTEM_._PRESSURE DIFFERENTIAL SWITCH FAILURE"},{"fail_de_parts_affected":"AIR SYSTEM_._RELAY EMERGENCY VALVE"},{"fail_de_parts_affected":"AIR SYSTEM_._RELAY VALVE"},{"fail_de_parts_affected":"AIR SYSTEM_._BRAKE VALVE"},{"fail_de_parts_affected":"AIR SYSTEM_._BOOSTER PUMP"},{"fail_de_parts_affected":"AIR SYSTEM_._RELAY SWITCH"},{"fail_de_parts_affected":"AIR SYSTEM_._OTHERS"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._TRANSMISSION OIL COOLER PUNCTURE"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._BRAKE OIL COOLER PUNCTURE"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._HOSE FAILURE"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._OIL LEAKAGE"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._OTHERS"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._EXHAUST PIVOT SEAL LEAK"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._EXHAUST TUBE  PUNCTURE / CRACK"},{"fail_de_parts_affected":"EXHAUST SYSTEM_._EXHAUST BOX VIBRATION PROBLEM"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._COMPRESSOR FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._CLUTCH FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._RECEIVER-DRIER FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._CONDENSER COIL FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._CONDENSER MOTOR FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._SUCTION & DELIVERY HOSE FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._EXPANSION VALVE FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._EVAPORATOR COIL FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._EVAPORATOR MOTOR FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._THERMOSTAT SWITCH FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._SPEED SELECTOR FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._LOUVER ASSY FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._COMPRESSOR MOUNTING BRACKET FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._V-BELT FAILURE"},{"fail_de_parts_affected":"AUTO LUB SYSTEM_._OTHERS"},{"fail_de_parts_affected":"AUTO FIRE SUPRESSION SYSTEM_._AUTO LUB SYSTEM"},{"fail_de_parts_affected":"ELECTRICAL SYSTEM_._ELECTRICAL SYSTEM"},{"fail_de_parts_affected":"OTHERS_._WIRING SHORT CIRCUIT"},{"fail_de_parts_affected":"OTHERS_._FUSE BLOWN"},{"fail_de_parts_affected":"OTHERS_._MCB FAILURE"},{"fail_de_parts_affected":"OTHERS_._SELF STARTER FAILURE"},{"fail_de_parts_affected":"OTHERS_._ALTERNATOR FAILURE"},{"fail_de_parts_affected":"OTHERS_._BATTERY RELAY FAILURE"},{"fail_de_parts_affected":"OTHERS_._BATTERY FAILURE"},{"fail_de_parts_affected":"OTHERS_._KEY SWITCH FAILURE"},{"fail_de_parts_affected":"OTHERS_._ENGINE PROTECTION UNIT FAILURE"},{"fail_de_parts_affected":"OTHERS_._SHUT OFF SOLENOID FAILURE"},{"fail_de_parts_affected":"OTHERS_._SENSOR / SWITCH FAILURE"},{"fail_de_parts_affected":"OTHERS_._HEAD LIGHT FAILURE"},{"fail_de_parts_affected":"OTHERS_._FOG LAMP FAILURE"},{"fail_de_parts_affected":"OTHERS_._SMART ALARM FAILURE"},{"fail_de_parts_affected":"OTHERS_._EMS MODULE FAILURE"},{"fail_de_parts_affected":"OTHERS_._NEUTRAL START SWITCH FAILURE"},{"fail_de_parts_affected":"OTHERS_._REVERSE SIGNAL SWITCH FAILURE"},{"fail_de_parts_affected":"OTHERS_._BACKUP ALARM NOT WORKING"},{"fail_de_parts_affected":"OTHERS_._TURN SIGNAL INDICATOR NOT WORKING"},{"fail_de_parts_affected":"OTHERS_._TURN SIGNAL SWITCH NOT WORKING"},{"fail_de_parts_affected":"OTHERS_._EMERGENCY STEERING MOTOR FAIL"},{"fail_de_parts_affected":"OTHERS_._MURPHY SYSTEM DISPLAY NOT WORKING"},{"fail_de_parts_affected":"OTHERS_._MURPHY I/O MODULE FAILURE"},{"fail_de_parts_affected":"OTHERS_._MURPHY SENSOR / SENDER FAILURE"},{"fail_de_parts_affected":"OTHERS_._WATER TEMPERATURE GUAGE"},{"fail_de_parts_affected":"OTHERS_._ENGINE OIL PRESSURE"},{"fail_de_parts_affected":"OTHERS_._ENGINE OIL TEMPERATURE"},{"fail_de_parts_affected":"OTHERS_._TRANSMISSION OIL PRESSURE"},{"fail_de_parts_affected":"OTHERS_._TRANSMISSION OIL TEMPERATURE"},{"fail_de_parts_affected":"OTHERS_._ENGINE WIRE HARNESS"},{"fail_de_parts_affected":"OTHERS_._EQUIPMENT WIRE HARNESS"},{"fail_de_parts_affected":"OTHERS_._OTHERS"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._PANEL PLATE CRACK"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._TACHOHOURMETER  / CABLE FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._PRESSURE GUAGE FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._TEMPERATURE GUAGE FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._AMMETER FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._VOLTMETER FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._RUN IDLE SWITCH FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._START / STOP SWITCH FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._TOGGLE SWITCH FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._FUEL GAUGE FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._ALL GAUGES GLOWING"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._INDICATOR LIGHTS NOT WORKING"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._WARNING CLUSTER"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._SWITCH FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._HOIST/HOLD/DOWN SWITCH NOT WORKING"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._EMERGENCY STEERING SWITCH FAILURE"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._PARKING BRAKE / DUMP BRAKE SWITCH NOT WO"},{"fail_de_parts_affected":"INSTRUMENT PANEL_._OTHERS"},{"fail_de_parts_affected":"PTO ASSY_._BEARING FAILURE"},{"fail_de_parts_affected":"PTO ASSY_._LUBRICATION TUBE FAILURE"},{"fail_de_parts_affected":"PTO ASSY_._GEAR FAILURE"},{"fail_de_parts_affected":"PTO ASSY_._LEAKAGE"},{"fail_de_parts_affected":"PTO ASSY_._OTHERS"}]
/// tck_det_purpose : [{"tck_det_purpose":"REHABILITATION"},{"tck_det_purpose":"OVERHAUL"},{"tck_det_purpose":"UPGRADTION"},{"tck_det_purpose":"PARTS REQUIREMNT"},{"tck_det_purpose":"EQUIPMENT HEALTH CHECK UP"},{"tck_det_purpose":"WARRANTY CLAIM FOR SUB ASSEMBLY / OTHER SPARE PARTS"},{"tck_det_purpose":"INSPECTION OF REJECTED SPARES"}]
/// mt_major_aggrts : [{"mt_major_aggrts":"Engine"},{"mt_major_aggrts":"Transmission"},{"mt_major_aggrts":"Final Drive"},{"mt_major_aggrts":"Differential"},{"mt_major_aggrts":"Motor"},{"mt_major_aggrts":"Others"}]
/// mt_pdical_maint_type : [{"mt_pdical_maint_type":"Every 250 hrs"},{"mt_pdical_maint_type":"Every 500 Hrs"},{"mt_pdical_maint_type":"Every 750 Hrs"},{"mt_pdical_maint_type":"Every 1000 Hrs"},{"mt_pdical_maint_type":"Every 1250 Hrs"},{"mt_pdical_maint_type":"Every 1500 Hrs"},{"mt_pdical_maint_type":"Every 2000 Hrs"},{"mt_pdical_maint_type":"Every 1000 KM"}]
/// mod_of_sub_ambly : [{"mod_of_sub_ambly":"EG Engine"},{"mod_of_sub_ambly":"PCMV Transmission"},{"mod_of_sub_ambly":"Regular"},{"mod_of_sub_ambly":"ATGEMS Transmission"},{"mod_of_sub_ambly":"ALLISION Transmission"},{"mod_of_sub_ambly":"AVTEC Transmission"},{"mod_of_sub_ambly":"EG Transmission"},{"mod_of_sub_ambly":"Not Applicable"}]
/// war_claim_dte : [{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"},{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"}]
/// sad_line_status : [{"sad_line_status":"Damage"},{"sad_line_status":"Malfunctioning"},{"sad_line_status":"Not Working"},{"sad_line_status":"Shortage"}]
/// sad_line_event : [{"sad_line_event":"During Transit"},{"sad_line_event":"During Installation/Commissioning"},{"sad_line_event":"Damage on Customer Account"},{"sad_line_event":"Missing"},{"sad_line_event":"Short shipped from division"},{"sad_line_event":"Theft under BEML custody"},{"sad_line_event":"Theft under Customer custody"}]
/// ecd_can_be_com : [{"ecd_can_be_com":"Yes"},{"ecd_can_be_com":"No"}]
/// sad_war_start_con : [{"sad_war_start_con":"Date of Receipt at Customer site"},{"sad_war_start_con":"Date of commissioning/Fitment"},{"sad_war_start_con":"Date of Invoice/Billing"}]
/// sad_type_of_sub_ass : [{"sad_type_of_sub_ass":"New"},{"sad_type_of_sub_ass":"Recon"},{"sad_type_of_sub_ass":"Repair"}]
/// sad_war_term : [{"sad_war_term":"Month Or HMR/KM"},{"sad_war_term":"Month And HMR/KM"},{"sad_war_term":"Only Month"},{"sad_war_term":"Only HMR/KM"}]
/// sad_war_term_app : [{"sad_war_term_app":"YES"},{"sad_war_term_app":"NO"}]
/// sad_su_ass_srp : [{"sad_su_ass_srp":"Engine"},{"sad_su_ass_srp":"Transmission"},{"sad_su_ass_srp":"Final Drive"},{"sad_su_ass_srp":"Hydraulic Pump"},{"sad_su_ass_srp":"Motor"}]
/// sad_su_ass_mod_srp : [{"sad_su_ass_mod_srp":"BH100"}]
/// at_sais : [{"at_sais":"Completed"},{"at_sais":"Not Completed"}]
/// at_on_account_of : [{"at_on_account_of":"BEML"},{"at_on_account_of":"CUSTOMER"}]
/// at_dm_status : [{"at_dm_status":"Completed"},{"at_dm_status":"Not Completed"}]
/// dmd_system : [{"dmd_system":"a"},{"dmd_system":"b"}]
/// war_warable : [{"war_warable":"Yes"},{"war_warable":"No"}]
/// eq_sta_aft_act_t_sub : [{"eq_sta_aft_act_t_sub":"Not Working"},{"eq_sta_aft_act_t_sub":"Working with Problem"},{"eq_sta_aft_act_t_sub":"Working"}]
/// vendor_item : [{"vendor_item":"AFDSS"},{"vendor_item":"Auto Lube"},{"vendor_item":"Engine"},{"vendor_item":"AC"}]
/// at_brkdn_sr_req : [{"at_brkdn_sr_req":"Yes"},{"at_brkdn_sr_req":"No"}]
/// genchk_oil_pre_tr : [{"genchk_oil_pre_tr":"OK"},{"genchk_oil_pre_tr":"NOT OK"}]
/// genchk_oil_tr_tem : [{"genchk_oil_tr_tem":"OK"},{"genchk_oil_tr_tem":"NOT OK"}]
/// genchk_brk_oil_tem : [{"genchk_brk_oil_tem":"OK"},{"genchk_brk_oil_tem":"NOT OK"},{"genchk_brk_oil_tem":"NA"}]
/// at_copm : [{"at_copm":"Completed"},{"at_copm":"Not Completed"}]
/// lid_msr : [{"lid_msr":"Customer"},{"lid_msr":"BEML"}]
/// lid_line_event : [{"lid_line_event":"Damage in Transit"},{"lid_line_event":"Damage during Installation/Commissioning"},{"lid_line_event":"Damage from Customer side"},{"lid_line_event":"Shortage in Consignment"}]
/// sad_valid_sl_no : [{"sad_valid_sl_no":"Yes"},{"sad_valid_sl_no":"No"}]
/// sad_sel_ag_name : [{"sad_sel_ag_name":"Engine"},{"sad_sel_ag_name":"Transmission"},{"sad_sel_ag_name":"Final Drive"},{"sad_sel_ag_name":"Differential"},{"sad_sel_ag_name":"Motor"},{"sad_sel_ag_name":"Others"}]

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
