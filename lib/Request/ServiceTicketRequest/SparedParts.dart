class SparedParts {
  String? purpose,
      sr_equip_model,
      manual_equ_ser,
      kilometer_reading,
      hmr,
      equip_status,
      det_of_sub_asmbl,
      war_claim_dte,
      purchase_ref,
      date_of_delivery,
      date_of_failure,
      tele_phone,
      district,
      imagename,
      pre_address,
      pincode,
      city,
      state,
      opp_name,
      phone,
      description;
  String? assigned_user_id;
  String? ticket_type;
}

class BaseCreateTicketReqSparePurchased {
  SparedParts? values;
  String? module;

  String? access_token;
  String? useruniqueid;
}
