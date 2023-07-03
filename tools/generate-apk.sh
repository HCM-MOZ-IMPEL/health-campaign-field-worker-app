echo "Installing bricks"
echo "-----------------"
./tools/install_bricks.sh
echo

cd apps/health_campaign_field_worker_app || exit

echo "Creating env configs"
echo "--------------------"
cp -fr .env-dev .env
echo

rm -rf release-apk
mkdir release-apk

echo "Generating DEV APK"
echo "-----------------"
flutter build apk
cp -fr build/app/outputs/flutter-apk/app-release.apk release-apk/apk-dev.apk
echo

echo "Creating env configs"
echo "--------------------"
cp -fr .env-qa .env
echo

echo "Generating QA APK"
echo "------------------"
flutter build apk
cp -fr build/app/outputs/flutter-apk/app-release.apk release-apk/apk-qa.apk
echo

echo "Creating env configs"
echo "--------------------"
cp -fr .env-uat .env
echo

echo "Generating UAT APK"
echo "------------------"
flutter build apk
cp -fr build/app/outputs/flutter-apk/app-release.apk release-apk/apk-uat.apk
echo

echo "Creating env configs"
echo "--------------------"
cp -fr .env-training .env
echo

echo "Generating TRAINING APK"
echo "------------------"
flutter build apk
cp -fr build/app/outputs/flutter-apk/app-release.apk release-apk/apk-training.apk
echo

open release-apk