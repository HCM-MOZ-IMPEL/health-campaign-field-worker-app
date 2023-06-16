import 'package:digit_components/widgets/digit_card.dart';
import 'package:flutter/material.dart';

import '../../models/beneficiary_statistics/beneficiary_statistics_model.dart';
import '../showcase/config/showcase_constants.dart';

class BeneficiaryStatisticsCard extends StatelessWidget {
  final BeneficiaryStatisticsWrapperModel beneficiaryStatistics;

  const BeneficiaryStatisticsCard({
    super.key,
    required this.beneficiaryStatistics,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DigitCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          searchBeneficiariesShowcaseData.householdsRegistered.buildWith(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    beneficiaryStatistics.beneficiaryStatisticsList.first.title,
                    style: theme.textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    beneficiaryStatistics
                        .beneficiaryStatisticsList.first.content,
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          searchBeneficiariesShowcaseData.bednetsDelivered.buildWith(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                children: [
                  Text(
                    beneficiaryStatistics.beneficiaryStatisticsList.last.title,
                    style: theme.textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    beneficiaryStatistics
                        .beneficiaryStatisticsList.last.content,
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
