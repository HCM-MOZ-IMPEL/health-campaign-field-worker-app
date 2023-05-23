import 'dart:async';

import 'package:drift/drift.dart';

import '../../../models/data_model.dart';
import '../../../utils/utils.dart';
import 'base/household_base.dart';

class HouseholdLocalRepository extends HouseholdLocalBaseRepository {
  HouseholdLocalRepository(super.sql, super.opLogManager);

  @override
  FutureOr<List<HouseholdModel>> search(
    HouseholdSearchModel query, [
    String? userId,
  ]) async {
    final selectQuery = sql.select(sql.household).join(
      [
        leftOuterJoin(
          sql.address,
          sql.address.relatedClientReferenceId.equalsExp(
            sql.household.clientReferenceId,
          ),
        ),
      ],
    );

    final results = await (selectQuery
          ..where(
            buildAnd(
              [
                if (query.clientReferenceId != null)
                  sql.household.clientReferenceId
                      .isIn(query.clientReferenceId!),
                if (query.id != null)
                  sql.household.id.equals(
                    query.id,
                  ),
                if (query.tenantId != null)
                  sql.household.tenantId.equals(
                    query.tenantId,
                  ),
                if (userId != null)
                  sql.household.auditCreatedBy.equals(
                    userId,
                  ),
              ],
            ),
          ))
        .get();

    return results
        .map((e) {
          final household = e.readTable(sql.household);
          final address = e.readTableOrNull(sql.address);

          return HouseholdModel(
            id: household.id,
            tenantId: household.tenantId,
            clientReferenceId: household.clientReferenceId,
            memberCount: household.memberCount,
            rowVersion: household.rowVersion,
            isDeleted: household.isDeleted,
            auditDetails: AuditDetails(
              createdBy: household.auditCreatedBy!,
              createdTime: household.auditCreatedTime!,
              lastModifiedBy: household.auditModifiedBy,
              lastModifiedTime: household.auditModifiedTime,
            ),
            address: address == null
                ? null
                : AddressModel(
                    id: address.id,
                    relatedClientReferenceId: household.clientReferenceId,
                    tenantId: address.tenantId,
                    doorNo: address.doorNo,
                    latitude: address.latitude,
                    longitude: address.longitude,
                    landmark: address.landmark,
                    locationAccuracy: address.locationAccuracy,
                    addressLine1: address.addressLine1,
                    addressLine2: address.addressLine2,
                    city: address.city,
                    pincode: address.pincode,
                    type: address.type,
                    rowVersion: address.rowVersion,
                    auditDetails: AuditDetails(
                      createdBy: household.auditCreatedBy!,
                      createdTime: household.auditCreatedTime!,
                      lastModifiedBy: household.auditModifiedBy,
                      lastModifiedTime: household.auditModifiedTime,
                    ),
                  ),
          );
        })
        .where((element) => element.isDeleted != true)
        .toList();
  }

  @override
  FutureOr<void> create(
    HouseholdModel entity, {
    bool createOpLog = true,
    DataOperation dataOperation = DataOperation.create,
  }) async {
    final householdCompanion = entity.companion;
    final addressCompanion = entity.address?.companion;

    await sql.batch((batch) async {
      batch.insert(
        sql.household,
        householdCompanion,
        mode: InsertMode.insertOrReplace,
      );

      if (addressCompanion != null) {
        batch.insert(
          sql.address,
          addressCompanion,
          mode: InsertMode.insertOrReplace,
        );
      }
    });

    await super.create(entity);
  }

  @override
  FutureOr<void> update(
    HouseholdModel entity, {
    bool createOpLog = true,
  }) async {
    final householdCompanion = entity.companion;
    final addressCompanion = entity.address
        ?.copyWith(
          relatedClientReferenceId: entity.clientReferenceId,
          auditDetails: entity.auditDetails,
        )
        .companion;

    await sql.batch((batch) async {
      batch.update(
        sql.household,
        householdCompanion,
        where: (table) => table.clientReferenceId.equals(
          entity.clientReferenceId,
        ),
      );

      if (addressCompanion != null) {
        batch.update(
          sql.address,
          addressCompanion,
          where: (table) => table.relatedClientReferenceId.equals(
            addressCompanion.relatedClientReferenceId.value,
          ),
        );
      }
    });

    await super.update(entity, createOpLog: createOpLog);
  }

  @override
  FutureOr<void> delete(
    HouseholdModel entity, {
    bool createOpLog = true,
  }) async {
    final updated = entity.copyWith(
      isDeleted: true,
      rowVersion: entity.rowVersion,
    );
    await sql.batch((batch) {
      batch.update(
        sql.household,
        updated.companion,
        where: (table) => table.clientReferenceId.equals(
          entity.clientReferenceId,
        ),
      );
    });

    return super.delete(updated);
  }
}
