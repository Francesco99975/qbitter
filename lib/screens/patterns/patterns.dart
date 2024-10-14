import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:qbitter/models/pattern.dart';
import 'package:qbitter/providers/patterns.dart';
import 'package:qbitter/screens/patterns/pattern_form.dart';
import 'package:qbitter/widgets/async_provider_wrapper.dart';
import 'package:qbitter/widgets/empty.dart';
import 'package:qbitter/widgets/main_drawer.dart';
import 'package:qbitter/widgets/pattern_item.dart';

class ProductScreen extends ConsumerWidget {
  static const String routePath = "/products";

  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncProviderWrapper<List<Pattern>>(
        provider: patternsProvider,
        future: patternsProvider.future,
        render: (products) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Patterns'),
              ),
              drawer: const MainDrawer(
                active: ProductScreen.routePath,
              ),
              body: products.isEmpty
                  ? const EmptyListMessage(
                      message: "No products yet", iconData: Icons.error_outline)
                  : ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return PatternItem(
                            product: product,
                            onDelete: () => ref
                                .read(patternsProvider.notifier)
                                .remove(product));
                      },
                    ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => context.push(PatternScreenForm.routePath),
                child: const Icon(Icons.add),
              ));
        });
  }
}
