import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/bottom_navigation_bar/bottom_navigation_bar.dart';
import '../../route/main_tabs.dart';
import '../../widgets/stacked_pages_navigator.dart';

class MainPage extends StatefulHookConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  static const path = '/';
  static const name = 'MainPage';

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    // 必要な初期化処理を行う
    Future.wait([
      // _initializePushNotification(),
      // _initializeDynamicLinks(),
    ]);
  }

  /// アプリのライフサイクルを監視する
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint('***');
    debugPrint('AppLifecycleState: ${state.name}');
    debugPrint('***');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            body: Stack(
              children: [for (final tab in bottomTabs) _buildStackedPages(tab)],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              // BottomTab の画面を切り替える。
              // 現在表示している状態のタブをタップした場合は画面をすべて pop する。
              onTap: (index) {
                FocusScope.of(context).unfocus();
                final tab = bottomTabs[index].tab;
                final state = ref.watch(bottomNavigationStateNotifierProvider);
                final bottomTabKey = bottomTabKeys[state.currentTab];
                if (bottomTabKey == null) {
                  return;
                }
                if (tab == state.currentTab) {
                  bottomTabKey.currentState!.popUntil((route) => route.isFirst);
                  return;
                }
                ref
                    .read(bottomNavigationStateNotifierProvider.notifier)
                    .changeTab(index: index, tab: tab);
              },
              currentIndex:
                  ref.watch(bottomNavigationStateNotifierProvider.select((c) => c.currentIndex)),
              items: [
                for (final item in bottomTabs)
                  BottomNavigationBarItem(
                    icon: Icon(item.iconData),
                    label: item.label,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// MainPage の BottomNavigationBar で切り替える 3 つの画面
  Widget _buildStackedPages(BottomTab tab) {
    final currentIndex = ref.watch(bottomNavigationStateNotifierProvider).currentIndex;
    final currentTab = bottomTabs[currentIndex];
    return Offstage(
      offstage: tab != currentTab,
      child: TickerMode(
        enabled: tab == currentTab,
        child: MainStackedPagesNavigator(tab: tab),
      ),
    );
  }
}
