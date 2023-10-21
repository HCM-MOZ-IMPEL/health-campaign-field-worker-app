import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/atoms/digit_toaster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../../blocs/delivery_intervention/deliver_intervention.dart';
import '../../router/app_router.dart';
import '../../utils/utils.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:gs1_barcode_parser/gs1_barcode_parser.dart';
import '../../widgets/localized.dart';
import '../../utils/i18_key_constants.dart' as i18;

class QRScannerPage extends LocalizedStatefulWidget {
  final bool isEditing;
  final int quantity;

  const QRScannerPage({
    super.key,
    super.appLocalizations,
    required this.quantity,
    this.isEditing = false,
  });

  @override
  State<QRScannerPage> createState() => _QRScannerPageState();
}

class _QRScannerPageState extends LocalizedState<QRScannerPage> {
  AudioPlayer player = AudioPlayer();

  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  List<GS1Barcode> result = [];
  bool flashstatus = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: BlocBuilder<DeliverInterventionBloc, DeliverInterventionState>(
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  controller?.pauseCamera();
                  controller?.resumeCamera();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.green[300],
                  child: _buildQrView(context),
                ),
              ),
              Positioned(
                top: kPadding * 2,
                left: kPadding,
                child: SizedBox(
                  // [TODO: Localization need to be added]
                  child: GestureDetector(
                    onTap: () async {
                      controller?.toggleFlash();
                      var status = await controller?.getFlashStatus();
                      if (status != null) {
                        setState(() {
                          flashstatus = status;
                        });
                      }
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.flashlight_on,
                          color: theme.colorScheme.secondary,
                        ),
                        Text(
                          flashstatus
                              ? localizations
                                  .translate(i18.deliverIntervention.flashOff)
                              : localizations
                                  .translate(i18.deliverIntervention.flashOn),
                          style: TextStyle(
                            color: theme.colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // [TODO : Need move to constants]
              Positioned(
                top: kPadding * 8,
                left: MediaQuery.of(context).size.width / 3.5,
                width: 250,
                height: 250,
                child: SizedBox(
                  width: 150,
                  height: 150,
                  // [TODO: Localization need to be added]
                  child: Text(
                    localizations.translate(
                      i18.deliverIntervention.scannerLabel,
                    ),
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                height: kPadding * 12,
                child: DigitCard(
                  child: DigitElevatedButton(
                    child: Text(localizations.translate(
                      i18.deliverIntervention.saveScannedResource,
                    )),
                    onPressed: () async {
                      if (result.length < widget.quantity) {
                        await DigitDialog.show<bool>(
                          context,
                          options: DigitDialogOptions(
                            titleText: localizations.translate(
                              i18.deliverIntervention.scannerDialogTitle,
                            ),
                            contentText: localizations.translate(
                              i18.deliverIntervention.scannerDialogContent,
                            ),
                            primaryAction: DigitDialogActions(
                              label: localizations.translate(
                                i18.deliverIntervention
                                    .scannerDialogPrimaryAction,
                              ),
                              action: (ctx) {
                                Navigator.of(
                                  context,
                                  rootNavigator: true,
                                ).pop(false);
                              },
                            ),
                            secondaryAction: DigitDialogActions(
                              label: localizations.translate(
                                i18.deliverIntervention
                                    .scannerDialogSecondaryAction,
                              ),
                              action: (ctx) {
                                Navigator.of(
                                  context,
                                  rootNavigator: true,
                                ).pop(true);
                                context.router.pop();
                              },
                            ),
                          ),
                        );
                      } else {
                        context.router.pop();
                      }
                    },
                  ),
                ),
              ),

              Positioned(
                bottom: (kPadding * 8),
                height: state.barcodes != null
                    ? state.barcodes!.length < 10
                        ? (state.barcodes!.length * 60) + 80
                        : MediaQuery.of(context).size.height / 2
                    : 0,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: const EdgeInsets.all(kPadding),
                  width: 100,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: DigitTheme.instance.colorScheme.outline,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                        ),
                        padding: const EdgeInsets.only(
                          bottom: kPadding * 2,
                          top: kPadding * 2,
                          left: kPadding * 2,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          '${state.barcodes?.length.toString()} ${localizations.translate(i18.deliverIntervention.resourcesScanned)}',
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: state.barcodes?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              shape: const Border(),
                              title: Container(
                                height: kPadding * 6,
                                decoration: BoxDecoration(
                                  color: DigitTheme
                                      .instance.colorScheme.background,
                                  border: Border.all(
                                    color:
                                        DigitTheme.instance.colorScheme.outline,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(4.0),
                                  ),
                                ),
                                padding: const EdgeInsets.all(kPadding),
                                child: state.barcodes != null
                                    ? Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(state.barcodes![index].elements
                                              .entries.last.value.data
                                              .toString()),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              bottom: kPadding,
                                            ),
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.delete,
                                                color: Colors.red,
                                              ),
                                              onPressed: () {
                                                result =
                                                    List.from(state.barcodes!);
                                                result.removeAt(index);
                                                setState(() {
                                                  result = result;
                                                });
                                                final bloc = context.read<
                                                    DeliverInterventionBloc>();
                                                bloc.add(
                                                  DeliverInterventionEvent
                                                      .handleScanner(result),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    : const Offstage(),
                              ),
                            );
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
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.

    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller

    return Stack(
      children: [
        // [TODO: Localization need to be added]
        const Positioned(top: 500, child: Text('coundnot scan the QR code')),
        QRView(
          key: qrKey,
          onQRViewCreated: _onQRViewCreated,
          overlay: QrScannerOverlayShape(
            cutOutBottomOffset: 150,
            cutOutWidth: 250,
            cutOutHeight: 250,
          ),
          onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
        ),
      ],
    );
  }

  void _onQRViewCreated(QRViewController controller) async {
    controller.flipCamera();

    controller.flipCamera();
    setState(() {
      this.controller = controller;
    });

    controller.scannedDataStream.listen((scanData) async {
      try {
        final parser = GS1BarcodeParser.defaultParser();
        final parsedResult = parser.parse(scanData.code!);
        final bloc = context.read<DeliverInterventionBloc>();

        if (parsedResult.elements.keys.join('') == '01111021') {
          // Check if barcodes have been scanned and if the current one has already been scanned.
          final alreadyScanned = bloc.state.barcodes != null &&
              bloc.state.barcodes!.any((element) =>
                  element.elements.entries.last.value.data ==
                  parsedResult.elements.entries.last.value.data);

          if (alreadyScanned) {
            handleError(
              controller,
              i18.deliverIntervention.resourceAlreadyScanned,
            );

            return;
          } else if (widget.quantity > result.length) {
            storeValue(parsedResult, controller);

            return;
          } else {
            handleError(
              controller,
              i18.deliverIntervention.scannedResourceCountMisMatch,
            );
          }
        } else {
          handleError(controller, i18.deliverIntervention.scanValidResource);
        }
      } catch (e) {
        handleError(controller, i18.deliverIntervention.unableToScan);
      }

      // // controller.pauseCamera();
    });
  }

  void handleError(QRViewController controller, String message) async {
    controller.pauseCamera();
    player.play(AssetSource("audio/buzzer.wav"));

    if (player.state == PlayerState.completed || result.isEmpty) {
      DigitToast.show(
        context,
        options: DigitToastOptions(
          localizations.translate(message),
          true,
          Theme.of(context),
        ),
      );
    }
    Future.delayed(const Duration(seconds: 1), () => controller.resumeCamera());
  }

  void storeValue(GS1Barcode scanData, QRViewController controller) async {
    controller.pauseCamera();
    final parsedresult = scanData;
    final bloc = context.read<DeliverInterventionBloc>();

    player.play(AssetSource("audio/add.wav"));
    if (player.state == PlayerState.completed) {
      DigitToast.show(
        context,
        options: DigitToastOptions(
          localizations.translate(i18.deliverIntervention.scannedSuccessfully),
          false,
          Theme.of(context),
        ),
      );
    }
    Future.delayed(const Duration(seconds: 3));
    if (bloc.state.barcodes != null) {
      result = List.from(bloc.state.barcodes!);
      result.removeDuplicates(
        (element) => element.elements.entries.last.value.data,
      );
    }
    result.add(parsedresult);
    bloc.add(DeliverInterventionEvent.handleScanner(result));
    setState(() {
      result = result;
    });
    Future.delayed(const Duration(seconds: 1), () => controller.resumeCamera());
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        // [TODO: Localization need to be added]
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
