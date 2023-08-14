import 'package:collection/collection.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:recase/recase.dart';

import '../../../blocs/app_initialization/app_initialization.dart';
import '../../../blocs/facility/facility.dart';
import '../../../blocs/product_variant/product_variant.dart';
import '../../../blocs/record_stock/record_stock.dart';
import '../../../data/local_store/no_sql/schema/app_configuration.dart';
import '../../../models/data_model.dart';
import '../../../router/app_router.dart';
import '../../../utils/i18_key_constants.dart' as i18;
import '../../../utils/utils.dart';
import '../../../utils/validations.dart' as validation;
import '../../../widgets/header/back_navigation_help_header.dart';
import '../../../widgets/localized.dart';
import '../../../widgets/showcase/config/showcase_constants.dart';
import '../../../widgets/showcase/showcase_button.dart';
import '../../../widgets/showcase/showcase_wrappers.dart';
import '../facility_selection.dart';

class StockDetailsPage extends LocalizedStatefulWidget {
  const StockDetailsPage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<StockDetailsPage> createState() => _StockDetailsPageState();
}

class _StockDetailsPageState extends LocalizedState<StockDetailsPage> {
  static const _transactingPartyKey = 'transactingParty';
  static const _transactionQuantityKey = 'quantity';
  static const _transactionReasonKey = 'transactionReason';
  static const _waybillNumberKey = 'waybillNumber';
  static const _waybillQuantityKey = 'waybillQuantity';
  static const _vehicleNumberKey = 'vehicleNumber';
  static const _driverNameKey = 'driverName';
  static const _typeOfTransportKey = 'typeOfTransport';
  static const _commentsKey = 'comments';
  late ProductVariantModel productVariantModel;

