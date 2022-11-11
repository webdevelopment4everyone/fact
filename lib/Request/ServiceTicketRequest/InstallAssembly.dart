class InstallAssembly {
  String? sub_assembly;
  String? opp_name; //Name
  String? phone; //Mobile Number"
  String? description; // remark
  String? imagename;
  String? assigned_user_id;
  String? ticket_type, tele_phone;
}

class BaseCreateTicketReqsubAssembly {
  InstallAssembly? values;
  String? module;

  String? access_token;
  String? useruniqueid;
}
