// import 'package:flutter/material.dart';
// import 'package:health_campaign_field_worker_app/blocs/localization/app_localization.dart';
// import 'package:health_campaign_field_worker_app/models/beneficiary_statistics/beneficiary_statistics_model.dart';
// import 'package:health_campaign_field_worker_app/widgets/beneficiary/beneficiary_statistics_card.dart';
// import 'package:isar/isar.dart';
// import '../widget_app.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   group(
//     'BeneficiaryStatisticsCard Test',
//     () {
//       testWidgets(
//         'Widget is created without errors',
//         (widgetTester) async {
//           await widgetTester.pumpWidget(const WidgetApp(
//             child: BeneficiaryStatisticsCard(
//               beneficiaryStatistics:
//                   BeneficiaryStatisticsWrapperModel(beneficiaryStatisticsList: [
//                 BeneficiaryStatisticsModel(
//                   title: '535',
//                   content: 'No. of Households Registered',
//                 ),
//                 BeneficiaryStatisticsModel(
//                   title: '756',
//                   content: 'No. of Bedets Delivered',
//                 ),
//               ]),
//               localizations: AppLocalizations(Locale('pt', 'MZ'), Isar.open(schemas)),
//             ),
//           ));
//           expect(
//             find.widgetWithText(BeneficiaryStatisticsCard, '535'),
//             findsOneWidget,
//           );
//         },
//       );
//     },
//   );
// }
