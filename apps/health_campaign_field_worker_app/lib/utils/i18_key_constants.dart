library i18;

const common = Common();
const login = Login();
const forgotPassword = ForgotPassword();
const home = Home();
const searchBeneficiary = SearchBeneficiary();
const householdLocation = HouseholdLocation();
const acknowledgementSuccess = AcknowledgementSuccess();
const householdDetails = HouseholdDetails();
const individualDetails = IndividualDetails();
const householdOverView = HouseholdOverView();
const memberCard = MemberCard();
const deliverIntervention = DeliverIntervention();
const projectSelection = ProjectSelection();
const warehouseDetails = WarehouseDetails();
const stockDetails = StockDetails();
const checklist = Checklist();
const stockReconciliationDetails = StockReconciliationDetails();
const manageStock = ManageStock();
const complaints = Complaints();
const homeShowcase = HomeShowcase();
const searchBeneficiariesShowcase = SearchBeneficiariesShowcase();
const householdLocationShowcase = HouseholdLocationShowcase();
const householdDetailsShowcase = HouseholdDetailsShowcase();
const individualDetailsShowcase = IndividualDetailsShowcase();
const householdOverviewShowcase = HouseholdOverviewShowcase();
const deliverInterventionShowcase = DeliverInterventionShowcase();
const selectStockShowcase = SelectStockShowcase();
const warehouseDetailsShowcase = WarehouseDetailsShowcase();
const stockDetailsReceiptShowcase = StockDetailsReceiptShowcase();
const stockDetailsIssuedShowcase = StockDetailsIssuedShowcase();
const stockDetailsReturnedShowcase = StockDetailsReturnedShowcase();
const stockReconciliationShowcase = StockReconciliationShowcase();
const selectChecklistShowcase = SelectChecklistShowcase();
const checklistDataShowcase = ChecklistDataShowcase();
const checklistListShowcase = ChecklistListShowcase();
const complaintTypeShowcase = ComplaintTypeShowcase();
const complaintsDetailsShowcase = ComplaintsDetailsShowcase();
const complaintsDetailsViewShowcase = ComplaintsDetailsViewShowcase();
const complaintsInboxShowcase = ComplaintsInboxShowcase();
const syncDialog = SyncDialog();
const inventoryReportSelection = InventoryReportSelection();
const inventoryReportDetails = InventoryReportDetails();

class Common {
  const Common();

  String get coreCommonSyncComplete => 'CORE_COMMON_SYNC_COMPLETE';

  String get coreCommonSyncInProgress => 'CORE_COMMON_SYNC_IN_PROGRESS';

  String get coreCommonSyncFailed => 'CORE_COMMON_SYNC_FAILED';

  String get coreCommonSyncRetry => 'CORE_COMMON_SYNC_RETRY';

  String get coreCommonClose => 'CORE_COMMON_CLOSE';

  String get coreCommonSave => 'CORE_COMMON_SAVE';

  String get coreCommonBeneficiary => 'CORE_COMMON_BENEFICIARY';

  String get coreCommonAge => 'CORE_COMMON_AGE';

  String get coreCommonGender => 'CORE_COMMON_GENDER';

  String get coreCommonIsRequired => 'CORE_COMMON_IS_REQUIRED';

  String get coreCommonContinue => 'CORE_COMMON_CONTINUE';

  String get coreCommonMobileNumber => 'CORE_COMMON_MOBILE_NUMBER';

  String get coreCommonSubmit => 'CORE_COMMON_SUBMIT';

  String get coreCommonCancel => 'CORE_COMMON_CANCEL';

  String get corecommonRequired => 'CORE_COMMON_REQUIRED';

  String get coreCommonReasonRequired => 'CORE_COMMON_REASON_REQUIRED';

  String get corecommonclose => 'CORE_COMMON_CLOSE';

  String get coreCommonOk => 'CORE_COMMON_OK';

  String get coreCommonLogout => 'CORE_COMMON_LOGOUT';

  String get coreCommonBack => 'CORE_COMMON_BACK';

  String get coreCommonHelp => 'CORE_COMMON_HELP';

  String get coreCommonHome => 'CORE_COMMON_HOME';

  String get coreCommonlanguage => 'CORE_COMMON_LANGUAGE';

  String get coreCommonProceed => 'CORE_COMMON_NEXT';

  String get coreCommonNo => 'CORE_COMMON_NO';

  String get coreCommonYes => 'CORE_COMMON_YES';

  String get coreCommonWarning => 'CORE_COMMON_WARNING';
}

class Login {
  const Login();

  String get labelText => 'LOGIN_LABEL_TEXT';

  String get userIdPlaceholder => 'USER_ID_PLACEHOLDER';

  String get userIdRequiredError => 'USER_ID_REQUIRED_ERROR';

  String get passwordPlaceholder => 'PASSWORD_PLACEHOLDER';

  String get passwordRequiredError => 'PASSWORD_REQUIRED_ERROR';

  String get actionLabel => 'LOGIN_ACTION_LABEL';

  String get loginError => 'LOGIN_ERROR';

  String get noInternetError => 'ERR_NOT_CONNECTED_TO_INTERNET';

  String get logOutWarningMsg => 'LOG_OUT_WARNING_MESSAGE';

  String get sessionExpired => 'CORE_SESSION_EXPIRED';

  String get pleaseLogout => 'PLEASE_LOGOUT_USER';
}

class Checklist {
  const Checklist();

  String get checklist => 'CHECKLIST';

  String get checklistlabel => 'CHECKLIST_LABEL';

  String get checklistCreateActionLabel => 'CHECKLIST_CREATE_ACTION_LABEL';

  String get checklistViewActionLabel => 'CHECKLIST_VIEW_ACTION_LABEL';

  String get checklistDetailLabel => 'CHECKLIST_DETAILS_LABEL';

  String get checklistDialogLabel => 'CHECKLIST_DIALOG_LABEL';

  String get checklistDialogDescription => 'CHECKLIST_DIALOG_DESCRITPTION';

  String get checklistBackDialogLabel => 'CHECKLIST_BACK_DIALOG_LABEL';

  String get checklistBackDialogDescription =>
      'CHECKLIST_BACK_DIALOG_DESCRITPTION';

  String get checklistDialogPrimaryAction => 'CHECKLIST_DIALOG_PRIMARY_ACTION';

  String get checklistDialogSecondaryAction =>
      'CHECKLIST_DIALOG_SECONDARY_ACTION';

  String get checklistBackDialogPrimaryAction =>
      'CHECKLIST_BACK_DIALOG_PRIMARY_ACTION';

  String get checklistBackDialogSecondaryAction =>
      'CHECKLIST_BACK_DIALOG_SECONDARY_ACTION';

  String get checklistdate => 'CHECKLIST_DATE';
}

class ForgotPassword {
  const ForgotPassword();

  String get labelText => 'FORGOT_PASSWORD_LABEL_TEXT';

  String get contentText => 'FORGOT_PASSWORD_CONTENT_TEXT';

  String get primaryActionLabel => 'PRIMARY_ACTION_LABEL';

  String get actionLabel => 'FORGOT_PASSWORD_ACTION_LABEL';
}

class Home {
  const Home();

  String get beneficiaryLabel => 'HOME_BENEFICIARY_LABEL';

