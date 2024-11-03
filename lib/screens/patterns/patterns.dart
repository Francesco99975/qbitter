import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:qbitter/models/pattern.dart';
import 'package:qbitter/providers/auth.dart';
import 'package:qbitter/providers/patterns.dart';
import 'package:qbitter/screens/patterns/pattern_form.dart';
import 'package:qbitter/widgets/async_provider_wrapper.dart';
import 'package:qbitter/widgets/empty.dart';
import 'package:qbitter/widgets/main_drawer.dart';
import 'package:qbitter/widgets/pattern_item.dart';

class PatternScreen extends ConsumerWidget {
  static const String routePath = "/products";

  const PatternScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncProviderWrapper<List<Pattern>>(
        provider: patternsProvider,
        future: patternsProvider.future,
        render: (patterns) {
          return Scaffold(
              appBar: AppBar(title: const Text('Patterns'), actions: [
                IconButton(
                    onPressed: () => ref.read(authProvider.notifier).logout(),
                    icon: Icon(Icons.logout,
                        color: Theme.of(context).colorScheme.error)),
              ]),
              drawer: const MainDrawer(
                active: PatternScreen.routePath,
              ),
              body: patterns.isEmpty
                  ? const EmptyListMessage(
                      message: "No patterns yet", iconData: Icons.error_outline)
                  : ListView.builder(
                      itemCount: patterns.length,
                      itemBuilder: (context, index) {
                        final pattern = patterns[index];
                        return PatternItem(
                            pattern: pattern,
                            onDelete: () => ref
                                .read(patternsProvider.notifier)
                                .remove(pattern));
                      },
                    ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => context.push(PatternScreenForm.routePath),
                child: const Icon(Icons.add),
              ));
        });
  }
}
