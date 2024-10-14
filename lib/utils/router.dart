import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: SplashView.routePath,
  routes: [
    GoRoute(
      path: SplashView.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    // GoRoute(
    //   path: DashboardScreen.routePath,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const DashboardScreen();
    //   },
    // ),
    // GoRoute(
    //   path: AuthScreen.routePath,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const AuthScreen();
    //   },
    // ),
    GoRoute(
        path: CategoryScreen.routePath,
        builder: (BuildContext context, GoRouterState state) {
          return const CategoryScreen();
        }),
    GoRoute(
        path: ProductScreen.routePath,
        builder: (BuildContext context, GoRouterState state) {
          return const ProductScreen();
        }),
    GoRoute(
      path: ProductFormScreen.routePath,
      name: "form_product",
      builder: (BuildContext context, GoRouterState state) {
        return ProductFormScreen(
          pid: state.uri.queryParameters['pid'],
          name: state.uri.queryParameters['name'],
          category: state.uri.queryParameters['category'],
          description: state.uri.queryParameters['description'],
          imageUrl: state.uri.queryParameters['imageUrl'],
          price: double.parse(state.uri.queryParameters['price'] ?? "0.0"),
          published:
              bool.parse(state.uri.queryParameters['published'] ?? "false"),
          featured:
              bool.parse(state.uri.queryParameters['featured'] ?? "false"),
          weighed: bool.parse(state.uri.queryParameters['weighed'] ?? "false"),
        );
      },
    ),
    GoRoute(
      path: ProductDetailScreen.routePath,
      name: "product_detail",
      builder: (BuildContext context, GoRouterState state) {
        return ProductDetailScreen(
          name: state.uri.queryParameters['name'] ?? "",
          category: state.uri.queryParameters['category'] ?? "",
          description: state.uri.queryParameters['description'] ?? "",
          imageUrl: state.uri.queryParameters['imageUrl'] ?? "",
          price: double.parse(state.uri.queryParameters['price'] ?? "0.0"),
          weighed: bool.parse(state.uri.queryParameters['weighed'] ?? "false"),
        );
      },
    ),
    GoRoute(
        path: CustomerScreen.routePath,
        builder: (BuildContext context, GoRouterState state) {
          return const CustomerScreen();
        }),
    GoRoute(
      path: CustomerDetailsScreen.routePath,
      name: "costumer_detail",
      builder: (BuildContext context, GoRouterState state) {
        return CustomerDetailsScreen(
          customer: Customer.fromJson(
            state.uri.queryParameters['customer'] ?? "{}",
          ),
        );
      },
    ),
    GoRoute(
        path: OrderScreen.routePath,
        builder: (BuildContext context, GoRouterState state) {
          return const OrderScreen();
        }),
    GoRoute(
      path: OrderDetailsScreen.routePath,
      name: "order_detail",
      builder: (BuildContext context, GoRouterState state) {
        return OrderDetailsScreen(
          customer:
              Customer.fromJson(state.uri.queryParameters['customer'] ?? ""),
          pickuptime:
              DateTime.parse(state.uri.queryParameters['pickuptime'] ?? ""),
          created: DateTime.parse(state.uri.queryParameters['created'] ?? ""),
          purchases:
              ((jsonDecode(state.uri.queryParameters['purchases'] ?? "[]"))
                      as List<dynamic>)
                  .map((e) => Purchase.fromJson(e))
                  .toList(),
          fulfilled:
              bool.parse(state.uri.queryParameters['fulfilled'] ?? "false"),
          method: state.uri.queryParameters['method'] ?? "",
          total: double.parse(state.uri.queryParameters['total'] ?? "0.0"),
        );
      },
    ),
  ],
);
