import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qbitter/constants/selectors.dart';
import 'package:qbitter/main.dart';
import 'package:qbitter/screens/patterns/pattern_form.dart';
import 'package:qbitter/screens/patterns/patterns.dart';

final GoRouter router = GoRouter(
  initialLocation: SplashView.routePath,
  routes: [
    GoRoute(
      path: SplashView.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
        path: PatternScreen.routePath,
        builder: (BuildContext context, GoRouterState state) {
          return const PatternScreen();
        }),
    GoRoute(
      path: PatternScreenForm.routePath,
      name: PatternScreenForm.routePath,
      builder: (BuildContext context, GoRouterState state) {
        final fireh = int.parse(state.uri.queryParameters['fireh'] ?? "12");
        final firem = int.parse(state.uri.queryParameters['firem'] ?? "0");

        return PatternScreenForm(
            id: state.uri.queryParameters['id'] ?? "",
            source: state.uri.queryParameters['source'] ??
                Selectors.sources.keys.toList()[0],
            query: state.uri.queryParameters['query']?.split(","),
            search: state.uri.queryParameters['search']?.split(","),
            download: state.uri.queryParameters['download'] ?? "",
            period: state.uri.queryParameters['period'] ??
                Selectors.periods.keys.toList()[0],
            indicator: state.uri.queryParameters['indicator'] ?? "-1",
            fire: TimeOfDay(hour: fireh, minute: firem));
      },
    ),
  ],
);
