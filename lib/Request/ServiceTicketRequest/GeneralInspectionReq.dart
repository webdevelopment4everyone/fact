class GeneralInspectionReq {
  String? purpose,
      sr_equip_model,
      manual_equ_ser,
      kilometer_reading,
      hmr,
      equip_status,
      equipment_id_display,
      imagename,
      pre_address,
      sr_dep_system,
      equipment_id,
      pincode,
      city,
      state,
      opp_name,
      phone,
      tele_phone,
      district,
      description,
      nearest_railway;
  String? assigned_user_id;
  String? ticket_type;
}

class BaseCreateTicketReqGeneral {
  GeneralInspectionReq? values;
  String? module;

  String? access_token;
  String? useruniqueid;
}