  String get manageStockLabel => 'HOME_MANAGE_STOCK_LABEL';

  String get stockReconciliationLabel => 'HOME_STOCK_RECONCILIATION_LABEL';

  String get viewReportsLabel => 'HOME_VIEW_REPORTS_LABEL';

  String get syncDataLabel => 'HOME_SYNC_DATA_LABEL';

  String get callbackLabel => 'HOME_CALL_BACK_LABEL';

  String get fileComplaint => 'HOME_FILE_COMPLAINT';

  String get progressIndicatorTitle => 'PROGRESS_INDICATOR_TITLE';

  String get progressIndicatorPrefixLabel => 'PROGRESS_INDICATOR_PREFIX_LABEL';

  String get progressIndicatorHelp => 'PROGRESS_INDICATOR_HELP';

  String get dataSyncInfoLabel => 'DATA_SYNC_INFO_LABEL';

  String get dataSyncInfoContent => 'DATA_SYNC_INFO_CONTENT';

  String get myCheckList => 'MY_CHECK_LIST_LABEL';

  String get warehouseManagerCheckList => 'WAREHOUSE_MANAGER_CHECK_LIST_LABEL';
}

class SearchBeneficiary {
  const SearchBeneficiary();

  String get statisticsLabelText => 'BENEFICIARY_STATISTICS_LABEL_TEXT';

  String get noOfHouseholdsRegistered => 'NO_OF_HOUSEHOLDS_REGISTERED';

  String get noOfResourcesDelivered => 'NO_OF_RESOURCES_DELIVERED';

  String get beneficiarySearchHintText => 'BENEFICIARY_SEARCH_HINT_TEXT';

  String get beneficiaryInfoDescription => 'BENEFICIARY_INFO_DESCRIPTION';

  String get beneficiaryInfoTitle => 'BENEFICIARY_INFO_TITLE';

  String get beneficiaryAddActionLabel => 'BENEFICIARY_ADD_ACTION_LABEL';

  String get iconLabel => 'ICON_LABEL';

  String get interventionDelivered => 'INTERVENTION_DELIVERED';

  String get interventionNotDelivered => 'INTERVENTION_NOT_DELIVERED';
}

class IndividualDetails {
  const IndividualDetails();

  String get individualsDetailsLabelText => 'INDIVIDUAL_LABEL_TEXT';

  String get nameLabelText => 'INDIVIDUAL_NAME_LABEL_TEXT';

  String get firstNameLabelText => 'INDIVIDUAL_FIRST_NAME_LABEL_TEXT';

  String get lastNameLabelText => 'INDIVIDUAL_LAST_NAME_LABEL_TEXT';

  String get checkboxLabelText => 'HEAD_OF_HOUSEHOLD_LABEL_TEXT';

  String get idTypeLabelText => 'ID_TYPE_LABEL_TEXT';

  String get idNumberLabelText => 'ID_NUMBER_LABEL_TEXT';

  String get idNumberSuggestionText => 'ID_NUMBER_SUGGESTION_TEXT';

  String get dobLabelText => 'DOB_LABEL_TEXT';

  String get ageLabelText => 'AGE_LABEL_TEXT';

  String get separatorLabelText => 'SEPARATOR_LABEL_TEXT';

  String get genderLabelText => 'GENDER_LABEL_TEXT';

  String get mobileNumberLabelText => 'MOBILE_NUMBER_LABEL_TEXT';

  String get submitButtonLabelText => 'INDIVIDUAL_DETAILS_SUBMIT';

  String get mobileNumberInvalidFormatValidationMessage =>
      'INDIVIDUAL_DETAILS_INVALID_MOBILE_NUMBER';

  String get nameIsRequiredError => 'NAME_REQUIRED_ERROR_MESSAGE';

  String get firstNameIsRequiredError => 'FIRST_NAME_REQUIRED_ERROR_MESSAGE';

  String get firstNameLengthError => 'FIRST_NAME_LENGTH_ERROR_MESSAGE';

  String get lastNameLengthError => 'LAST_NAME_LENGTH_ERROR_MESSAGE';

  String get lastNameIsRequiredError => 'LAST_NAME_REQUIRED_ERROR_MESSAGE';

  String get ageInvalidError => 'INDIVIDUAL_DETAILS_INVALID_AGE';
}

class HouseholdLocation {
  const HouseholdLocation();

  String get householdLocationLabelText => 'HOUSEHOLD_LOCATION_LABEL_TEXT';

  String get administrationAreaFormLabel => 'ADMINISTRATION_AREA_FORM_LABEL';

  String get administrationAreaRequiredValidation =>
      'HOUSEHOLD_LOCATION_ADMINISTRATION_AREA_REQUIRED_VALIDATION';

  String get householdAddressLine1LabelText =>
      'HOUSEHOLD_ADDRESS_LINE_1_FORM_LABEL';

  String get landmarkFormLabel => 'LANDMARK_FORM_LABEL';

  String get householdAddressLine2LabelText =>
      'HOUSEHOLD_ADDRESS_LINE_2_FORM_LABEL';

  String get postalCodeFormLabel => 'POSTAL_CODE_FORM_LABEL';

  String get actionLabel => 'HOUSEHOLD_LOCATION_ACTION_LABEL';
}

class AcknowledgementSuccess {
  const AcknowledgementSuccess();

  String get actionLabelText => 'ACKNOWLEDGEMENT_SUCCESS_ACTION_LABEL_TEXT';

  String get acknowledgementDescriptionText =>
      'ACKNOWLEDGEMENT_SUCCESS_DESCRIPTION_TEXT';

  String get acknowledgementLabelText => 'ACKNOWLEDGEMENT_SUCCESS_LABEL_TEXT';
}

class HouseholdDetails {
  const HouseholdDetails();

  String get householdDetailsLabel => 'HOUSEHOLD_DETAILS_LABEL';

  String get actionLabel => 'HOUSEHOLD_ACTION_LABEL';

  String get dateOfRegistrationLabel =>
      'HOUSEHOLD_DETAILS_DATE_OF_REGISTRATION_LABEL';

  String get noOfMembersCountLabel => 'NO_OF_MEMBERS_COUNT_LABEL';
}

class HouseholdOverView {
  const HouseholdOverView();

  String get householdOverViewLabel => 'HOUSEHOLD_OVER_VIEW_LABEL';

  String get householdOverViewEditLabel =>
      'HOUSEHOLD_OVER_VIEW_EDIT_ICON_LABEL';

  String get householdOverViewDeleteLabel =>
      'HOUSEHOLD_OVER_VIEW_DELETE_ICON_LABEL';

  String get householdOverViewEditIconText =>
      'HOUSEHOLD_OVER_VIEW_EDIT_ICON_LABEL_TEXT';

  String get householdOverViewActionCardTitle =>
      'HOUSEHOLD_OVER_VIEW_ACTION_CARD_TITLE';

  String get householdOverViewPrimaryActionLabel =>
      'HOUSEHOLD_OVER_VIEW_PRIMARY_ACTION_LABEL';

  String get householdOverViewSecondaryActionLabel =>
      'HOUSEHOLD_OVER_VIEW_SECONDARY_ACTION_LABEL';

  String get householdOverViewDeliveredIconLabel =>
      'HOUSEHOLD_OVER_VIEW_DELIVERED_ICON_LABEL';

