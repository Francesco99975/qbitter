import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:qbitter/models/server.dart';
import 'package:qbitter/providers/auth.dart';
import 'package:qbitter/providers/theme_provider.dart';
import 'package:qbitter/screens/auth.dart';
import 'package:qbitter/screens/patterns/patterns.dart';
import 'package:qbitter/utils/router.dart';
import 'package:qbitter/widgets/async_provider_wrapper.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) {
        return true;
      };
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // This HttpOverride will be set globally in the app.
  HttpOverrides.global = MyHttpOverrides();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const ProviderScope(child: QBitter()));
}

class QBitter extends ConsumerWidget {
  const QBitter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themexProvider);
    return MaterialApp.router(
      title: 'QBitter',
      theme: theme.current,
      routerConfig: router,
    );
  }
}

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const routePath = "/";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AsyncProviderWrapper<Server>(
      provider: authProvider,
      future: authProvider.future,
      errorOverride: const fp.Option.of(AuthScreen()),
      render: (_) => const PatternScreen(),
    );
  }
}
