import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends $AppRouter {

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: DashboardRoute.page,
      path: '/',
      children: [
        RedirectRoute(path: '', redirectTo: 'posts'),
        AutoRoute(
          path: 'posts',
          page: PostsTab.page,
          maintainState: true,
          children: [
            AutoRoute(
              path: '',
              page: PostsRoute.page,
              title: (ctx, _) => 'Posts list',
            ),
            AutoRoute(
              path: ':postId',
              page: SinglePostRoute.page,
              title: (ctx, data) {
                return 'Book Details ${data.pathParams.get('posid')}';
              },
            ),
          ],
        ),
        AutoRoute(path: 'settings', page: SettingsRoute.page),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}

@RoutePage(name: 'PostsTab')
class PostsTabPage extends AutoRouter {
  const PostsTabPage({super.key});
}