  String get householdOverViewNotDeliveredIconLabel =>
      'HOUSEHOLD_OVER_VIEW_NOT_DELIVERED_ICON_LABEL';

  String get householdOverViewHouseholdHeadLabel =>
      'HOUSEHOLD_OVER_VIEW_HOUSEHOLD_HEAD_LABEL';

  String get householdOverViewHouseholdHeadNameLabel =>
      'HOUSEHOLD_OVER_VIEW_HOUSEHOLD_HEAD_NAME_LABEL';

  String get householdOverViewActionText => 'HOUSEHOLD_OVER_VIEW_ACTION_TEXT';

  String get householdOverViewAddActionText =>
      'HOUSEHOLD_OVER_VIEW__ADD_ACTION_TEXT';
}

class MemberCard {
  const MemberCard();

  String get assignAsHouseholdhead => 'MEMBER_CARD_ASSIGN_AS_HEAD';

  String get editIndividualDetails => 'MEMBER_CARD_EDIT_INDIVIDUAL_DETAILS';

  String get deleteIndividualActionText =>
      'MEMBER_CARD_DELETE_INDIVIDUAL_ACTION_TEXT';

  String get deliverInterventionSubmitLabel =>
      'MEMBER_CARD_DELIVER_INTERVENTION_SUBMIT_LABEL';

  String get deliverDetailsUpdateLabel =>
      'MEMBER_CARD_DELIVER_DETAILS_UPDATE_LABEL';

  String get deliverDetailsViewLabel =>
      'MEMBER_CARD_DELIVER_DETAILS_VIEW_LABEL';

  String get deliverDetailsYearText => 'MEMBER_CARD_DELIVER_DETAILS_YEAR_TEXT';

  String get editDetails => 'MEMBER_CARD_EDIT_DETAILS';

  String get member => 'MEMBER_LABEL';

  String get members => 'MEMBERS_LABEL';
}

class DeliverIntervention {
  const DeliverIntervention();

  String get deliverInterventionLabel => 'DELIVER_INTERVENTION_LABEL';

  String get dateOfRegistrationLabel =>
      'DELIVER_INTERVENTION_DATE_OF_REGISTRATION_LABEL';

  String get resourceDeliveredLabel =>
      'DELIVER_INTERVENTION_RESOURCE_DELIVERED_LABEL';

  String get quantityDistributedLabel =>
      'DELIVER_INTERVENTION_QUANTITY_DISTRIBUTED_LABEL';

  String get deliveryCommentLabel =>
      'DELIVER_INTERVENTION_DELIVERY_COMMENT_LABEL';

  String get idTypeText => 'DELIVER_INTERVENTION_ID_TYPE_TEXT';

  String get idNumberText => 'DELIVER_INTERVENTION_ID_NUMBER_TEXT';

  String get memberCountText => 'DELIVER_INTERVENTION_MEMBER_COUNT_TEXT';

  String get noOfResourcesForDelivery =>
      'DELIVER_INTERVENTION_NO_OF_RESOURCES_FOR_DELIVERY';

  String get dialogTitle => 'DELIVER_INTERVENTION_DIALOG_TITLE';

  String get dialogContent => 'DELIVER_INTERVENTION_DIALOG_CONTENT';

  String get deliveryCommentRequired => 'DELIVERY_COMMENT_REQUIRED';
}

class ProjectSelection {
  const ProjectSelection();

  String get projectDetailsLabelText => 'PROJECT_DETAILS_LABEL';

  String get syncInProgressTitleText => 'SYNC_IN_PROGRESS';

  String get syncCompleteTitleText => 'SYNC_COMPLETE';

  String get syncCompleteButtonText => 'CLOSE';

  String get syncFailedTitleText => 'SYNC_FAILED';

  String get retryButtonText => 'RETRY';

  String get dismissButtonText => 'DISMISS';

  String get noProjectsAssigned => 'NO_PROJECTS_ASSIGNED';

  String get contactSysAdmin => 'CONTACT_SYS_ADMIN';
}

class WarehouseDetails {
  const WarehouseDetails();

  String get warehouseDetailsLabel => 'WAREHOUSE_DETAILS_LABEL';

  String get dateOfReceipt => 'WAREHOUSE_DETAILS_DATE_OF_RECEIPT';

  String get administrativeUnit => 'WAREHOUSE_DETAILS_ADMINISTRATIVE_UNIT';

  String get warehouseNameId => 'WAREHOSUE_DETAILS_WAREHOUSE_NAME_ID';
}

class StockDetails {
  const StockDetails();

  /// Page Title Keys
  String get receivedPageTitle => 'RECEIVED_STOCK_DETAILS';

  String get issuedPageTitle => 'ISSUED_STOCK_DETAILS';

  String get returnedPageTitle => 'RETURNED_STOCK_DETAILS';

  String get lostPageTitle => 'LOST_STOCK_DETAILS';

  String get damagedPageTitle => 'DAMAGED_STOCK_DETAILS';

  /// Select Product label
  String get selectProductLabel => 'STOCK_DETAILS_SELECT_PRODUCT';

  /// Select Transacting party label
  String get selectTransactingPartyReceived => 'STOCK_DETAILS_RECEIVED_FROM';

  String get selectTransactingPartyIssued => 'STOCK_DETAILS_ISSUED_TO';

  String get selectTransactingPartyReturned => 'STOCK_DETAILS_RETURNED_TO';

  String get selectTransactingPartyReceivedFromDamaged {
    return 'STOCK_DETAILS_RECEIVED_FROM_DAMAGED';
  }

  String get selectTransactingPartyReceivedFromLost {
    return 'STOCK_DETAILS_RECEIVED_FROM_LOST';
  }

  /// Quantity sent/received/lost/damaged label
  String get quantityReceivedLabel => 'STOCK_DETAILS_QUANTITY_RECEIVED';

  String get quantitySentLabel => 'STOCK_DETAILS_QUANTITY_SENT';

  String get quantityReturnedLabel => 'STOCK_DETAILS_QUANTITY_RETURNED';

  String get quantityLostLabel => 'STOCK_DETAILS_QUANTITY_LOST';

  String get quantityDamagedLabel => 'STOCK_DETAILS_QUANTITY_DAMAGED';

  String get stockReceivedSuccess =>
      'STOCK_RECONCILIATION_STOCK_RECEIVED_SUCCESS';

  String get stockIssuedSuccess => 'STOCK_RECONCILIATION_STOCK_ISSUED_SUCCESS';

  String get stockReturnedSuccess =>
      'STOCK_RECONCILIATION_STOCK_RETURNED_SUCCESS';

  /// Validation Messages
  String get quantityReceivedValidation =>
      'STOCK_DETAILS_QUANTITY_RECEIVED_VALIDATION';

  String get quantityMinAndMaxValidation =>
      'STOCK_DETAILS_QUANTITY_MIN_MAX_VALIDATION';

  String get quantitySentValidation => 'STOCK_DETAILS_QUANTITY_SENT_VALIDATION';

  String get quantityReturnedValidation =>
      'STOCK_DETAILS_QUANTITY_RETURNED_VALIDATION';

  String get quantityIndicatedOnWaybillValidation =>
      'STOCK_DETAILS_QUANTITY_ON_WAYBILL_VALIDATION';

