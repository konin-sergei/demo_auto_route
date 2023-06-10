import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/app_router.gr.dart';

@RoutePage()
class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            context.pushRoute(SinglePostRoute(postId: 1));
          },
          child: Text("Post 1"),
        ),
        TextButton(
          onPressed: () {
            context.router.push(SinglePostRoute(postId: 2));
          },
          child: Text("Post 2"),
        ),
        TextButton(
          onPressed: () {
            context.router.push(SinglePostRoute(postId: 2));
          },
          child: Text("Post 2"),
        ),
        TextButton(
          onPressed: () {
            context.pushRoute(SettingsRoute());
          },
          child: Text("Settings 1"),
        ),
      ],
    );
  }
}
