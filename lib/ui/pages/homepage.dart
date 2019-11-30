import 'package:flutter/material.dart';
import 'package:gsc_cinema/ui/pages/cupertino_home_scaffold.dart';
import 'package:gsc_cinema/ui/pages/movies_page.dart';
import 'package:gsc_cinema/ui/pages/profile_page.dart';
import 'package:gsc_cinema/utils/tab_items.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabItem _currentTab = TabItem.movies;

  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.movies: GlobalKey<NavigatorState>(),
    TabItem.cinemas: GlobalKey<NavigatorState>(),
    TabItem.me: GlobalKey<NavigatorState>(),
  };

  Map<TabItem, WidgetBuilder> get widgetBuilders {
    return {
      TabItem.movies: (_) => MoviesPage(),
      TabItem.cinemas: (_) => Container(),
      TabItem.me: (_) => ProfilePage(),
    };
  }

  void _select(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[_currentTab].currentState.maybePop(),
      child: CupertinoHomeScaffold(
        currentTab: _currentTab,
        onSelectTab: _select,
        widgetBuilders: widgetBuilders,
        navigatorKeys: navigatorKeys,
      ),
    );
  }
}