  String get quantityMinAndMaxWaybillValidation =>
      'STOCK_DETAILS_QUANTITY_MIN_MAX_ON_WAYBILL_VALIDATION';

  String get transportTypeValidation => 'TRANSPORT_TYPE_VALIDATION';

  String get vehicleNumberValidation => 'VEHICLE_NUMBER_VALIDATION';

  String get vehicleNumberRequiredValidation =>
      'VEHICLE_NUMBER_REQUIRED_VALIDATION';

  /// Waybill number label
  String get waybillNumberLabel => 'STOCK_DETAILS_WAYBILL_NUMBER';

  String get waybillNumberValidation => 'WAYBILL_NUMBER_VALIDATION';

  String get waybillNumberMinMaxLengthValidation =>
      'WAYBILL_NUMBER_MIN_MAX_LENGTH_VALIDATION';

  String get driverNameMinMaxLengthValidation =>
      'DRIVER_NAME_MIN_MAX_VALIDATION';

  /// Number of product indicated on waybill title
  String get quantityOfProductIndicatedOnWaybillLabel {
    return 'STOCK_DETAILS_WAYBILL_QUANTITY';
  }

  /// Lost/Damaged during label
  String get transactionReasonLost => 'STOCK_DETAILS_LOST_DURING';

  String get transactionReasonDamaged => 'STOCK_DETAILS_DAMAGED_DURING';

  String get vehicleNumberLabel => 'STOCK_DETAILS_VEHICLE_NUMBER';

  String get driverNameLabel => 'STOCK_DETAILS_DRIVER_NAME';

  String get driverNameValidation => 'STOCK_DETAILS_DRIVER_NAME_VALIDATION';

  String get commentsLabel => 'STOCK_DETAILS_COMMENTS_LABEL';

  String get dialogTitle => 'STOCK_DETAILS_DIALOG_TITLE';

  String get dialogContent => 'STOCK_DETAILS_DIALOG_CONTENT';

  String get countDialogTitle => 'STOCK_DETAILS_COUNT_DIALOG_TITLE';

  String get countContent => 'STOCK_DETAILS_COUNT_DIALOG_CONTENT';

  String get countDialogSuccess =>
      'STOCK_DETAILS_COUNT_DIALOG_SUCCESS_ACTION_LABEL';

  String get countDialogCancel =>
      'STOCK_DETAILS_COUNT_DIALOG_CANCEL_ACTION_LABEL';

  String get transportTypeLabel => 'STOCK_DETAILS_TRANSPORT_TYPE';
}

class StockReconciliationDetails {
  const StockReconciliationDetails();

  // 'FACILITY_SEARCH_TEXT';
  String get reconciliationPageTitle => 'STOCK_RECONCILIATION_PAGE_TITLE';

  String get facilityLabel => 'STOCK_RECONCILIATION_FACILITY_LABEL';

  String get productLabel => 'STOCK_RECONCILIATION_PRODUCT_LABEL';

  String get dateOfReconciliation => 'STOCK_RECONCILIATION_DATE';

  String get stockReceived => 'STOCK_RECONCILIATION_STOCK_RECEIVED';

  String get stockIssued => 'STOCK_RECONCILIATION_STOCK_ISSUED';

  String get stockReturned => 'STOCK_RECONCILIATION_STOCK_RETURNED';

  String get stockLost => 'STOCK_RECONCILIATION_STOCK_LOST';

  String get stockDamaged => 'STOCK_RECONCILIATION_STOCK_DAMAGED';

  String get stockOnHand => 'STOCK_RECONCILIATION_STOCK_ON_HAND';

  String get manualCountLabel =>
      'STOCK_RECONCILIATION_MANUAL_STOCK_COUNT_LABEL';

  String get commentsLabel => 'STOCK_RECONCILIATION_COMMENTS_LABEL';

  String get infoCardTitle => 'STOCK_RECONCILIATION_INFO_CARD_TITLE';

  String get infoCardContent => 'STOCK_RECONCILIATION_INFO_CARD_CONTENT';

  String get dialogTitle => 'STOCK_RECONCILIATION_DIALOG_TITLE';

  String get dialogContent => 'STOCK_RECONCILIATION_DIALOG_CONTENT';

  String get stockReconciliationSuccess => 'STOCK_RECONCILIATION_SUCCESS';

  String get facilitySearchText => 'FACILITY_SEARCH_TEXT';

  String get manualCountRequiredError =>
      'STOCK_RECONCILIATION_COUNT_IS_REQUIRED';

  String get reconciliationCommentRequiredError =>
      'RECONCILIATION_COMMENT_IS_REQUIRED';

  String get manualCountInvalidType =>
      'STOCK_RECONCILIATION_COUNT_EXPECTS_NUMBER';

  String get manualCountMinError => 'STOCK_RECONCILIATION_COUNT_BELOW_MIN';

  String get manualCountMaxError => 'STOCK_RECONCILIATION_COUNT_EXCEEDED_MAX';

  String get noProjectSelected => 'NO_PROJECT_SELECTED';

  String get fieldRequired => 'STOCK_RECONCILIATION_FILED_REQUIRED';
}

class ManageStock {
  const ManageStock();

  String get label => 'MANAGE_STOCK_LABEL';

  String get recordstockReceiptLabel =>
      'MANAGE_STOCK_RECORDSTOCK_RECEIPT_LABEL';

  String get recordstockReceiptDescription =>
      'MANAGE_STOCK_RECEIPT_DESCRIPTION';

  String get recordstockIssuedLabel => 'MANAGE_STOCK_RECORDSTOCK_ISSUED_LABEL';

  String get recordstockIssuedtDescription =>
      'MANAGE_STOCK_RECORDSTOCK_ISSUED_DESCRIPTION';

  String get recordstockReturnedLabel =>
      'MANAGE_STOCK_RECORDSTOCK_RETURNED_LABEL';

  String get recordstockReturnedtDescription =>
      'MANAGE_STOCK_RECORDSTOCK_RETURNED_DESCRIPTION';

  String get recordstockDamagedLabel =>
      'MANAGE_STOCK_RECORDSTOCK_DAMAGED_LABEL';

  String get recordstockDamagedDescription =>
      'MANAGE_STOCK_RECORDSTOCK_DAMAGED_DESCRIPTION';

  String get recordstockLossLabel => 'MANAGE_STOCK_RECORDSTOCK_LOSS_LABEL';

  String get recordstockLossDescription =>
      'MANAGE_STOCK_RECORDSTOCK_LOSS_DESCRIPTION';
}

class Complaints {
  const Complaints();

  String get complaintsTypeHeading => 'COMPLAINTS_TYPE_HEADING';

  String get complaintsTypeLabel => 'COMPLAINTS_TYPE_LABEL';

  String get actionLabel => 'HOUSEHOLD_LOCATION_ACTION_LABEL';

  String get complaintsLocationLabel => 'COMPLAINTS_LOCATION_LABEL';

  String get complaintsDetailsLabel => 'COMPLAINTS_DETAILS_LABEL';

  String get dateOfComplaint => 'COMPLAINTS_DATE';

  String get complainantTypeQuestion => 'COMPLAINTS_COMPLAINANT_TYPE_QUESTION';

  String get complainantName => 'COMPLAINTS_COMPLAINANT_NAME';

