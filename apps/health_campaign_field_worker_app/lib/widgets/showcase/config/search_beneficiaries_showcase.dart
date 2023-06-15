part of 'showcase_constants.dart';

class _SearchBeneficiariesShowcaseData {
  static final _SearchBeneficiariesShowcaseData _instance =
      _SearchBeneficiariesShowcaseData._();

  _SearchBeneficiariesShowcaseData._();

  factory _SearchBeneficiariesShowcaseData() => _instance;

  List<ShowcaseItemBuilder> get showcaseData => [
        householdsRegistered,
        bednetsDelivered,
        nameOfHouseholdHead,
        registerNewHousehold,
      ];

  final householdsRegistered = ShowcaseItemBuilder(
    messageLocalizationKey:
        i18.searchBeneficiariesShowcase.numberOfHouseholdsRegistered,
  );

  final bednetsDelivered = ShowcaseItemBuilder(
    messageLocalizationKey:
        i18.searchBeneficiariesShowcase.numberOfBednetsDelivered,
  );

  final nameOfHouseholdHead = ShowcaseItemBuilder(
    messageLocalizationKey:
        i18.searchBeneficiariesShowcase.enterNameOfHouseholdHead,
  );

  final registerNewHousehold = ShowcaseItemBuilder(
    messageLocalizationKey:
        i18.searchBeneficiariesShowcase.registerNewHousehold,
  );
}
