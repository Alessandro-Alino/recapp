import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:recapp/config/helpers/extensions.dart';
import 'package:recapp/config/route/app_route.gr.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Header
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(leading: CircleAvatar(), title: const Text('User')),
              ],
            ),
          ),
          // Menu Items
          Card(
            clipBehavior: Clip.hardEdge,
            color: Colors.blueGrey.shade900,
            child: ListTile(
              leading: const Icon(Icons.key),
              title: Text(context.ltr.api_key),
              onTap: () => context.router..popAndPush(const AiApiKeyRoute()),
            ),
          ),
        ],
      ),
    );
  }
}
