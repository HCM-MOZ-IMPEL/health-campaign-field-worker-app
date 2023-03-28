import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/project/project.dart';
import '../../../blocs/record_stock/record_stock.dart';
import '../../../models/data_model.dart';
import '../../../utils/extensions/extensions.dart';
import '../../../widgets/component_wrapper/facility_bloc_wrapper.dart';
import '../../../widgets/component_wrapper/product_variant_bloc_wrapper.dart';

class RecordStockWrapperPage extends StatelessWidget {
  final StockRecordEntryType type;

  const RecordStockWrapperPage({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stockRepository = context.repository<StockModel, StockSearchModel>();

    return BlocBuilder<ProjectBloc, ProjectState>(
      builder: (context, projectState) {
        const noProjectSelected = Center(
          child: Text('No project selected'),
        );

        return projectState.maybeWhen(
          orElse: () => noProjectSelected,
          loading: () => const Center(child: CircularProgressIndicator()),
          fetched: (projects, selectedProject) {
            final projectId = selectedProject?.id;

            if (projectId == null) {
              return noProjectSelected;
            }

            if (selectedProject == null) {
              return const Center(
                child: Text('Project not selected'),
              );
            }

            return FacilityBlocWrapper(
              child: ProductVariantBlocWrapper(
                child: BlocProvider(
                  create: (_) => RecordStockBloc(
                    RecordStockCreateState(
                      entryType: type,
                      projectId: projectId,
                    ),
                    stockRepository: stockRepository,
                  ),
                  child: const AutoRouter(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
