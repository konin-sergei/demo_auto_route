import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
          children: [
            AutoRoute(path: 'settings', page: SettingsRoute.page),
            AutoRoute(
              path: 'posts',
              page: PostsRoute.page,
              children: [
                AutoRoute(
                    path: ':postId',
                    page: SinglePostRoute.page,
                    title: (context, data) {
                      return 'Post Details ${data.pathParams.get('postId')}';
                    }),
              ],
            ),
          ],
        ),
      ];
}
