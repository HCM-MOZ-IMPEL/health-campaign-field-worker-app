cd apps/health_campaign_field_worker_app || exit

rm -rf release-apk
mkdir release-apk

echo "Creating env configs"
echo "--------------------"
cp -fr .env-qa .env
echo

echo "Generating QA APK"
echo "------------------"
flutter build apk
cp -fr build/app/outputs/flutter-apk/app-release.apk release-apk/apk-qa.apk
echo

open release-apk