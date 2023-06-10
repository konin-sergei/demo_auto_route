import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SinglePostPage extends StatelessWidget {
  final int postId;

  const SinglePostPage({
    super.key,
    @PathParam() required this.postId,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Data post $postId"),
    );
  }
}