  String get complainantContactNumber =>
      'COMPLAINTS_COMPLAINANT_CONTACT_NUMBER';

  String get supervisorName => 'COMPLAINTS_SUPERVISOR_NAME';

  String get supervisorContactNumber => 'COMPLAINTS_SUPERVISOR_CONTACT_NUMBER';

  String get complaintDescription => 'COMPLAINTS_DESCRIPTION';

  String get dialogTitle => 'COMPLAINTS_DIALOG_TITLE';

  String get dialogContent => 'COMPLAINTS_DIALOG_MESSAGE';

  String get fileComplaintAction => 'COMPLAINTS_FILE_COMPLAINT_ACTION';

  String get inboxHeading => 'COMPLAINTS_INBOX_HEADING';

  String get searchCTA => 'COMPLAINTS_INBOX_SEARCH_CTA';

  String get filterCTA => 'COMPLAINTS_INBOX_FILTER_CTA';

  String get sortCTA => 'COMPLAINTS_INBOX_SORT_CTA';

  String get complaintInboxFilterHeading => 'COMPLAINTS_INBOX_FILTER_HEADING';

  String get complaintsFilterClearAll => 'COMPLAINTS_FILTER_CLEAR_ALL';

  String get complaintInboxSearchHeading => 'COMPLAINTS_INBOX_SEARCH_HEADING';

  String get complaintInboxSortHeading => 'COMPLAINTS_INBOX_SORT_HEADING';

  String get complaintsSortDateAsc => 'COMPLAINT_SORT_DATE_ASC';

  String get complaintsSortDateDesc => 'COMPLAINT_SORT_DATE_DESC';

  String get assignedToAll => 'COMPLAINTS_ASSIGNED_TO_ALL';

  String get assignedToSelf => 'COMPLAINTS_ASSIGNED_TO_SELF';

  String get noComplaintsExist => 'COMPLAINTS_NO_COMPLAINTS_EXIST';

  String get inboxDateLabel => 'COMPLAINTS_INBOX_DATE_LABEL';

  String get inboxNumberLabel => 'COMPLAINTS_INBOX_NUMBER_LABEL';

  String get inboxTypeLabel => 'COMPLAINTS_INBOX_TYPE_LABEL';

  String get inboxAreaLabel => 'COMPLAINTS_INBOX_AREA_LABEL';

  String get inboxStatusLabel => 'COMPLAINTS_INBOX_STATUS_LABEL';

  String get inboxNotGeneratedLabel => 'COMPLAINTS_INBOX_NOT_GENERATED_LABEL';

  String get inboxSyncRequiredLabel => 'COMPLAINTS_INBOX_SYNC_REQUIRED_LABEL';

  String get locality => 'COMPLAINTS_LOCALITY';

  String get backToInbox => 'COMPLAINTS_BACK_TO_INBOX';

  String get acknowledgementAction => 'COMPLAINTS_ACKNOWLEDGEMENT_ACTION';

  String get acknowledgementDescription =>
      'COMPLAINTS_ACKNOWLEDGEMENT_DESCRIPTION';

  String get acknowledgementLabel => 'COMPLAINTS_ACKNOWLEDGEMENT_LABEL';

  String get acknowledgementSubLabelMain =>
      'COMPLAINTS_ACKNOWLEDGEMENT_SUB_LABEL_MAIN';

  String get acknowledgementSubLabelSub =>
      'COMPLAINTS_ACKNOWLEDGEMENT_SUB_LABEL_SUB';

  String get validationRequiredError => 'COMPLAINTS_VALIDATION_REQUIRED_ERROR';

  String get validationMinLengthError =>
      'COMPLAINTS_VALIDATION_MINLENGTH_ERROR';

  String get raisedForMyself => 'COMPLAINTS_RAISED_FOR_MYSELF';

  String get raisedForAnotherUser => 'COMPLAINTS_RAISED_FOR_ANOTHER_USER';
}

class HomeShowcase {
  const HomeShowcase();

  String get distributorProgressBar {
    return 'DISTRIBUTOR_HOME_SHOWCASE_PROGRESS_BAR';
  }

  String get distributorBeneficiaries {
    return 'DISTRIBUTOR_HOME_SHOWCASE_BENEFICIARIES';
  }

  String get distributorFileComplaint {
    return 'DISTRIBUTOR_HOME_SHOWCASE_FILE_COMPLAINT';
  }

  String get distributorSyncData {
    return 'DISTRIBUTOR_HOME_SHOWCASE_SYNC_DATA';
  }

  String get warehouseManagerManageStock {
    return 'WAREHOUSE_MANAGER_HOME_SHOWCASE_MANAGE_STOCK';
  }

  String get wareHouseManagerStockReconciliation {
    return 'WAREHOUSE_MANAGER_HOME_SHOWCASE_STOCK_RECONCILIATION';
  }

  String get wareHouseManagerChecklist {
    return 'WAREHOUSE_MANAGER_HOME_SHOWCASE_CHECKLIST';
  }

  String get warehouseManagerFileComplaint {
    return 'WAREHOUSE_MANAGER_HOME_SHOWCASE_FILE_COMPLAINT';
  }

  String get warehouseManagerSyncData {
    return 'WAREHOUSE_MANAGER_HOME_SHOWCASE_SYNC_DATA';
  }

  String get supervisorProgressBar {
    return 'SUPERVISOR_HOME_SHOWCASE_PROGRESS_BAR';
  }

  String get supervisorMyChecklist {
    return 'SUPERVISOR_HOME_SHOWCASE_MY_CHECKLIST';
  }

  String get supervisorComplaints {
    return 'SUPERVISOR_HOME_SHOWCASE_COMPLAINTS';
  }

  String get supervisorSyncData {
    return 'SUPERVISOR_HOME_SHOWCASE_SYNC_DATA';
  }

  String get inventoryReport {
    return 'WAREHOUSE_MANAGER_HOME_SHOWCASE_INVENTORY_REPORT';
  }
}

class SearchBeneficiariesShowcase {
  const SearchBeneficiariesShowcase();

  String get numberOfHouseholdsRegistered {
    return 'SEARCH_BENEFICIARIES_SHOWCASE_NUMBER_OF_HOUSEHOLDS_REGISTERED';
  }

  String get numberOfBednetsDelivered {
    return 'SEARCH_BENEFICIARIES_SHOWCASE_NUMBER_OF_BEDNETS_DELIVERED';
  }

  String get enterNameOfHouseholdHead {
    return 'SEARCH_BENEFICIARIES_SHOWCASE_ENTER_NAME_OF_HOUSEHOLD_HEAD';
  }

  String get registerNewHousehold {
    return 'SEARCH_BENEFICIARIES_SHOWCASE_REGISTER_NEW_HOUSEHOLD';
  }

  String get nameOfBeneficiary {
    return 'SEARCH_BENEFICIARIES_SHOWCASE_NAME_OF_BENEFICIARY';
  }

  String get deliveryStatus {
    return 'SEARCH_BENEFICIARIES_SHOWCASE_DELIVERY_STATUS';
  }

  String get open {
    return 'SEARCH_BENEFICIARIES_SHOWCASE_OPEN';
  }

  String get beneficiary {
    return 'SEARCH_BENEFICIARIES_SHOWCASE_BENEFICIARY';
  }

