// Generated using mason. Do not modify by hand

import 'package:drift/drift.dart';


class Document extends Table {
  TextColumn get id => text().nullable()();
  TextColumn get documentType => text().nullable()();
  TextColumn get fileStoreId => text().nullable()();
  TextColumn get documentUid => text().nullable()();
  TextColumn get auditCreatedBy => text().nullable()();
  IntColumn get auditCreatedTime => integer().nullable()();
  TextColumn get auditModifiedBy => text().nullable()();
  IntColumn get auditModifiedTime => integer().nullable()();
  TextColumn get clientReferenceId => text()();
  TextColumn get tenantId => text().nullable()();
  BoolColumn get isDeleted => boolean().nullable()();
  IntColumn get rowVersion => integer().nullable()();
  
  TextColumn get additionalFields => text().nullable()();

  @override
  Set<Column> get primaryKey => { auditCreatedBy, clientReferenceId,  };
}