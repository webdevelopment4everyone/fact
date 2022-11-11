class Endpoints {
  Endpoints._();
//http://3.7.71.53/iitmadras/
  static const String baseURL =
      'http://crm.bemlindia.in/bemlquality/modules/Mobile/';
  static const String baseURLLOCAL = 'http://3.7.71.53/fact/modules/Mobile/';
  // check this while deploying.
  static const String baseURLIMageLocal =
      'http://crm.bemlindia.in/bemlquality/modules/Mobile/v1/UploadAttachment';
  static const String login = 'v1/login';
  static const String srReportBreakdown = "v1/saveRecord";
  static const String getsapinitaldataforServiceReport = "v1/saveRecord";
  static const String predeliveryServiceRequest = "v1/saveRecord";
  static const String erectionCommissionServiceRequest = "v1/saveRecord";
  static const String periodicMaintainceServiceRequest = "v1/saveRecord";
  static const String preventiveMaintainceServiceRequest = "v1/saveRecord";
  static const String breakdownServiceRequest = "v1/saveRecord";
  static const String generalInspectionServiceRequest = "v1/saveRecord";
  static const String instalationofsubassemblyServiceRequest = "v1/saveRecord";
  static const String serviceSparePartsServiceRequest = "v1/saveRecord";
  static const String designModificationServiceRequest = "v1/saveRecord";
  static const String getlistofcount = "v1/GetSRTypeCounts";
  static const String getlist = "v1/GetSRList";
  static const String getDetailList = "v1/GetRecordDetail";

  ///headerFieldStatusValue: SERVICE FOR SPARES PURCHASED
  // headerFieldPurposeValue: INSPECTION OF REJECTED SPARES

  //Dashboard api's
  static const String getDashboardPercentage = 'v1/SRStatusPercent';

  //Service request list with filter
  static const String getServiceRequestReportList = 'v1/GetSRList';

  /// "v1/GetRecordModelFromTicket";

  static const String getPickListValuesOfModel = "v1/GetPickListValuesOfField";

  //// for fectch getrefe  module //Vendor
  static const String getReferenceRecords = "v1/fetchReferenceRecords";
  static const String getPincodeSearch = "v1/GetPincodeInfo";
  static const String getRecordAutoFecth = "v1/GetRecordDetail";
  static const String acceptAndRejectUpdate = "v1/AjaxEdit";

  static const String getinitdata = "v1/GetInitData";
  static const String getCustomerDropData = "v2/GetCustomerDropDownFields";
  static const String getofficeuserdependency = "v1/GetUserOfficeDependancy";
  static const String getuserleveldependency = "v1/GetUserLevelDependancy";
  static const String presignup = "v1/PreUserSignUp";
  static const String usersignup = "v1/UserSignUp";
  static const String resendotp = "v1/ResendOTP";
  static const String prerestpassword = "v1/PreResetPassword";
  static const String resetpassword = "v1/ResetPassword";
  static const String getPickListValueOfModule =
      "v1/GetAllPicklistFieldsOfModule";
  static const String uploadImage = "v1/UploadAttachment";
  static const String getpredataforservicereport =
      "v1/GetRecordModelFromTicket";

  static const String getlistofdropdownservicereports =
      "v1/GetAllPicklistFieldsOfModule";

  /// service report list view
  static const String getServiceReportListView = "/v1/listModuleRecords";

  static const String getfunctionalLocationID = "v1/GetEquipmentDetail";

  static const String getgeneralinspectionvalue = "v1/GetPickListValuesOfField";

  static const String getlistofrecommissioning = "v1/listModuleRecords";
  static const String getDetailforPreAndEre = "v1/GetDeliveryNotesDetail";

  static const String getDetailofProduct = "v1/GetRecordDetail";
}