  String get age {
    return 'SEARCH_BENEFICIARIES_SHOWCASE_AGE';
  }

  String get gender {
    return 'SEARCH_BENEFICIARIES_SHOWCASE_GENDER';
  }
}

class HouseholdLocationShowcase {
  const HouseholdLocationShowcase();

  String get administrativeArea {
    return 'HOUSEHOLD_LOCATION_SHOWCASE_ADMINISTRATIVE_AREA';
  }

  String get landmark {
    return 'HOUSEHOLD_LOCATION_SHOWCASE_LANDMARK';
  }
}

class HouseholdDetailsShowcase {
  const HouseholdDetailsShowcase();

  String get dateOfRegistration {
    return 'HOUSEHOLD_DETAILS_SHOWCASE_DATE_OF_REGISTRATION';
  }

  String get numberOfMembersLivingInHousehold {
    return 'HOUSEHOLD_DETAILS_SHOWCASE_NUMBER_OF_MEMBERS_LIVING_IN_HOUSEHOLD';
  }
}

class IndividualDetailsShowcase {
  const IndividualDetailsShowcase();

  String get firstNameOfIndividual {
    return 'INDIVIDUAL_DETAILS_SHOWCASE_FIRST_NAME_OF_INDIVIDUAL';
  }

  String get lastNameOfIndividual {
    return 'INDIVIDUAL_DETAILS_SHOWCASE_LAST_NAME_OF_INDIVIDUAL';
  }

  String get headOfHousehold {
    return 'INDIVIDUAL_DETAILS_SHOWCASE_HEAD_OF_HOUSEHOLD';
  }

  String get age {
    return 'INDIVIDUAL_DETAILS_SHOWCASE_AGE';
  }

  String get dateOfBirth {
    return 'INDIVIDUAL_DETAILS_SHOWCASE_DATE_OF_BIRTH';
  }

  String get gender {
    return 'INDIVIDUAL_DETAILS_SHOWCASE_GENDER';
  }

  String get mobile {
    return 'INDIVIDUAL_DETAILS_SHOWCASE_MOBILE';
  }
}

class HouseholdOverviewShowcase {
  const HouseholdOverviewShowcase();

  String get editHousehold {
    return 'HOUSEHOLD_OVERVIEW_SHOWCASE_EDIT_HOUSEHOLD';
  }

  String get deliveryStatus {
    return 'HOUSEHOLD_OVERVIEW_SHOWCASE_DELIVERY_STATUS';
  }

  String get householdHead {
    return 'HOUSEHOLD_OVERVIEW_SHOWCASE_HOUSEHOLD_HEAD';
  }

  String get administrativeArea {
    return 'HOUSEHOLD_OVERVIEW_SHOWCASE_ADMINISTRATIVE_AREA';
  }

  String get memberCount {
    return 'HOUSEHOLD_OVERVIEW_SHOWCASE_MEMBER_COUNT';
  }

  String get householdIndividualCardTitle {
    return 'HOUSEHOLD_OVERVIEW_SHOWCASE_HOUSEHOLD_INDIVIDUAL_CARD_TITLE';
  }

  String get editMember {
    return 'HOUSEHOLD_OVERVIEW_SHOWCASE_EDIT_MEMBER';
  }

  String get addMember {
    return 'HOUSEHOLD_OVERVIEW_SHOWCASE_ADD_MEMBER';
  }

  String get deliverIntervention {
    return 'HOUSEHOLD_OVERVIEW_SHOWCASE_DELIVER_INTERVENTION';
  }
}

class DeliverInterventionShowcase {
  const DeliverInterventionShowcase();

  String get memberCount {
    return 'DELIVER_INTERVENTION_SHOWCASE_MEMBER_COUNT';
  }

  String get numberOfBednetsToDeliver {
    return 'DELIVER_INTERVENTION_SHOWCASE_NUMBER_OF_BEDNETS_TO_DELIVER';
  }

  String get numberOfBednetsDistributed {
    return 'DELIVER_INTERVENTION_SHOWCASE_NUMBER_OF_BEDNETS_DISTRIBUTED';
  }

  String get deliveryComment {
    return 'DELIVER_INTERVENTION_SHOWCASE_DELIVERY_COMMENT';
  }
}

class SelectStockShowcase {
  const SelectStockShowcase();

  String get recordStockReceipt {
    return 'SELECT_STOCK_SHOWCASE_RECORD_STOCK_RECEIPT';
  }

  String get recordStockIssued {
    return 'SELECT_STOCK_SHOWCASE_RECORD_STOCK_ISSUED';
  }

  String get recordStockReturned {
    return 'SELECT_STOCK_SHOWCASE_RECORD_STOCK_RETURNED';
  }
}

class WarehouseDetailsShowcase {
  const WarehouseDetailsShowcase();

  String get dateOfReceipt {
    return 'WAREHOUSE_DETAILS_SHOWCASE_DATE_OF_RECEIPT';
  }

  String get administrativeUnit {
    return 'WAREHOUSE_DETAILS_SHOWCASE_ADMINISTRATIVE_UNIT';
  }

  String get warehouseName {
    return 'WAREHOUSE_DETAILS_SHOWCASE_WAREHOUSE_NAME';
  }
}

class StockDetailsReceiptShowcase {
  const StockDetailsReceiptShowcase();

  String get receivedFrom {
    return 'STOCK_DETAILS_RECEIPT_SHOWCASE_RECEIVED_FROM';
  }

  String get numberOfBednetsReceived {
    return 'STOCK_DETAILS_RECEIPT_SHOWCASE_NUMBER_OF_BEDNETS_RECEIVED';
  }

  String get packingSlipId {
    return 'STOCK_DETAILS_RECEIPT_SHOWCASE_PACKING_SLIP_ID';
  }

  String get numberOfNetsIndicatedOnPackingSlip {
    return 'STOCK_DETAILS_RECEIPT_SHOWCASE_NUMBER_OF_NETS_INDICATED_ON_PACKING_SLIP';
  }

  String get typeOfTransport {
    return 'STOCK_DETAILS_RECEIPT_SHOWCASE_TYPE_OF_TRANSPORT';
  }

  String get vehicleNumber {
    return 'STOCK_DETAILS_RECEIPT_SHOWCASE_VEHICLE_NUMBER';
  }

  String get driverName {
    return 'STOCK_DETAILS_RECEIPT_SHOWCASE_DRIVER_NAME';
  }

  String get comments {
    return 'STOCK_DETAILS_RECEIPT_SHOWCASE_COMMENTS';
  }
}

class StockDetailsIssuedShowcase {
  const StockDetailsIssuedShowcase();

  String get issuedTo {
    return 'STOCK_DETAILS_ISSUED_SHOWCASE_ISSUED_TO';
  }

  String get numberOfBednetsIssued {
    return 'STOCK_DETAILS_ISSUED_SHOWCASE_NUMBER_OF_BEDNETS_ISSUED';
  }

  String get packingSlipId {
    return 'STOCK_DETAILS_ISSUED_SHOWCASE_PACKING_SLIP_ID';
  }

  String get numberOfNetsIndicatedOnPackingSlip {
    return 'STOCK_DETAILS_ISSUED_SHOWCASE_NUMBER_OF_NETS_INDICATED_ON_PACKING_SLIP';
  }

