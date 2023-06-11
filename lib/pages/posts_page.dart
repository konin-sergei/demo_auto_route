import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/app_router.gr.dart';

@RoutePage(name: 'PostsRoute')
class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.pushRoute(SinglePostRoute(postId: 1));
              },
              child: const Text("Post 1"),
            ),
            TextButton(
              onPressed: () {
                context.pushRoute(SettingsRoute());
              },
              child: const Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
