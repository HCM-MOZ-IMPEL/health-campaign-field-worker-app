import 'dart:math';

import 'package:collection/collection.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DeliverInterventionBloc, DeliverInterventionState>(
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.green[300],
                child: _buildQrView(context),
              ),
              const Positioned(
                top: 20,
                left: 150,
                width: 250,
                height: 250,
                child: SizedBox(
                  width: 150,
                  height: 150,
                  // color: Colors.red[400],
                  child: Text(
                    'Scan QR code',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: DigitElevatedButton(
                  child: Text(localizations.translate(
                    i18.common.coreCommonBack,
                  )),
                  onPressed: () {
                    context.router.pop();
                  },
                ),
              ),
              Positioned(
                bottom: 60,
                height: state.barcodes != null
                    ? state.barcodes!.length < 10
                        ? state.barcodes!.length * 48
                        : MediaQuery.of(context).size.height / 2
                    : 0,
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                  onTap: () {
                    controller?.pauseCamera();
                    controller?.resumeCamera();
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: state.barcodes?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          shape: const Border(),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              result = List.from(state.barcodes!);
                              result.removeAt(index);
                              final bloc =
                                  context.read<DeliverInterventionBloc>();
                              bloc.add(
                                DeliverInterventionEvent.handleScanner(result),
                              );
                            },
                          ),
                          title: Container(
                            padding: const EdgeInsets.all(kPadding),
                            child: state.barcodes != null
                                ? Text(state.barcodes![index].elements.entries
                                    .last.value.data
                                    .toString())
                                : const Offstage(),
                          ),
                        );
                      },
                    ),
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
        const Positioned(top: 500, child: Text('coundnot scan the QR code')),
        QRView(
          key: qrKey,
          onQRViewCreated: _onQRViewCreated,
          overlay: QrScannerOverlayShape(
            cutOutBottomOffset: 200,
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

    await Future.delayed(const Duration(seconds: 3), () {
      controller.scannedDataStream.listen((scanData) async {
        try {
          final parser = GS1BarcodeParser.defaultParser();
          final parsedresult = parser.parse(scanData.code!);
          final bloc = context.read<DeliverInterventionBloc>();
          if (parsedresult.elements.entries
                  .map((e) => e.key)
                  .join('')
                  .toString() ==
              '01111021') {
            if (bloc.state.barcodes != null) {
              if (bloc.state.barcodes!
                      .firstWhereOrNull(
                        (element) =>
                            element.elements.entries.last.value.data ==
                            parsedresult.elements.entries.last.value.data,
                      )
                      ?.elements
                      .entries
                      .last
                      .value
                      .data !=
                  null) {
                handleError(controller, "Resource Already Scanned");
              } else {
                if (widget.quantity > result.length) {
                  storeValue(scanData, controller);
                } else {
                  handleError(
                    controller,
                    'Resource quantity xceeded the entered value!',
                  );
                }
              }
            } else {
              if (widget.quantity > result.length) {
                storeValue(scanData, controller);
              } else {
                handleError(
                  controller,
                  'Resource quantity exceeded the entered value!',
                );
              }
            }
          } else {
            handleError(controller, 'Please Scan a valid Bednet');
          }
        } catch (e) {
          handleError(controller, 'Unable to scan');
        }
      });
      // // controller.pauseCamera();
    });
  }

  void handleError(QRViewController controller, String message) async {
    player.play(AssetSource("audio/buzzer.wav"));
    if (player.state == PlayerState.completed) {
      DigitToast.show(
        context,
        options: DigitToastOptions(
          localizations.translate(message),
          true,
          Theme.of(context),
        ),
      );
    }
    player.onDurationChanged.listen((Duration d) {
      controller.pauseCamera();
    });
    await Future.delayed(const Duration(seconds: 3), () async {
      controller.resumeCamera();
    });
  }

  void storeValue(Barcode scanData, QRViewController controller) async {
    final List<Barcode> barcodes = [];
    barcodes.add(scanData);

    final parser = GS1BarcodeParser.defaultParser();

    for (var element in barcodes) {
      try {
        final parsedresult = parser.parse(element.code!);
        final bloc = context.read<DeliverInterventionBloc>();

        if (parsedresult.elements.isNotEmpty) {
          player.play(AssetSource("audio/add.wav"));
          Future.delayed(const Duration(seconds: 1));
          if (bloc.state.barcodes != null) {
            result = List.from(bloc.state.barcodes!);
            result.removeDuplicates(
              (element) => element.elements.entries.last.value.data,
            );
          }
          result.add(parsedresult);

          bloc.add(DeliverInterventionEvent.handleScanner(result));
        }

        await Future.delayed(const Duration(seconds: 3), () async {
          controller.resumeCamera();
        });
        controller.pauseCamera();
      } catch (E) {
        DigitToast.show(
          context,
          options: DigitToastOptions(
            localizations.translate('Unable to scan'),
            true,
            Theme.of(context),
          ),
        );
        await Future.delayed(const Duration(seconds: 3), () async {
          controller.resumeCamera();
        });
      }
    }
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
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