  String get typeOfTransport {
    return 'STOCK_DETAILS_ISSUED_SHOWCASE_TYPE_OF_TRANSPORT';
  }

  String get vehicleNumber {
    return 'STOCK_DETAILS_ISSUED_SHOWCASE_VEHICLE_NUMBER';
  }

  String get driverName {
    return 'STOCK_DETAILS_ISSUED_SHOWCASE_DRIVER_NAME';
  }

  String get comments {
    return 'STOCK_DETAILS_ISSUED_SHOWCASE_COMMENTS';
  }
}

class StockDetailsReturnedShowcase {
  const StockDetailsReturnedShowcase();

  String get returnedFrom {
    return 'STOCK_DETAILS_RETURNED_SHOWCASE_RETURNED_FROM';
  }

  String get numberOfBednetsReturned {
    return 'STOCK_DETAILS_RETURNED_SHOWCASE_NUMBER_OF_BEDNETS_RETURNED';
  }

  String get packingSlipId {
    return 'STOCK_DETAILS_RETURNED_SHOWCASE_PACKING_SLIP_ID';
  }

  String get numberOfNetsIndicatedOnPackingSlip {
    return 'STOCK_DETAILS_RETURNED_SHOWCASE_NUMBER_OF_NETS_INDICATED_ON_PACKING_SLIP';
  }

  String get typeOfTransport {
    return 'STOCK_DETAILS_RETURNED_SHOWCASE_TYPE_OF_TRANSPORT';
  }

  String get vehicleNumber {
    return 'STOCK_DETAILS_RETURNED_SHOWCASE_VEHICLE_NUMBER';
  }

  String get driverName {
    return 'STOCK_DETAILS_RETURNED_SHOWCASE_DRIVER_NAME';
  }

  String get comments {
    return 'STOCK_DETAILS_RETURNED_SHOWCASE_COMMENT';
  }
}

class StockReconciliationShowcase {
  const StockReconciliationShowcase();

  String get warehouseName {
    return 'STOCK_RECONCILIATION_SHOWCASE_WAREHOUSE_NAME';
  }

  String get dateOfReconciliation {
    return 'STOCK_RECONCILIATION_SHOWCASE_DATE_OF_RECONCILIATION';
  }

  String get stockReceived {
    return 'STOCK_RECONCILIATION_SHOWCASE_STOCK_RECEIVED';
  }

  String get stockIssued {
    return 'STOCK_RECONCILIATION_SHOWCASE_STOCK_ISSUED';
  }

  String get stockReturned {
    return 'STOCK_RECONCILIATION_SHOWCASE_STOCK_RETURNED';
  }

  String get stockOnHand {
    return 'STOCK_RECONCILIATION_SHOWCASE_STOCK_ON_HAND';
  }

  String get manualStockCount {
    return 'STOCK_RECONCILIATION_SHOWCASE_MANUAL_STOCK_COUNT';
  }

  String get comments {
    return 'STOCK_RECONCILIATION_SHOWCASE_COMMENTS';
  }
}

class SelectChecklistShowcase {
  const SelectChecklistShowcase();

  String get selectChecklist {
    return 'SELECT_CHECKLIST_SHOWCASE_SELECT_CHECKLIST';
  }
}

class ChecklistDataShowcase {
  const ChecklistDataShowcase();

  String get date {
    return 'CHECKLIST_DATA_SHOWCASE_DATE';
  }

  String get administrativeUnit {
    return 'CHECKLIST_DATA_SHOWCASE_ADMINISTRATIVE_UNIT';
  }
}

class ChecklistListShowcase {
  const ChecklistListShowcase();

  String get open {
    return 'CHECKLIST_LIST_SHOWCASE_OPEN';
  }
}

class ComplaintTypeShowcase {
  const ComplaintTypeShowcase();

  String get complaintType {
    return 'COMPLAINT_TYPE_SHOWCASE_COMPLAINT_TYPE';
  }

  String get complaintTypeNext {
    return 'COMPLAINT_TYPE_SHOWCASE_COMPLAINT_TYPE_NEXT';
  }
}

class ComplaintsDetailsShowcase {
  const ComplaintsDetailsShowcase();

  String get complaintDate {
    return 'COMPLAINT_DETAILS_SHOWCASE_DATE';
  }

  String get complaintOrganizationUnit {
    return 'COMPLAINT_DETAILS_SHOWCASE_ORGANIZATION_UNIT';
  }

  String get complaintSelfOrOther {
    return 'COMPLAINT_DETAILS_SHOWCASE_SELF_OR_OTHER';
  }

  String get complaintName {
    return 'COMPLAINT_DETAILS_SHOWCASE_NAME';
  }

  String get complaintContact {
    return 'COMPLAINT_DETAILS_SHOWCASE_CONTACT';
  }

  String get complaintSupervisorName {
    return 'COMPLAINT_DETAILS_SHOWCASE_SUPERVISOR_NAME';
  }

  String get complaintSupervisorContact {
    return 'COMPLAINT_DETAILS_SHOWCASE_SUPERVISOR_CONTACT';
  }

  String get complaintDescription {
    return 'COMPLAINT_DETAILS_SHOWCASE_DESCRIPTION';
  }

  String get complaintSubmit {
    return 'COMPLAINT_DETAILS_SHOWCASE_SUBMIT';
  }
}

class ComplaintsDetailsViewShowcase {
  const ComplaintsDetailsViewShowcase();

  String get complaintNumber {
    return 'COMPLAINT_DETAILS_VIEW_SHOWCASE_NUMBER';
  }

  String get complaintType {
    return 'COMPLAINT_DETAILS_VIEW_SHOWCASE_TYPE';
  }

  String get complaintDate {
    return 'COMPLAINT_DETAILS_VIEW_SHOWCASE_DATE';
  }

  String get complaintName {
    return 'COMPLAINT_DETAILS_VIEW_SHOWCASE_NAME';
  }

  String get complaintArea {
    return 'COMPLAINT_DETAILS_VIEW_SHOWCASE_AREA';
  }

  String get complaintContact {
    return 'COMPLAINT_DETAILS_VIEW_CONTACT';
  }

  String get complaintStatus {
    return 'COMPLAINT_DETAILS_VIEW_SHOWCASE_STATUS';
  }

  String get complaintDescription {
    return 'COMPLAINT_DETAILS_VIEW_SHOWCASE_DESCRIPTION';
  }

  String get complaintClose {
    return 'COMPLAINT_DETAILS_VIEW_SHOWCASE_CLOSE';
  }
}

class ComplaintsInboxShowcase {
  const ComplaintsInboxShowcase();

  String get complaintSearch {
    return 'COMPLAINT_INBOX_SHOWCASE_SEARCH';
  }

  String get complaintFilter {
    return 'COMPLAINT_INBOX_SHOWCASE_FILTER';
  }

  String get complaintSort {
    return 'COMPLAINT_INBOX_SHOWCASE_SORT';
  }

  String get complaintNumber {
    return 'COMPLAINT_INBOX_SHOWCASE_NUMBER';
  }

  String get complaintType {
    return 'COMPLAINT_INBOX_SHOWCASE_TYPE';
  }

  String get complaintDate {
    return 'COMPLAINT_INBOX_SHOWCASE_DATE';
  }