  FormGroup _form() {
    return fb.group({
      _transactingPartyKey: FormControl<FacilityModel>(
        validators: [Validators.required],
      ),
      _transactionQuantityKey: FormControl<int>(validators: [
        Validators.number,
        Validators.required,
        Validators.min(validation.stocks.minQuantity),
        Validators.max(validation.stocks.maxQuantity),
      ]),
      _transactionReasonKey: FormControl<TransactionReason>(),
      _waybillNumberKey: FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(validation.stocks.minLength),
        Validators.maxLength(validation.stocks.maxWayBillNoLength),
      ]),
      _waybillQuantityKey: FormControl<int>(
        validators: [
          Validators.number,
          Validators.required,
          Validators.min(validation.stocks.minQuantity),
          Validators.max(validation.stocks.maxQuantity),
        ],
      ),
      _vehicleNumberKey: FormControl<String>(
        validators: [
          Validators.required,
          CustomValidator.vehicleNumberValidation,
        ],
      ),
      _driverNameKey: FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(validation.stocks.minLength),
          Validators.maxLength(validation.stocks.maxWayBillNoLength),
        ],
      ),
      _typeOfTransportKey: FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      _commentsKey: FormControl<String>(),
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, locationState) {
          return BlocConsumer<RecordStockBloc, RecordStockState>(
            listener: (context, stockState) {
              stockState.mapOrNull(
                persisted: (value) {
                  final parent = context.router.parent() as StackRouter;
                  parent.replace(AcknowledgementRoute());
                },
              );
            },
            builder: (context, stockState) {
              StockRecordEntryType entryType = stockState.entryType;
              const module = i18.stockDetails;

              String pageTitle;
              String transactionPartyLabel;
              String quantityCountLabel;
              String? transactionReasonLabel;
              TransactionType transactionType;
              TransactionReason? transactionReason;
              String quantityValidationMessage;

              List<TransactionReason>? reasons;

              switch (entryType) {
                case StockRecordEntryType.receipt:
                  pageTitle = module.receivedPageTitle;
                  transactionPartyLabel = module.selectTransactingPartyReceived;
                  quantityCountLabel = module.quantityReceivedLabel;
                  quantityValidationMessage = module.quantityReceivedValidation;
                  transactionType = TransactionType.received;
                  break;
                case StockRecordEntryType.dispatch:
                  pageTitle = module.issuedPageTitle;
                  transactionPartyLabel = module.selectTransactingPartyIssued;
                  quantityCountLabel = module.quantitySentLabel;
                  quantityValidationMessage = module.quantitySentValidation;
                  transactionType = TransactionType.dispatched;
                  break;
                case StockRecordEntryType.returned:
                  pageTitle = module.returnedPageTitle;
                  transactionPartyLabel = module.selectTransactingPartyReturned;
                  quantityCountLabel = module.quantityReturnedLabel;
                  quantityValidationMessage = module.quantitySentValidation;
                  transactionType = TransactionType.received;
                  break;
                case StockRecordEntryType.loss:
                  pageTitle = module.lostPageTitle;
                  transactionPartyLabel =
                      module.selectTransactingPartyReceivedFromLost;
                  quantityCountLabel = module.quantityLostLabel;
                  transactionType = TransactionType.dispatched;
                  quantityValidationMessage = module.quantitySentValidation;
                  transactionReasonLabel = module.transactionReasonLost;
                  reasons = [
                    TransactionReason.lostInStorage,
                    TransactionReason.lostInTransit,
                  ];
                  break;
                case StockRecordEntryType.damaged:
                  pageTitle = module.damagedPageTitle;
                  transactionPartyLabel =
                      module.selectTransactingPartyReceivedFromDamaged;
                  quantityCountLabel = module.quantityDamagedLabel;
                  transactionType = TransactionType.dispatched;
                  quantityValidationMessage = module.quantitySentValidation;
                  transactionReasonLabel = module.transactionReasonDamaged;
                  reasons = [
                    TransactionReason.damagedInStorage,
                    TransactionReason.damagedInTransit,
                  ];
                  break;
              }

              transactionReasonLabel ??= '';

              return ReactiveFormBuilder(
                form: _form,
                builder: (context, form, child) {
                  return ScrollableContent(
                    header: Column(children: [
                      BackNavigationHelpHeaderWidget(
                        showcaseButton: ShowcaseButton(
                          showcaseFor: [
                            if (entryType == StockRecordEntryType.receipt) ...[
                              stockDetailsShowcaseData.receiptReceivedFrom,
                              stockDetailsShowcaseData.receiptPackingSlipId,
                              stockDetailsShowcaseData.receiptTypeOfTransport,
                              stockDetailsShowcaseData.receiptVehicleNumber,
                              stockDetailsShowcaseData.receiptDriverName,
                              stockDetailsShowcaseData
                                  .receiptNumberOfNetsIndicatedOnPackingSlip,
                              stockDetailsShowcaseData
                                  .receiptNumberOfBednetsReceived,
                              stockDetailsShowcaseData.receiptComments,
                            ],
                            if (entryType == StockRecordEntryType.dispatch) ...[
                              stockDetailsShowcaseData.issuedIssuedTo,
                              stockDetailsShowcaseData.issuedPackingSlipId,
                              stockDetailsShowcaseData.issuedTypeOfTransport,
                              stockDetailsShowcaseData.issuedVehicleNumber,
                              stockDetailsShowcaseData.issuedDriverName,
                              stockDetailsShowcaseData
                                  .issuedNumberOfBednetsIndicatedOnPackingSlip,
                              stockDetailsShowcaseData
                                  .issuedNumberOfBednetsIssued,
                              stockDetailsShowcaseData.issuedComments,
                            ],
                            if (entryType == StockRecordEntryType.returned) ...[
                              stockDetailsShowcaseData.returnedReturnedFrom,
                              stockDetailsShowcaseData.returnedPackingSlipId,
                              stockDetailsShowcaseData.returnedTypeOfTransport,
                              stockDetailsShowcaseData.returnedVehicleNumber,
                              stockDetailsShowcaseData.returnedDriverName,
                              stockDetailsShowcaseData
                                  .returnedNumberOfBednetsIndicatedOnPackingSlip,
                              stockDetailsShowcaseData
                                  .returnedNumberOfBednetsReturned,
                              stockDetailsShowcaseData.returnedComments,
                            ],
                          ].map((e) => e.showcaseKey),
                        ),
                      ),
                    ]),
                    footer: SizedBox(
                      height: 85,
                      child: DigitCard(
                        margin:
                            const EdgeInsets.only(left: 0, right: 0, top: 10),
                        child: ReactiveFormConsumer(
                          builder: (context, form, child) =>
                              DigitElevatedButton(
                            onPressed: !form.valid
                                ? null
                                : () async {
                                    form.markAllAsTouched();
                                    if (!form.valid) {
                                      return;
                                    }

                                    final bloc =
                                        context.read<RecordStockBloc>();

                                    final productVariant = productVariantModel;

                                    switch (entryType) {
                                      case StockRecordEntryType.receipt:
                                        transactionReason =
                                            TransactionReason.received;
                                        break;
                                      case StockRecordEntryType.dispatch:
                                        transactionReason = null;
                                        break;
                                      case StockRecordEntryType.returned:
                                        transactionReason =
                                            TransactionReason.returned;
                                        break;
                                      default:
                                        transactionReason = form
                                            .control(_transactionReasonKey)
                                            .value as TransactionReason?;
                                        break;
                                    }

                                    final transactingParty = form
                                        .control(_transactingPartyKey)
                                        .value as FacilityModel;

                                    final quantity = form
                                        .control(_transactionQuantityKey)
                                        .value as int?;

                                    final waybillNumber = (form
                                            .control(_waybillNumberKey)
                                            .value as String?)
                                        ?.trim();

                                    final waybillQuantity = form
                                        .control(_waybillQuantityKey)
                                        .value as int?;

                                    final vehicleNumber = (form
                                            .control(_vehicleNumberKey)
                                            .value as String?)
                                        ?.trim();

                                    final driverName = (form
                                            .control(_driverNameKey)
                                            .value as String?)
                                        ?.trim();

                                    final typeOfTransport = (form
                                            .control(_typeOfTransportKey)
                                            .value as String?)
                                        ?.trim();

                                    final lat = locationState.latitude;
                                    final lng = locationState.longitude;

                                    final hasLocationData =
                                        lat != null && lng != null;

                                    final comments = (form
                                            .control(_commentsKey)
                                            .value as String?)
                                        ?.trim();

                                    String? transactingPartyType;

                                    final fields = transactingParty
                                        .additionalFields?.fields;

                                    if (fields != null && fields.isNotEmpty) {
                                      final type = fields.firstWhereOrNull(
                                        (element) => element.key == 'type',
                                      );
                                      final value = type?.value;
                                      if (value != null &&
                                          value is String &&
                                          value.isNotEmpty) {
                                        transactingPartyType = value;
                                      }
                                    }

                                    transactingPartyType ??= 'WAREHOUSE';

                                    final stockModel = StockModel(
                                      clientReferenceId: IdGen.i.identifier,
                                      productVariantId: productVariant.id,
                                      transactingPartyId: transactingParty.id,
                                      transactingPartyType:
                                          transactingPartyType,
                                      transactionType: transactionType,
                                      transactionReason: transactionReason,
                                      referenceId: stockState.projectId,
                                      referenceIdType: 'PROJECT',
                                      quantity: quantity.toString(),
                                      waybillNumber: waybillNumber,
                                      auditDetails: AuditDetails(
                                        createdBy: context.loggedInUserUuid,
                                        createdTime:
                                            context.millisecondsSinceEpoch(),
                                      ),
                                      additionalFields: [
                                                waybillQuantity,
                                                vehicleNumber,
                                                comments,
                                                driverName,
                                              ].any((element) =>
                                                  element != null) ||
                                              hasLocationData
                                          ? StockAdditionalFields(
                                              version: 1,
                                              fields: [
                                                if (waybillQuantity != null)
                                                  AdditionalField(
                                                    'waybill_quantity',
                                                    waybillQuantity,
                                                  ),
                                                if (vehicleNumber != null)
                                                  AdditionalField(
                                                    'vehicle_number',
                                                    vehicleNumber,
                                                  ),
                                                if (driverName != null)
                                                  AdditionalField(
                                                    'driver_name',
                                                    driverName,
                                                  ),
                                                if (typeOfTransport != null)
                                                  AdditionalField(
                                                    'vehicle_type',
                                                    typeOfTransport,
                                                  ),
                                                if (comments != null &&
                                                    comments.isNotEmpty)
                                                  AdditionalField(
                                                    'comments',
                                                    comments,
                                                  ),
                                                if (hasLocationData) ...[
                                                  AdditionalField('lat', lat),
                                                  AdditionalField('lng', lng),
                                                ],
                                              ],
                                            )
                                          : null,
                                    );

                                    bloc.add(
                                      RecordStockSaveStockDetailsEvent(
                                        stockModel: stockModel,
                                      ),
                                    );

                                    final submit = await DigitDialog.show<bool>(
                                      context,
                                      options: DigitDialogOptions(
                                        titleText: localizations.translate(
                                          i18.stockDetails.dialogTitle,
                                        ),
                                        contentText: localizations.translate(
                                          i18.stockDetails.dialogContent,
                                        ),
                                        primaryAction: DigitDialogActions(
                                          label: localizations.translate(
                                            i18.common.coreCommonSubmit,
                                          ),
                                          action: (context) {
                                            Navigator.of(
                                              context,
                                              rootNavigator: true,
                                            ).pop(true);
                                          },
                                        ),
                                        secondaryAction: DigitDialogActions(
                                          label: localizations.translate(
                                            i18.common.coreCommonCancel,
                                          ),
                                          action: (context) => Navigator.of(
                                            context,
                                            rootNavigator: true,
                                          ).pop(false),
                                        ),
                                      ),
                                    );

                                    if (submit ?? false) {
                                      bloc.add(
                                        const RecordStockCreateStockEntryEvent(),
                                      );
                                    }
                                  },
                            child: Center(
                              child: Text(
                                localizations
                                    .translate(i18.common.coreCommonSubmit),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    slivers: [
                      SliverToBoxAdapter(
                        child: DigitCard(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                localizations.translate(pageTitle),
                                style: theme.textTheme.displayMedium,
                              ),
                              BlocBuilder<ProductVariantBloc,
                                  ProductVariantState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    orElse: () => const Offstage(),
                                    fetched: (productVariants) {
                                      productVariantModel = productVariants[0];

                                      return Container();
                                    },
                                  );
                                },
                              ),
                              if ([
                                StockRecordEntryType.loss,
                                StockRecordEntryType.damaged,
                              ].contains(entryType))
                                DigitReactiveDropdown<TransactionReason>(
                                  label: localizations.translate(
                                    transactionReasonLabel ?? 'Reason',
                                  ),
                                  menuItems: reasons ?? [],
                                  formControlName: _transactionReasonKey,
                                  valueMapper: (value) => value.name.titleCase,
                                  isRequired: true,
                                ),
                              BlocBuilder<FacilityBloc, FacilityState>(
                                builder: (context, state) {
                                  final facilities = state.whenOrNull(
                                        fetched: (_, facilities, __) =>
                                            facilities,
                                      ) ??
                                      [];

                                  return _StockDetailsShowcaseBuilder(
                                    entryType: entryType,
                                    issuedBuilder:
                                        stockDetailsShowcaseData.issuedIssuedTo,
                                    receiptBuilder: stockDetailsShowcaseData
                                        .receiptReceivedFrom,
                                    returnedBuilder: stockDetailsShowcaseData
                                        .returnedReturnedFrom,
                                    child: DigitTextFormField(
                                      valueAccessor: FacilityValueAccessor(
                                        facilities,
                                      ),
                                      label: localizations.translate(
                                        transactionPartyLabel,
                                      ),
                                      isRequired: true,
                                      validationMessages: {
                                        'required': (object) =>
                                            localizations.translate(
                                              i18.common.corecommonRequired,
                                            ),
                                      },
                                      suffix: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(Icons.search),
                                      ),
                                      formControlName: _transactingPartyKey,
                                      readOnly: true,
                                      onTap: () async {
                                        final parent = context.router.parent()
                                            as StackRouter;
                                        final facility =
                                            await parent.push<FacilityModel>(
                                          FacilitySelectionRoute(
                                            facilities: facilities,
                                          ),
                                        );

                                        if (facility == null) return;
                                        form
                                            .control(_transactingPartyKey)
                                            .value = facility;
                                      },
                                    ),
                                  );
                                },
                              ),
                              _StockDetailsShowcaseBuilder(
                                entryType: entryType,
                                issuedBuilder: stockDetailsShowcaseData
                                    .issuedPackingSlipId,
                                receiptBuilder: stockDetailsShowcaseData
                                    .receiptPackingSlipId,
                                returnedBuilder: stockDetailsShowcaseData
                                    .returnedPackingSlipId,
                                child: DigitTextFormField(
                                  label: localizations.translate(
                                    i18.stockDetails.waybillNumberLabel,
                                  ),
                                  formControlName: _waybillNumberKey,
                                  isRequired: true,
                                  validationMessages: {
                                    'required': (object) =>
                                        localizations.translate(
                                          module.waybillNumberValidation,
                                        ),
                                    'minLength': (object) =>
                                        localizations.translate(
                                          i18.stockDetails
                                              .waybillNumberMinMaxLengthValidation,
                                        ),
                                    'maxLength': (object) =>
                                        localizations.translate(
                                          i18.stockDetails
                                              .waybillNumberMinMaxLengthValidation,
                                        ),
                                  },
                                ),
                              ),
                              BlocBuilder<AppInitializationBloc,
                                  AppInitializationState>(
                                builder: (context, state) => state.maybeWhen(
                                  orElse: () => const Offstage(),
                                  initialized: (appConfiguration, _) {
                                    final transportTypeOptions =
                                        appConfiguration.transportTypes ??
                                            <TransportTypes>[];

                                    return _StockDetailsShowcaseBuilder(
                                      entryType: entryType,
                                      issuedBuilder: stockDetailsShowcaseData
                                          .issuedTypeOfTransport,
                                      receiptBuilder: stockDetailsShowcaseData
                                          .receiptTypeOfTransport,
                                      returnedBuilder: stockDetailsShowcaseData
                                          .returnedTypeOfTransport,
                                      child: DigitReactiveDropdown<String>(
                                        isRequired: true,
                                        label: localizations.translate(
                                          i18.stockDetails.transportTypeLabel,
                                        ),
                                        valueMapper: (e) => e,
                                        onChanged: (value) {
                                          setState(() {
                                            form.control(_typeOfTransportKey);
                                          });
                                        },
                                        initialValue: localizations.translate(
                                          transportTypeOptions
                                                  .firstOrNull?.code ??
                                              '',
                                        ),
                                        menuItems: transportTypeOptions.map(
                                          (e) {
                                            return localizations
                                                .translate(e.code);
                                          },
                                        ).toList(),
                                        formControlName: _typeOfTransportKey,
                                        validationMessages: {
                                          'required': (object) =>
                                              localizations.translate(
                                                module.transportTypeValidation,
                                              ),
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                              _StockDetailsShowcaseBuilder(
                                entryType: entryType,
                                issuedBuilder: stockDetailsShowcaseData
                                    .issuedVehicleNumber,
                                receiptBuilder: stockDetailsShowcaseData
                                    .receiptVehicleNumber,
                                returnedBuilder: stockDetailsShowcaseData
                                    .returnedVehicleNumber,
                                child: DigitTextFormField(
                                  label: localizations.translate(
                                    i18.stockDetails.vehicleNumberLabel,
                                  ),
                                  isRequired: true,
                                  formControlName: _vehicleNumberKey,
                                  inputFormatters: [
                                    UpperCaseTextFormatter(),
                                    FilteringTextInputFormatter.allow(
                                      RegExp("[a-zA-Z0-9]"),
                                    ),
                                  ],
                                  maxLength: 9,
                                  validationMessages: {
                                    'required': (object) =>
                                        localizations.translate(
                                          module
                                              .vehicleNumberRequiredValidation,
                                        ),
                                    'vehicleNumber': (object) =>
                                        localizations.translate(
                                          module.vehicleNumberValidation,
                                        ),
                                  },
                                ),
                              ),
                              _StockDetailsShowcaseBuilder(
                                entryType: entryType,
                                issuedBuilder:
                                    stockDetailsShowcaseData.issuedDriverName,
                                receiptBuilder:
                                    stockDetailsShowcaseData.receiptDriverName,
                                returnedBuilder:
                                    stockDetailsShowcaseData.returnedDriverName,
                                child: DigitTextFormField(
                                  label: localizations.translate(
                                    i18.stockDetails.driverNameLabel,
                                  ),
                                  isRequired: true,
                                  formControlName: _driverNameKey,
                                  validationMessages: {
                                    'required': (object) =>
                                        localizations.translate(
                                          i18.stockDetails.driverNameValidation,
                                        ),
                                    'minLength': (object) =>
                                        localizations.translate(
                                          i18.stockDetails
                                              .driverNameMinMaxLengthValidation,
                                        ),
                                    'maxLength': (object) =>
                                        localizations.translate(
                                          i18.stockDetails
                                              .driverNameMinMaxLengthValidation,
                                        ),
                                  },
                                ),
                              ),
                              _StockDetailsShowcaseBuilder(
                                entryType: entryType,
                                issuedBuilder: stockDetailsShowcaseData
                                    .issuedNumberOfBednetsIndicatedOnPackingSlip,
                                receiptBuilder: stockDetailsShowcaseData
                                    .receiptNumberOfNetsIndicatedOnPackingSlip,
                                returnedBuilder: stockDetailsShowcaseData
                                    .returnedNumberOfBednetsIndicatedOnPackingSlip,
                                child: DigitTextFormField(
                                  label: localizations.translate(
                                    i18.stockDetails
                                        .quantityOfProductIndicatedOnWaybillLabel,
                                  ),
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                    decimal: true,
                                  ),
                                  formControlName: _waybillQuantityKey,
                                  isRequired: true,
                                  validationMessages: {
                                    'required': (object) =>
                                        localizations.translate(
                                          module
                                              .quantityIndicatedOnWaybillValidation,
                                        ),
                                    'number': (object) =>
                                        localizations.translate(
                                          module
                                              .quantityIndicatedOnWaybillValidation,
                                        ),
                                    'min': (object) => localizations.translate(
                                          module
                                              .quantityMinAndMaxWaybillValidation,
                                        ),
                                    'max': (object) => localizations.translate(
                                          module
                                              .quantityMinAndMaxWaybillValidation,
                                        ),
                                  },
                                  onChanged: (control) {
                                    final quantity = form
                                        .control(_transactionQuantityKey)
                                        .value as int?;
                                    final waybillQuantity = form
                                        .control(_waybillQuantityKey)
                                        .value as int?;
                                    if (StockRecordEntryType.receipt ==
                                            entryType &&
                                        quantity != waybillQuantity) {
                                      setState(() {
                                        form
                                            .control(
                                          _commentsKey,
                                        )
                                            .setValidators(
                                          [Validators.required],
                                          updateParent: true,
                                          autoValidate: true,
                                        );
                                        form
                                            .control(
                                              _commentsKey,
                                            )
                                            .touched;
                                      });
                                    } else {
                                      setState(() {
                                        form
                                            .control(
                                          _commentsKey,
                                        )
                                            .setValidators(
                                          [],
                                          updateParent: true,
                                          autoValidate: true,
                                        );
                                      });
                                    }
                                  },
                                ),
                              ),
                              _StockDetailsShowcaseBuilder(
                                entryType: entryType,
                                returnedBuilder: stockDetailsShowcaseData
                                    .returnedNumberOfBednetsReturned,
                                issuedBuilder: stockDetailsShowcaseData
                                    .issuedNumberOfBednetsIssued,
                                receiptBuilder: stockDetailsShowcaseData
                                    .receiptNumberOfBednetsReceived,
                                child: DigitTextFormField(
                                  formControlName: _transactionQuantityKey,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                    decimal: true,
                                  ),
                                  isRequired: true,
                                  label: localizations.translate(
                                    quantityCountLabel,
                                  ),
                                  validationMessages: {
                                    'required': (object) =>
                                        localizations.translate(
                                          quantityValidationMessage,
                                        ),
                                    'number': (object) =>
                                        localizations.translate(
                                          quantityValidationMessage,
                                        ),
                                    'min': (object) => localizations.translate(
                                          i18.stockDetails
                                              .quantityMinAndMaxValidation,
                                        ),
                                    'max': (object) => localizations.translate(
                                          i18.stockDetails
                                              .quantityMinAndMaxValidation,
                                        ),
                                  },
                                  onChanged: (control) {
                                    final quantity = form
                                        .control(_transactionQuantityKey)
                                        .value as int?;
                                    final waybillQuantity = form
                                        .control(_waybillQuantityKey)
                                        .value as int?;
                                    if (StockRecordEntryType.receipt ==
                                            entryType &&
                                        quantity != waybillQuantity) {
                                      setState(() {
                                        form
                                            .control(
                                          _commentsKey,
                                        )
                                            .setValidators(
                                          [Validators.required],
                                          updateParent: true,
                                          autoValidate: true,
                                        );
                                        form
                                            .control(
                                              _commentsKey,
                                            )
                                            .touched;
                                      });
                                    } else {
                                      setState(() {
                                        form
                                            .control(
                                          _commentsKey,
                                        )
                                            .setValidators(
                                          [],
                                          updateParent: true,
                                          autoValidate: true,
                                        );
                                      });
                                    }
                                  },
                                ),
                              ),
                              _StockDetailsShowcaseBuilder(
                                entryType: entryType,
                                issuedBuilder:
                                    stockDetailsShowcaseData.issuedComments,
                                receiptBuilder:
                                    stockDetailsShowcaseData.receiptComments,
                                returnedBuilder:
                                    stockDetailsShowcaseData.returnedComments,
                                child: DigitTextFormField(
                                  label: localizations.translate(
                                    i18.stockDetails.commentsLabel,
                                  ),
                                  minLines: 2,
                                  maxLines: 3,
                                  formControlName: _commentsKey,
                                  validationMessages: {
                                    'required': (object) =>
                                        localizations.translate(
                                          i18.common.corecommonRequired,
                                        ),
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class _StockDetailsShowcaseBuilder extends StatelessWidget {
  final Widget child;
  final StockRecordEntryType entryType;
  final ShowcaseItemBuilder receiptBuilder;
  final ShowcaseItemBuilder issuedBuilder;
  final ShowcaseItemBuilder returnedBuilder;

  const _StockDetailsShowcaseBuilder({
    required this.entryType,
    required this.receiptBuilder,
    required this.issuedBuilder,
    required this.returnedBuilder,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    switch (entryType) {
      case StockRecordEntryType.receipt:
        return receiptBuilder.buildWith(child: child);
      case StockRecordEntryType.dispatch:
        return issuedBuilder.buildWith(child: child);
      case StockRecordEntryType.returned:
        return returnedBuilder.buildWith(child: child);
      default:
        return child;
    }
  }
}
