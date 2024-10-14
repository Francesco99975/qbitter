import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qbitter/main.dart';

class MainDrawer extends StatelessWidget {
  final String active;
  const MainDrawer({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Dashboard Menu',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.dashboard_outlined,
              color: active == SplashView.routePath
                  ? Theme.of(context).colorScheme.secondary
                  : Colors.white,
            ),
            title: const Text('Dashboard'),
            onTap: () => context.go(SplashView.routePath),
          ),
        ],
      ),
    );
  }
}
