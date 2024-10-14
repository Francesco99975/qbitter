import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        final fireTime = DateTime.parse(state.uri.queryParameters['fire']!);

        return PatternScreenForm(
            id: state.uri.queryParameters['id'],
            source: state.uri.queryParameters['source'],
            query: state.uri.queryParameters['query']!.split(","),
            search: state.uri.queryParameters['search']!.split(","),
            download: state.uri.queryParameters['download'],
            period: state.uri.queryParameters['period'],
            indicator: state.uri.queryParameters['indicator'],
            fire: TimeOfDay(hour: fireTime.hour, minute: fireTime.minute));
      },
    ),
  ],
);
