import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'app_router.gr.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('FlutterBottomNav'),
        centerTitle: true,
        leading: const BackButton(),
      ),
      backgroundColor: Colors.indigo,
      routes: const [
        PostsRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.post_add,
                size: 30,
              ),
              label: 'Меню',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.post_add,
                size: 30,
              ),
              label: 'Меню',
            ),
          ],
          selectedLabelStyle: TextStyle(
            fontFamily: 'San Francisco Pro Display',
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: 'San Francisco Pro Display',
          ),
          selectedItemColor: const Color(0xFF3364E0),
          selectedFontSize: 10,
          unselectedFontSize: 10,
          unselectedItemColor: Color(0xFFA5A9B2),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );

        // return SalomonBottomBar(
        //   margin: const EdgeInsets.symmetric(
        //     horizontal: 20,
        //     vertical: 40,
        //   ),
        //   currentIndex: tabsRouter.activeIndex,
        //   onTap: tabsRouter.setActiveIndex,
        //   items: [
        //     SalomonBottomBarItem(
        //       selectedColor: Colors.amberAccent,
        //       icon: const Icon(
        //         Icons.post_add,
        //         size: 30,
        //       ),
        //       title: const Text('Posts'),
        //     ),
        //     SalomonBottomBarItem(
        //       selectedColor: Colors.pinkAccent[100],
        //       icon: const Icon(
        //         Icons.settings,
        //         size: 30,
        //       ),
        //       title: const Text('Settings'),
        //     )
        //   ],
        // );
      },
    );
  }
}
