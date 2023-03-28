import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/product_variant/product_variant.dart';
import '../../models/entities/product_variant.dart';
import '../../models/entities/project_resource.dart';
import '../../utils/extensions/extensions.dart';
import 'selected_project_builder.dart';

class ProductVariantBlocWrapper extends StatelessWidget {
  final Widget child;

  const ProductVariantBlocWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectedProjectBuilder(
      projectBuilder: (context, selectedProject) {
        final productVariant = context
            .repository<ProductVariantModel, ProductVariantSearchModel>();

        final projectResource = context
            .repository<ProjectResourceModel, ProjectResourceSearchModel>();

        return BlocProvider(
          create: (_) => ProductVariantBloc(
            const ProductVariantEmptyState(),
            productVariantDataRepository: productVariant,
            projectResourceDataRepository: projectResource,
          )..add(
              ProductVariantLoadEvent(
                query: ProjectResourceSearchModel(
                  projectId: selectedProject.id,
                ),
              ),
            ),
          lazy: false,
          child: child,
        );
      },
    );
  }
}
