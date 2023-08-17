// Generated using mason. Do not modify by hand

{{^isEnum}}import 'package:drift/drift.dart';

{{#sqlAttributes}}{{#isEnum}}import '../../../../models/entities/{{type.snakeCase()}}.dart';
{{/isEnum}}{{/sqlAttributes}}{{#referenceAttributes}}{{#references}}import '{{table.snakeCase()}}.dart';
{{/references}}{{/referenceAttributes}}
class {{name.pascalCase()}} extends Table {
  {{#sqlAttributes}}{{#includeForTable}}{{^isEnum}}{{columnType.pascalCase()}}Column get {{name.camelCase()}} => {{type.camelCase()}}(){{#nullable}}.nullable(){{/nullable}}{{#defaultValue}}.withDefault(const Constant({{defaultValue}})){{/defaultValue}}();{{/isEnum}}{{#isEnum}}IntColumn get {{name.camelCase()}} => intEnum<{{type.pascalCase()}}>(){{#nullable}}.nullable(){{/nullable}}();{{/isEnum}}
  {{/includeForTable}}{{/sqlAttributes}}{{#referenceAttributes}}
  {{#references}}TextColumn get {{name}} => text(){{#nullable}}.nullable(){{/nullable}}.references({{table.pascalCase()}}, #{{referencePkName}})();{{/references}}{{/referenceAttributes}}
  TextColumn get additionalFields => text().nullable()();

  @override
  Set<Column> get primaryKey => { {{#sqlAttributes}}{{#isPk}}{{name}}, {{/isPk}}{{/sqlAttributes}} };
}{{/isEnum}}{{#isEnum}}// No table generated for Enum{{/isEnum}}