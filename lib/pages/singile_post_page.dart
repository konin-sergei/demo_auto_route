import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'SinglePostRoute')
class SinglePostPage extends StatelessWidget {
  final int postId;

  const SinglePostPage({
    super.key,
    @PathParam('postId') required this.postId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: Text("Data post $postId"),
      ),
    );
  }
}