  String get complaintArea {
    return 'COMPLAINT_INBOX_SHOWCASE_AREA';
  }

  String get complaintStatus {
    return 'COMPLAINT_INBOX_SHOWCASE_STATUS';
  }

  String get complaintOpen {
    return 'COMPLAINT_INBOX_SHOWCASE_OPEN';
  }

  String get complaintCreate {
    return 'COMPLAINT_INBOX_SHOWCASE_CREATE';
  }
}

class SyncDialog {
  const SyncDialog();

  String get syncFailedTitle => 'SYNC_DIALOG_SYNC_FAILED_TITLE';

  String get downSyncFailedTitle => 'SYNC_DIALOG_DOWN_SYNC_FAILED_TITLE';

  String get upSyncFailedTitle => 'SYNC_DIALOG_UP_SYNC_FAILED_TITLE';

  String get syncInProgressTitle => 'SYNC_DIALOG_SYNC_IN_PROGRESS_TITLE';

  String get dataSyncedTitle => 'SYNC_DIALOG_DATA_SYNCED_TITLE';

  String get closeButtonLabel => 'SYNC_DIALOG_CLOSE_BUTTON_LABEL';

  String get retryButtonLabel => 'SYNC_DIALOG_RETRY_BUTTON_LABEL';
}

class InventoryReportSelection {
  const InventoryReportSelection();

  String get label {
    return 'INVENTORY_REPORT_SELECTION_LABEL';
  }

  String get inventoryReportReceiptLabel {
    return 'INVENTORY_REPORT_SELECTION_RECEIPT_LABEL';
  }

  String get inventoryReportReceiptDescription {
    return 'INVENTORY_REPORT_SELECTION_RECEIPT_DESCRIPTION';
  }

  String get inventoryReportIssuedLabel {
    return 'INVENTORY_REPORT_SELECTION_ISSUED_LABEL';
  }

  String get inventoryReportIssuedDescription {
    return 'INVENTORY_REPORT_SELECTION_ISSUED_DESCRIPTION';
  }

  String get inventoryReportReturnedLabel {
    return 'INVENTORY_REPORT_SELECTION_RETURNED_LABEL';
  }

  String get inventoryReportReturnedDescription {
    return 'INVENTORY_REPORT_SELECTION_RETURNED_DESCRIPTION';
  }

  String get inventoryReportDamagedLabel {
    return 'INVENTORY_REPORT_SELECTION_DAMAGE_LABEL';
  }

  String get inventoryReportDamagedDescription {
    return 'INVENTORY_REPORT_SELECTION_DAMAGE_DESCRIPTION';
  }

  String get inventoryReportLossLabel {
    return 'INVENTORY_REPORT_SELECTION_LOSS_LABEL';
  }

  String get inventoryReportLossDescription {
    return 'INVENTORY_REPORT_SELECTION_LOSS_DESCRIPTION';
  }

  String get inventoryReportReconciliationLabel {
    return 'INVENTORY_REPORT_SELECTION_RECONCILIATION_LABEL';
  }

  String get inventoryReportReconciliationDescription {
    return 'INVENTORY_REPORT_SELECTION_RECONCILIATION_DESCRIPTION';
  }
}

class InventoryReportDetails {
  const InventoryReportDetails();

  String get backToHomeButtonLabel {
    return 'INVENTORY_REPORT_DETAILS_BACK_TO_HOME_BUTTON_LABEL';
  }

  String get receiptReportTitle {
    return 'INVENTORY_REPORT_DETAILS_RECEIPT_REPORT_TITLE';
  }

  String get dispatchReportTitle {
    return 'INVENTORY_REPORT_DETAILS_DISPATCH_REPORT_TITLE';
  }

  String get returnedReportTitle {
    return 'INVENTORY_REPORT_DETAILS_RETURNED_REPORT_TITLE';
  }

  String get damageReportTitle {
    return 'INVENTORY_REPORT_DETAILS_DAMAGE_REPORT_TITLE';
  }

  String get lossReportTitle {
    return 'INVENTORY_REPORT_DETAILS_LOSS_REPORT_TITLE';
  }

  String get reconciliationReportTitle {
    return 'INVENTORY_REPORT_DETAILS_RECONCILIATION_REPORT_TITLE';
  }

  String get dateLabel {
    return 'INVENTORY_REPORT_DETAILS_DATE_LABEL';
  }

  String get waybillLabel {
    return 'INVENTORY_REPORT_DETAILS_WAYBILL_LABEL';
  }

  String get receiptQuantityLabel {
    return 'INVENTORY_REPORT_DETAILS_RECEIPT_QUANTITY_LABEL';
  }

  String get dispatchQuantityLabel {
    return 'INVENTORY_REPORT_DETAILS_DISPATCH_QUANTITY_LABEL';
  }

  String get returnedQuantityLabel {
    return 'INVENTORY_REPORT_DETAILS_RETURNED_QUANTITY_LABEL';
  }

  String get damagedQuantityLabel {
    return 'INVENTORY_REPORT_DETAILS_DAMAGED_QUANTITY_LABEL';
  }

  String get lossQuantityLabel {
    return 'INVENTORY_REPORT_DETAILS_LOSS_QUANTITY_LABEL';
  }

  String get receiptTransactingPartyLabel {
    return 'INVENTORY_REPORT_DETAILS_RECEIPT_TRANSACTING_PARTY_LABEL';
  }

  String get dispatchTransactingPartyLabel {
    return 'INVENTORY_REPORT_DETAILS_DISPATCH_TRANSACTING_PARTY_LABEL';
  }

  String get returnedTransactingPartyLabel {
    return 'INVENTORY_REPORT_DETAILS_RETURNED_TRANSACTING_PARTY_LABEL';
  }

  String get damagedTransactingPartyLabel {
    return 'INVENTORY_REPORT_DETAILS_DAMAGED_TRANSACTING_PARTY_LABEL';
  }

  String get lossTransactingPartyLabel {
    return 'INVENTORY_REPORT_DETAILS_LOSS_TRANSACTING_PARTY_LABEL';
  }

  String get stockInHandLabel {
    return 'INVENTORY_REPORT_DETAILS_STOCK_IN_HAND_LABEL';
  }

  String get manualCountLabel {
    return 'INVENTORY_REPORT_DETAILS_MANUAL_COUNT_LABEL';
  }

  String get receivedCountLabel {
    return 'INVENTORY_REPORT_DETAILS_RECEIVED_COUNT_LABEL';
  }

  String get dispatchedCountLabel {
    return 'INVENTORY_REPORT_DETAILS_DISPATCHED_COUNT_LABEL';
  }

  String get returnedCountLabel {
    return 'INVENTORY_REPORT_DETAILS_RETURNED_COUNT_LABEL';
  }

  String get damagedCountLabel {
    return 'INVENTORY_REPORT_DETAILS_DAMAGED_COUNT_LABEL';
  }

  String get lostCountLabel {
    return 'INVENTORY_REPORT_DETAILS_LOST_COUNT_LABEL';
  }

  String get noRecordsMessage {
    return 'INVENTORY_REPORT_DETAILS_NO_RECORDS_MESSAGE';
  }

  String get noFilterMessage {
    return 'INVENTORY_REPORT_DETAILS_NO_FILTER_MESSAGE';
  }
}
