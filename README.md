# Health Campaigns Field Worker App

[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)

This project is maintained using [Melos](https://melos.invertase.dev).

## Getting Started

### Pre-requisites

1. Flutter: 
The project is built using Flutter. The project uses the latest version of Flutter on stable branch. The path should contain `flutter`.
2. Dart
`dart` should be available in the path and should use the same version as the bundled version that comes with Flutter


### Install Melos

```shell
dart pub global activate melos
```

### Clean Melos Installation

```shell
melos clean
```

### Bootstrap Melos

```shell
melos bootstrap
```

Running this scrip will bootstrap `melos`, which would generate melos build scripts, add `pubspec_overrides` and generate build files.

## Install Mason and required bricks

This project uses [mason](https://pub.dev/packages/mason_cli) to generate
* Serializable model classes

To install mason, associated bricks and to generate the data models from config run the following script.

```shell
./tools/install_bricks.sh
```

### Serializable model classes 

This project generates serializable model classes for entities (Using [dart_mappable](https://pub.dev/packages/dart_mappable)).

Create an `<entity_name>.json` configuration file inside `lib/models/model_configs`.

#### Data Classes

Data classes should follow the below syntax. 
* Attributes should be used only for native dart types (`String`, `int`, `double`, `float`, `bool`)
* CustomAttributes should be used for other data models that are also created via mason config.
* DateTime attributes should be used for date time values that are passed in as timestamp.

```json
{
  "name": "address",
  "attributes": [
    {
      "name": "id",
      "type": "String",
      "nullable": true
    }
  ],
  "customAttributes": [
    {
      "name": "locality",
      "type": "boundary",
      "nullable": false
    }
  ],
  "dateTimeAttributes": [
    {
      "name": "endDate",
      "type": "DateTime",
      "nullable": false
    }
  ],
  "isEnum": false
}
```

#### EnumClasses

Enums should follow the following syntax. 

```json
{
  "name": "AddressType",
  "type": "enum",
  "attributes": [
    "PERMANENT",
    "CORRESPONDENCE",
    "OTHER"
  ],
  "isEnum": true
}
```

#### Generating apks
For version change:
Increase the version in `apps/health-campaign-field-worker-app/pubspec.yaml`.For example if current version is `1.0.3+4` change it to `1.0.4+5`
Make sure both version anme and code are changed if not scalefusion will reject updates of app

For Prod:
1. run the script `./tools/generate-prod-apk.sh` from the root folder it will geenrate and open the folder which has `apk-prod.apk`
For Training:
1. run th following commadn to update the package "flutter pub run change_app_package_name:main org.egov.training"
2. Change the label to `android:label="Formação"` and icon to `@mipmap/ic_launcher_training`
3. run the script `./tools/generate-training-apk.sh` from the root folder it will geenrate and open the folder which has `apk-training.apk`